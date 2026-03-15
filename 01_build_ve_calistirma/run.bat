@echo off
SETLOCAL
cls

:: @Mefamex
:: Bu betik, .NET projelerini temizleyip derleyip çalıştırmak için kullanılır.
:: 2026-03-15

echo ================================================
echo    .NET PROJE YONETICISI (Clean-Build-Run)
echo ================================================

:: 1. Temizleme İşlemi
echo [1/2] Eski derleme dosyalari temizleniyor...
dotnet clean
if %ERRORLEVEL% NEQ 0 (
    echo [HATA] Temizleme sirasinda bir sorun olustu.
    pause
    exit /b %ERRORLEVEL%
)


:: 2. Çalıştırma İşlemi
echo [2/2] Uygulama baslatiliyor...
echo ------------------------------------------
:: NOT: Eğer birden fazla proje varsa --project ProjeKlasoru/Proje.csproj ekleyebilirsin
dotnet run

echo ------------------------------------------
echo Uygulama kapatildi.
pause