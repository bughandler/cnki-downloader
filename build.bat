@echo off

set GOARCH=386
rem bulild for windows
echo build for windows
set GOOS=windows
go build --ldflags="-s" -o .\release\cnki-downloader.exe
.\release\7z a -tzip .\release\cnki-downloader-windows.zip .\release\cnki-downloader.exe
del .\release\cnki-downloader.exe

rem build for linux
echo build for linux
set GOOS=linux
go build --ldflags="-s" -o .\release\cnki-downloader
.\release\7z a -tzip .\release\cnki-downloader-linux.zip .\release\cnki-downloader
del .\release\cnki-downloader

rem build for mac osx
echo build for mac osx
set GOOS=darwin
go build --ldflags="-s" -o .\release\cnki-downloader
.\release\7z a -tzip .\release\cnki-downloader-darwin.zip .\release\cnki-downloader
del .\release\cnki-downloader