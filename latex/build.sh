file_name="qa-context.tex"

pdflatex $file_name 
pdflatex $file_name 
bibtex $file_name 
pdflatex $file_name 
echo "Creating diff file..."
latexdiff old.tex $file_name > diff.tex 
pdflatex diff.tex 
pdflatex diff.tex 
bibtex diff.aux 
pdflatex diff.tex