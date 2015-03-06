ENGINE=xelatex
FILENAME=paper
BROWSER=firefox
WORDCOUNT=count.html

# Convert Markdown to TeX
# Note that you can't use --latex-engine here because it won't run bibtex
pandoc --template=elsevier.xelatex --natbib -o $FILENAME.tex $FILENAME.md 

# Manually compile the file
$ENGINE $FILENAME
bibtex $FILENAME
$ENGINE $FILENAME
$ENGINE $FILENAME

# Do the wordcount
texcount -sub=section -html $FILENAME.tex > $WORDCOUNT

# Display document and wordcount
acroread $FILENAME.pdf
firefox $WORDCOUNT
