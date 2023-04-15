compile:
	for file_path in input/*.md; do \
		FILE_NAME=`basename $$file_path | sed 's/.md//g'`; \
		pandoc --from markdown $$file_path --to pdf --template=styles/template.tex --pdf-engine=xelatex -o output/$$FILE_NAME.pdf; \
		echo Generated: output/$$FILE_NAME.pdf; \
		pandoc --from markdown $$file_path --to html  -s -c style.css --toc -o output/$$FILE_NAME.html; \
		echo "<style>" >> output/$$FILE_NAME.html; \
		cat styles/style.css >> output/$$FILE_NAME.html; \
		echo "</style>" >> output/$$FILE_NAME.html; \
		echo Generated: output/$$FILE_NAME.html; \
		pandoc --from markdown $$file_path --to docx -o output/$$FILE_NAME.docx; \
		echo Generated: output/$$FILE_NAME.docx; \
		pandoc --from markdown -t dzslides --css styles/dzslides.css --self-contained -s $$file_path --to dzslides -o output/$$FILE_NAME--presentation.html; \
		echo Generated: output/$$FILE_NAME--presentation.html; \
		pandoc --from markdown $$file_path --to plain -o output/$$FILE_NAME.txt; \
		echo Generated: output/$$FILE_NAME.txt; \
	done