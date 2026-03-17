# Как собрать книгу

## LaTeX

Следующая команда создаст копию репозитория

`git clone https://github.com/anton-petrunin/gauss-ru.git`

### Основной текст

Прогоните `pdflatex`, `makeindex` и `biber`:

```
pdflatex curves-and-surfaces-ru.tex
makeindex curves-and-surfaces-ru
biber curves-and-surfaces-ru
pdflatex curves-and-surfaces-ru.tex
```

### Обложка 

```
cd cover/
lualatex cover
cd ..
```

### zip

А ещё можно получить arXiv.tar со всеми файлами для основного тексте (включая рисунки):

`tar -cvf arXiv.tar --files-from list-of-files.txt`

## Картинки

Картинки включены в репозиторий, но вот как их можно получить:

### MetaPost

Спуститесь в `mppics/`, прогоните `mpost` и поднимитесь:

```
cd mppics/
mpost pic
mpost pic-hints
cd ..
```

### Asymptote

Спуститесь в `asy/`, прогоните `asy` на всех `.asy`-файлах и поднимитесь наверх:

```
cd asy/
asy *.asy
cd ..
```
