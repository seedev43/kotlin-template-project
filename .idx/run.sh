#!/bin/bash
./gradlew installDebug || exit $?
$ANDROID_SDK_ROOT/platform-tools/adb -s emulator-5554 shell am start -a android.intent.action.MAIN -n com.example.project2/.MainActivity
$ANDROID_SDK_ROOT/platform-tools/adb -s emulator-5554 logcat *:S com.example.project1:D