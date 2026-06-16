# Android APK Build Documentation

## Информация о проекте
- **Название приложения:** eng_mob
- **Package ID:** com.aziztwelve.engmob
- **Версия:** 1.0.0
- **Version Code:** 7
- **Owner:** aziztwelve
- **EAS Project ID:** 026ba0a4-2a5e-4987-a2f8-341498507f0c

## Используемые версии

### Framework & Runtime
- **Expo SDK:** 55.0.0
- **Node.js:** 20.20.0 (требуется для preview профиля)
- **EAS CLI:** 19.1.0 (локально в проекте), 20.0.0 (глобально доступна)
- **Минимальная версия EAS CLI:** >= 18.13.0

### Основные зависимости
- expo: ~55.0.26
- expo-router: ~55.0.16
- react-native (через Expo)
- @tanstack/react-query: ^5.99.0
- nativewind: ^4.2.3

## Конфигурация сборки (eas.json)

### Preview профиль (APK)
```json
{
  "preview": {
    "distribution": "internal",
    "node": "20.20.0",
    "android": {
      "buildType": "apk"
    },
    "env": {
      "EXPO_PUBLIC_API_URL": "https://178-104-217-201.sslip.io/api/v1"
    }
  }
}
```

## Процесс сборки

### Шаг 1: Инициализация Git репозитория
EAS Build требует Git репозиторий для работы:
```bash
cd /home/aziz/Documents/startup/eng/eng_mob
git init
git add .
git commit -m "build"
```

### Шаг 2: Аутентификация
Используется EXPO_TOKEN для CI/CD или автоматизации:
```bash
export EXPO_TOKEN=np8_EEjjuKx3XMcEKGyOCWJK6_Z6nOsBudcia2Xh
```

**⚠️ ВАЖНО:** Этот токен имеет полный доступ к аккаунту aziztwelve. Хранить в секрете!

### Шаг 3: Запуск сборки
```bash
cd /home/aziz/Documents/startup/eng/eng_mob
EXPO_TOKEN=np8_EEjjuKx3XMcEKGyOCWJK6_Z6nOsBudcia2Xh npx eas build --profile preview --platform android
```

**Параметры команды:**
- `--profile preview` - использует preview профиль из eas.json
- `--platform android` - сборка для Android
- Без флага `--local` - сборка происходит в облаке EAS

### Шаг 4: Скачивание готового APK
После завершения сборки:
```bash
# Получить ссылку на последний билд
EXPO_TOKEN=np8_EEjjuKx3XMcEKGyOCWJK6_Z6nOsBudcia2Xh npx eas build:list --platform android --limit 1

# Скачать APK по прямой ссылке
curl -L -o ~/Downloads/engmob.apk "https://expo.dev/artifacts/eas/{artifact-id}.apk"
```

## Информация о последней сборке (02.06.2026)

### Build Details
- **Build ID:** b2c86291-3715-4421-931c-27ba1b296c88
- **Status:** finished
- **Profile:** preview
- **Distribution:** internal
- **SDK Version:** 55.0.0
- **Commit:** 35bd665f1aa25d888de1fda6cc201b5fd19653b4
- **Fingerprint:** 38baa849cb4afd9fef8df2b798ac4bdb313b31aa
- **Started:** 12:37:13
- **Finished:** 13:01:18
- **Duration:** ~24 минуты
- **Artifact URL:** https://expo.dev/artifacts/eas/o5sxE4vqj84Lfkh9yEVj2w.apk
- **Build Logs:** https://expo.dev/accounts/aziztwelve/projects/engmob/builds/b2c86291-3715-4421-931c-27ba1b296c88

### Размер APK
- **Размер:** 100 MB
- **Формат:** ZIP archive (APK)

## Переменные окружения

### Preview окружение
```bash
EXPO_PUBLIC_API_URL=https://178-104-217-201.sslip.io/api/v1
```

### Development окружение
```bash
EXPO_PUBLIC_API_URL=http://178.104.217.201:8080/api/v1
```

## Учетные данные (Credentials)

### Android Keystore
- **Type:** Build Credentials
- **ID:** 3C_tEUmh7K (default)
- **Storage:** Remote (Expo server)

## Установка APK

### На эмулятор
```bash
adb install ~/Downloads/engmob.apk
```

### На физическое устройство
1. Открыть ссылку на устройстве: https://expo.dev/accounts/aziztwelve/projects/engmob/builds/b2c86291-3715-4421-931c-27ba1b296c88
2. Или скачать и установить APK вручную

## Быстрая команда для новой сборки

```bash
cd /home/aziz/Documents/startup/eng/eng_mob && \
EXPO_TOKEN=np8_EEjjuKx3XMcEKGyOCWJK6_Z6nOsBudcia2Xh \
npx eas build --profile preview --platform android
```

## Troubleshooting

### Проблема: "package.json is outside of the current git repository"
**Решение:** Убедиться, что git init выполнен в директории eng_mob, а не в родительской.

### Проблема: "An Expo user account is required"
**Решение:** Использовать EXPO_TOKEN или выполнить `npx eas login`.

### Проблема: "Input is required, but stdin is not readable"
**Решение:** Инициализировать git репозиторий заранее перед запуском EAS build.

## Альтернативные профили

### Development (для dev-client)
```bash
EXPO_TOKEN=np8_EEjjuKx3XMcEKGyOCWJK6_Z6nOsBudcia2Xh \
npx eas build --profile development --platform android
```

### Production (AAB для Google Play)
```bash
EXPO_TOKEN=np8_EEjjuKx3XMcEKGyOCWJK6_Z6nOsBudcia2Xh \
npx eas build --profile production --platform android
```

## Полезные ссылки
- EAS Builds Dashboard: https://expo.dev/accounts/aziztwelve/projects/engmob/builds
- Project Settings: https://expo.dev/accounts/aziztwelve/projects/engmob/settings
- EAS CLI Documentation: https://docs.expo.dev/build/introduction/
