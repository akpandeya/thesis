### Thesis of Avanindra Kumar Pandeya

This repository incudes all LaTeX sources, the bibliography, a build system and tools for my PhD thesis.

### Requirements
- Tex Live 2020 or equivelent.
- biber
- latexmk (optional)
- pptlatex (optional)


#### Building

Clone the full repository (including the submodule [latex-report](https://github.com/sharkdp/latex-report)), by calling:
```sh
git clone --recursive git@github.com:akpandeya/thesis.git
```
Then, compile the document by running `latexmk` from the root folder. It should compile without any errors, warnings or badboxes. *Note*: If you do not have `pplatex` installed, you have to edit the file `.latexmkrc` (see first two lines). If you do not have `latexmk`, you have to run `pdflatex` and `biber` manually.