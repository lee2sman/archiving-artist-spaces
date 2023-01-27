# Useful code snippets

These snippets of code are meant to be run on the command line, especially on a Linux-based machine. They will require extra packages to run.

## Reduce size of a PDF

Using Ghostscrpt

Requires ghostscript package.

```
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default \
    -dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages \
    -dCompressFonts=true -r150 -sOutputFile=output.pdf input.pdf
```

[from AskUbuntu](https://askubuntu.com/questions/207447/how-to-reduce-the-size-of-a-pdf-file)

## Convert pdf to individual image files for each page

Requires poppler-utils.

```
pdftoppm -png input.pdf outputname
```

By default images will be at 150dpi resolution but can be altered.

[from HowToGeek](https://www.howtogeek.com/devops/convert-pdf-to-images-from-the-linux-command-line/)

