.PHONY: pdf
pdf:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation.md --pdf

.PHONY: html
html:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" marpteam/marp-cli presentation.md -o presentation.html

.PHONY: server
server:
	docker run --rm --init -v "${PWD}:/home/marp/app/" -e MARP_USER="$(shell id -u):$(shell id -g)" -p 9998:8080 marpteam/marp-cli --server .

.PHONY: clean
clean:
	rm -f presentation.pdf presentation.html
