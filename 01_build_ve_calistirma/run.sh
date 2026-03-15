#!/usr/bin/env bash

# @Mefamex
# Bu betik, .NET projelerini temizleyip derleyip çalıştırmak için kullanılır.
# 2026-03-15

clear

echo "================================================"
echo "   .NET PROJE YONETICISI (Clean-Build-Run)"
echo "================================================"

echo "[1/2] Eski derleme dosyalari temizleniyor..."
dotnet clean
status=$?
if [ $status -ne 0 ]; then
	echo "[HATA] Temizleme sirasinda bir sorun olustu."
	read -r -p "Devam etmek icin Enter'a basin..."
	exit $status
fi

echo "[2/2] Uygulama baslatiliyor..."
echo "------------------------------------------"
dotnet run
status=$?

echo "------------------------------------------"
echo "Uygulama kapatildi."
read -r -p "Kapatmak icin Enter'a basin..."

exit $status