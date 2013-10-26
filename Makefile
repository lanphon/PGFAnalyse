LATEX = xelatex
TARGET = ltfs

${TARGET}.pdf:${TARGET}.tex
	${LATEX} ${TARGET}.tex
	${LATEX} ${TARGET}.tex

.PHONY:clean
clean:
	-rm -rf *.aux *.fot *.lof *.txt *.out *.toc *.log

.PHONY:deepclean
deepclean:clean
	-rm -rf ${TARGET}.pdf
