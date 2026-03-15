# 02 - Makefile Rehberi

Bu klasordeki `Makefile`, sik kullanilan .NET komutlarini kisaltmak icin hazirlanmistir.

## 1) Gereksinim

- Sisteminizde `make` kurulu olmali
- Proje klasorunde .NET SDK bulunmali

## 2) Yardim menusu

```bash
make
```

Varsayilan hedef `help` oldugu icin kullanilabilir komutlari listeler.

## 3) Temel hedefler

```bash
make clean
make restore
make build
make run
```

Not: `build` hedefi otomatik olarak `restore` calistirir.

## 4) Konfigurasyon kullanimi

Varsayilan konfigurasyon `Debug`:

```bash
make build
```

`Release` icin:

```bash
make build CONFIG=Release
make publish CONFIG=Release
```

## 5) Tek komutta yeniden derleme

```bash
make rebuild
```

Bu hedef, `clean + build` yapar.

## 6) NuGet temizligi

```bash
make nugetClean
```

Paket onbellek sorunlarinda yararlidir.

## 7) .gitignore indirme

```bash
make getignore
```

Sistemde `curl` yoksa `wget` ile dener. Ikisi de yoksa hata verir.

## 8) Onerilen gelistirme akisi

```bash
make clean
make restore
make build CONFIG=Debug
make run
```
