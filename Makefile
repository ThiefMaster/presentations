.PHONY: pdf
pdf: pdf-news pdf-future

.PHONY: pdf-news
pdf-news:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-news.md --pdf

.PHONY: pdf-future
pdf-future:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-future.md --pdf


.PHONY: html
html: html-news html-future

.PHONY: html-news
html-news:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-news.md -o presentation-news.html

.PHONY: html-future
html-future:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-future.md -o presentation-future.html


.PHONY: server
server:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" -p 9998:8080 marpteam/marp-cli --server .


.PHONY: clean
clean: clean-news clean-future

.PHONY: clean-news
clean-news:
	rm -f presentation.pdf presentation.html

.PHONY: clean-future
clean-future:
	rm -f presentation-future.pdf presentation-future.html
