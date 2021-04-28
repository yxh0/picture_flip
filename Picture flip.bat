@echo off
echo Start operation
for %%i in (*jpg) do (
    ffmpeg -i %%i -vf hflip -y %%~ni_mirror.jpg
)
for %%i in (*png) do (
    ffmpeg -i %%i -vf hflip -y %%~ni_mirror.png
)
echo Picture processed
pause