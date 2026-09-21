.PHONY: pdf
pdf: pdf-news

.PHONY: pdf-news
pdf-news:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-news.md --pdf


.PHONY: html
html: html-news

.PHONY: html-news
html-news:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation-news.md -o presentation-news.html


.PHONY: server
server:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" -p 9998:8080 marpteam/marp-cli --server .

.PHONY: clean
clean: clean-news

.PHONY: clean-news
clean-news:
	rm -f presentation-news.pdf presentation-news.html
