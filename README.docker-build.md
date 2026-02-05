# Docker Build (Android APK)

This repo includes a Dockerfile that builds a debug APK with the JS bundle
embedded (no Metro server required).

## Build

```bash
cd /workdir/controlloid-client
docker build -t controlloid-client-apk .
```

## Generate APK

```bash
cd /workdir/controlloid-client
docker run --rm -v "$PWD:/work" controlloid-client-apk
```

## Output

The APK is generated at:

`android/app/build/outputs/apk/debug/app-debug.apk`
