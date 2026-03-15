
# 03 - GitHub'a Yukleme ve Paylasma

Bu rehber, projeyi GitHub'a yukleme, baskalariyla paylasma ve projeyi indirip calistirma adimlarini kapsar.

## 1) .gitignore olusturma

Visual Studio/.NET icin uygun `.gitignore` dosyasini indirebilirsiniz:

```bash
curl -o ".gitignore" https://raw.githubusercontent.com/github/gitignore/refs/heads/main/VisualStudio.gitignore
```

veya

```bash
wget -O ".gitignore" https://raw.githubusercontent.com/github/gitignore/refs/heads/main/VisualStudio.gitignore
```

## 2) Ilk commit

```bash
git init
git add .
git commit -m "docs: add project guides"
```

## 3) GitHub repository baglama ve push

`YOUR_USERNAME` ve `REPO_NAME` kisimlarini degistirin:

```bash
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
git push -u origin main
```

## 4) Projeyi paylasma

Paylasim icin en temel bilgiler:

- Repository linki
- Hangi klasorden baslanacagi (`00_proje_olusturma`, `01_build_ve_calistirma`, `02_makefile`, `03_github_paylasim`)
- Gerekli SDK surumu (`dotnet --version`)

## 5) Projeyi indirip kullanma (kullanici tarafi)

```bash
git clone https://github.com/YOUR_USERNAME/REPO_NAME.git
cd REPO_NAME
```

Ardindan tipik kurulum:

```bash
dotnet restore
dotnet build
dotnet run
```

## 6) Guncelleme Akışı

Projede degisiklik yaptiginizda:

```bash
git add .
git commit -m "feat: short description"
git push
```

## 7) Onerilen commit turleri

- `feat:` yeni ozellik
- `fix:` hata duzeltmesi
- `docs:` dokumantasyon
- `refactor:` davranisi bozmayan kod duzeni
- `chore:` bakim/temizlik