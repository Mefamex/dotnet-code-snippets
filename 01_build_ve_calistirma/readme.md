# 01 - Build Etme ve Calistirma

Bu rehberde proje temizleme, derleme ve calistirma adimlari anlatilir.

## 1) Temel komutlar

```bash
dotnet clean
dotnet restore
dotnet build -c Debug
dotnet run
```

Kisa aciklama:

- `clean`: onceki ciktilari temizler
- `restore`: NuGet paketlerini indirir
- `build`: kodu derler
- `run`: uygulamayi calistirir

## 2) Hazir scriptler

Bu klasorde iki script vardir:

- `run.sh` (Linux/macOS)
- `run.bat` (Windows)

Ikisi de ayni akisla calisir:

1. `dotnet clean`
2. `dotnet run`

### Linux/macOS

```bash
chmod +x run.sh
./run.sh
```

### Windows

```bat
run.bat
```

## 3) Release build

Gelistirme disi testler icin:

```bash
dotnet build -c Release
dotnet run -c Release
```

## 4) Birden fazla proje varsa

Dogru projeyi secmek icin:

```bash
dotnet run --project path/to/YourProject.csproj
```

## 5) Sik gorulen durumlar

- Paket hatasi varsa: `dotnet restore` komutunu tekrar calistirin
- Eski ciktilar sorun cikariyorsa: `dotnet clean` ardindan `dotnet build`
- SDK uyumsuzlugu varsa: `dotnet --info` ile surumu kontrol edin
