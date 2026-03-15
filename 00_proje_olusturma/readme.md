# 00 - Projeyi Olusturma

> *author*: [Mefamex](https://github.com/Mefamex) <br>
> *created*: 2026-03-15 <br>
> *updates*: 2026-03-15 : README sablonu eklendi

[ust dizine don : [dotnet-code-snippets]](../README.md)

> Bu rehber, sifirdan temiz bir .NET Console projesi olusturmak icindir.

## 1) Gereksinimler

- .NET SDK kurulu olmali (`dotnet --version` ile kontrol edebilirsiniz)
- Git kurulu olmali (`git --version`)

## 2) Proje klasorunu hazirlama

```bash
mkdir my-dotnet-app
cd my-dotnet-app
```

## 3) Console uygulamasi olusturma

```bash
dotnet new console -n App
cd App
```

Bu komutlarla temel dosyalar olusur:

- `App.csproj`
- `Program.cs`

## 4) Ilk calisma testi

```bash
dotnet run
```

Beklenen cikti: `Hello, World!`

## 5) Cozum (solution) yapisi (onerilen)

Tek proje ile devam edecekseniz zorunlu degil, ama orta/uzun vadede duzen saglar.

```bash
cd ..
dotnet new sln -n my-dotnet-app
dotnet sln my-dotnet-app.sln add App/App.csproj
```

## 6) Git baslatma

```bash
git init
```

`.gitignore` icin iki secenek:

- [03_github_paylasim/readme.md](../03_github_paylasim/readme.md) icindeki hazir komutu kullanin
- veya 02 klasorundeki `make getignore` hedefini kullanin

## 7) Onerilen ilk commit

```bash
git add .
git commit -m "chore: initialize .NET console project"
```

## Hizli Ozet

```bash
mkdir my-dotnet-app && cd my-dotnet-app
dotnet new console -n App
cd App && dotnet run
```
