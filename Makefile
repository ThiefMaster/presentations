.PHONY: pdf
pdf: pdf-news pdf-cern pdf-global

.PHONY: pdf-news
pdf-news:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-news.md --pdf

.PHONY: pdf-cern
pdf-cern:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-cern.md --pdf

.PHONY: pdf-global
pdf-global:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-global.md --pdf


.PHONY: html
html: html-news html-cern html-global

.PHONY: html-news
html-news:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-news.md -o presentation-news.html

.PHONY: html-cern
html-cern:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-cern.md -o presentation-cern.html

.PHONY: html-global
html-global:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-global.md -o presentation-cern.html


.PHONY: server
server:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" -p 9998:8080 marpteam/marp-cli --server .


.PHONY: clean
clean: clean-news clean-cern clean-global

.PHONY: clean-news
clean-news:
	rm -f presentation-news.pdf presentation-news.html

.PHONY: clean-cern
clean-cern:
	rm -f presentation-cern.pdf presentation-cern.html

.PHONY: clean-global
clean-global:
	rm -f presentation-global.pdf presentation-global.html
