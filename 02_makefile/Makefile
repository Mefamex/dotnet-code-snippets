CONFIG ?= Debug
.DEFAULT_GOAL := help

.PHONY: help run build rebuild clean restore nugetClean getignore

help:
	@echo "Kullanim: make <hedef>"
	@echo ""
	@echo "Hedefler (onem sirasina gore):"
	@echo "  run        - Uygulamayi calistirir"
	@echo "  build      - Projeyi derler (CONFIG=Debug/Release)"
	@echo "  rebuild    - clean + build"
	@echo "  clean      - Derleme ciktilarini temizler"
	@echo "  restore    - NuGet paketlerini geri yukler"
	@echo "  nugetClean - NuGet cache temizligi yapar"
	@echo "  getignore  - VisualStudio .gitignore dosyasini indirir"

all: clean restore run

clean:
	dotnet clean

restore:
	dotnet restore

build: restore
	dotnet build -c $(CONFIG)

publish:
	dotnet publish -c $(CONFIG) -o publish
	

run:
	dotnet run

rebuild: clean build




nugetClean:
	dotnet nuget locals all --clear

getignore:
	@if command -v curl >/dev/null 2>&1; then \
		curl -o ".gitignore" https://raw.githubusercontent.com/github/gitignore/refs/heads/main/VisualStudio.gitignore; \
	elif command -v wget >/dev/null 2>&1; then \
		wget -O ".gitignore" https://raw.githubusercontent.com/github/gitignore/refs/heads/main/VisualStudio.gitignore; \
	else \
		echo "HATA: curl veya wget bulunamadi."; \
		exit 1; \
	fi