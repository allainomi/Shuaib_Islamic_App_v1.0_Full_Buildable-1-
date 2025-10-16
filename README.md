# Shuaib Islamic App 🌿

This repository is a ready-to-build Flutter project. It is configured to build an APK automatically using GitHub Actions.

## How to use

1. Extract the ZIP.
2. Create a new GitHub repository (username: allainomi suggested).
3. Push the contents of this project to the repository's `main` branch.
4. GitHub Actions will run the workflow `.github/workflows/build_apk.yml`.
5. After the action completes, go to **Actions → latest run → Artifacts** and download `Shuaib_Islamic_App_APK`.

## Notes & important
- This project includes a minimal Android V2 embedding setup, but for a fully successful GitHub build you must ensure:
  - Your repository includes the complete `android/gradle` and wrapper files, or GitHub runner can download necessary Gradle components.
  - If you encounter Gradle/SDK issues, check the Actions logs. You may need to add specific Android SDK setup steps or update the flutter-action version.
