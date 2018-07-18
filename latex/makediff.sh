textfile="qa-context.tex";auxfile="qa-context.aux";rm diff.*;~/latexdiff/latexdiff old.tex $textfile > diff.tex; pdflatex diff.tex;bibtex diff.aux;pdflatex diff.tex; pdflatex diff.tex;

