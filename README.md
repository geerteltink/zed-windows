# Zed IDE preview windows builds

Here you can find the latest Zed IDE builds for windows. The binary is compiled directly
from the original source code at https://github.com/zed-industries/zed/. None of the original
code is modified. The build script is publically available
[in this repo](https://github.com/geerteltink/zed-windows/blob/main/.github/workflows/nightly.yml).
Everytime a new non-preview tag is pushed to the original repository, a new release is created.

If you are having any issues with the editor or find any bugs, please report them
[here](https://github.com/zed-industries/zed/issues).

Issues or questions related to the windows builds can be reported or asked
[here](https://github.com/geerteltink/zed-windows/issues).

## Requirements

These builds require *Microsoft Visual C++ 2015-2022 Redistributable (x64)* which can be installed
with winget:

```powershell
winget install Microsoft.VCRedist+.x64
```

## Keeping up with the latest release

I have added a [zed-update.ps1](.\zed-update.ps1) script to download the latest version. Zed IDE
will be downloaded to the same location as the script.

## Reporting issues

- Build issues can be reported here: https://github.com/geerteltink/zed-windows/pulls
- IDE issues please report here: https://github.com/zed-industries/zed/issues
- Nightly release are created here: https://github.com/geerteltink/zed-windows/releases
