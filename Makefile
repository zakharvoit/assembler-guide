NAME = AssemblerGuide

SOURCE = array.s max.s putstr.s regargs.s stackargs.s sum.s swap.s proceduresexample.s

all: ${NAME}.pdf

${NAME}.pdf : ${NAME}.tex ${SOURCE}
	pdflatex ${NAME}.tex

deploy: ${NAME}.pdf
	scp ${NAME}.pdf voit@rain.ifmo.ru:~/public_html/
clean:
	rm -rf auto
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.pdf
