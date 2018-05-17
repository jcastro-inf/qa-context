textfile="qa-context.tex"
auxfile="qa-context.aux"

rm *.aux

pdflatex $textfile
bibtex    $auxfile 
pdflatex $textfile 
pdflatex $textfile 

echo "Creating diff file..."
latexdiff old.tex $textfile > diff.tex

pdflatex diff.tex
bibtex    diff.aux
pdflatex diff.tex
pdflatex diff.tex