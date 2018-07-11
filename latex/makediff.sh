textfile="qa-context.tex";auxfile="qa-context.aux";rm *.aux;pdflatex $textfile;bibtex    $auxfile;pdflatex $textfile;pdflatex $textfile;rm diff.*;~/latexdiff/latexdiff old.tex $textfile > diff.tex; pdflatex diff.tex;bibtex diff.aux;pdflatex diff.tex; pdflatex diff.tex;

