package handler

import "encoding/binary"

func mp4Duration(data []byte) int32 {
	return parseAtoms(data)
}

func parseAtoms(data []byte) int32 {
	offset := 0
	for offset+8 <= len(data) {
		size := int(binary.BigEndian.Uint32(data[offset : offset+4]))
		name := string(data[offset+4 : offset+8])

		headerSize := 8
		// Extended size: size==1 means next 8 bytes are the real size
		if size == 1 {
			if offset+16 > len(data) {
				break
			}
			size = int(binary.BigEndian.Uint64(data[offset+8 : offset+16]))
			headerSize = 16
		}

		if size == 0 {
			// size==0 means atom extends to end of file
			size = len(data) - offset
		}

		if size < headerSize || offset+size > len(data) {
			break
		}

		if name == "moov" {
			return searchMvhd(data[offset+headerSize : offset+size])
		}

		offset += size
	}
	return 0
}

func searchMvhd(data []byte) int32 {
	offset := 0
	for offset+8 <= len(data) {
		size := int(binary.BigEndian.Uint32(data[offset : offset+4]))
		name := string(data[offset+4 : offset+8])

		headerSize := 8
		if size == 1 {
			if offset+16 > len(data) {
				break
			}
			size = int(binary.BigEndian.Uint64(data[offset+8 : offset+16]))
			headerSize = 16
		}
		if size == 0 {
			size = len(data) - offset
		}
		if size < headerSize || offset+size > len(data) {
			break
		}

		if name == "mvhd" {
			atom := data[offset+headerSize : offset+size]
			if len(atom) == 0 {
				return 0
			}
			if atom[0] == 1 && len(atom) >= 32 {
				// version 1: creation(8) + modification(8) + timescale(4) + duration(8)
				ts := binary.BigEndian.Uint32(atom[20:24])
				dur := binary.BigEndian.Uint64(atom[24:32])
				if ts > 0 {
					return int32(dur / uint64(ts))
				}
			} else if atom[0] == 0 && len(atom) >= 20 {
				// version 0: creation(4) + modification(4) + timescale(4) + duration(4)
				ts := binary.BigEndian.Uint32(atom[12:16])
				dur := binary.BigEndian.Uint32(atom[16:20])
				if ts > 0 {
					return int32(uint64(dur) / uint64(ts))
				}
			}
			return 0
		}

		offset += size
	}
	return 0
}
