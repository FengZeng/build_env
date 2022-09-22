# build_env setup
1. 安装 git bash
2. 以管理员权限启动 git bash，进入到 build_env 目录，执行 init_env.sh 脚本
## CMake 通用编译
1. 在 CMakeLists.txt 所在目录打开 git bash
2. 执行 build --arch win64 或者 build --arch armv7l 编译 win64 或 armv7l 版本
## Tips
1. 参考 MPV 编译来设置 Android NDK 和 Mingw64 
2. 可以用简化的 bbw64 脚本和 bba32 脚本来编译 win64 和 armv7l 版本
## MPV 及相关库编译（SourceMedia_libMPV 专用）
### Android 版本库编译
1. 下载Android NDK (<https://dl.google.com/android/repository/android-ndk-r21e-windows-x86_64.zip>)，并解压
2. 在 SourceMedia_libMPV 目录打开 git bash
3. 第一次编译使用 buildall_armv7l.sh 编译，并根据提示输入 Android NDK 路径，例如 E:\android-ndk-r21e

### Windows 版本库编译
1. 下载 Mingw64 编译工具 (<https://mega.nz/file/wNFGAToS#FLUZ53Q4zfYQDuhcXCf78zH3gc8BZe3GqD6tWwOfd4I>) 并解压
2. 在 SourceMedia_libMPV 目录打开 git bash
3. 第一次编译使用 buildall_win64.sh 脚本进行编译，并根据提示输入 解压的 Mingw64 路径

### Tips
1. 第一次编译完成后，如果想单独编译某个库，可以使用脚本 build_armv7l.sh, 例如 build_armv7l.sh ffmpeg
2. build_armv7l.sh 脚本只会执行 make 功能，如果需要重新 configure 项目，需要加上 --config 参数，例如：build_armv7l.sh --config ffmpeg
3. 具体编译参数参照 scripts/build.sh 脚本提示
