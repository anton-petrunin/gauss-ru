## Как собрать книгу

Следующая команда создаст копию репозитория

`git clone https://github.com/anton-petrunin/gauss.git`

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

### LaTeX

Прогоните `pdflatex`, `makeindex` и `biber`:

```
pdflatex curves-and-surfaces-ru.tex
makeindex curves-and-surfaces-ru
biber curves-and-surfaces-ru
pdflatex curves-and-surfaces-ru.tex
```

А ещё можно получить arXiv.tar со всеми файлами нужными для `pdflatex` (включая рисунки):

`tar -cvf arXiv.tar --files-from list-of-files.txt`
