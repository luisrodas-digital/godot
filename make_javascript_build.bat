@echo off
echo "Building JavaScript"
call scons platform=javascript tools=no target=release_debug
IF %ERRORLEVEL% EQU 0 (
    echo "Build successful"
    echo "move files to '%AppData%\Godot\templates\3.5.1.stable'"
    copy /Y "bin\godot.javascript.opt.debug.zip" "%AppData%\Godot\templates\3.5.1.stable\webassembly_debug.zip"
) ELSE (
    echo "Build failed"
)
