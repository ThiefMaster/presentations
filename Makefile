.PHONY: pdf
pdf: pdf-cern

.PHONY: pdf-cern
pdf-cern:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-cern.md --pdf


.PHONY: html
html: html-cern

.PHONY: html-cern
html-cern:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-cern.md -o presentation-cern.html


.PHONY: server
server:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" -p 9998:8080 marpteam/marp-cli --server .


.PHONY: clean
clean: clean-cern

.PHONY: clean-cern
clean-cern:
	rm -f presentation-cern.pdf presentation-cern.html
