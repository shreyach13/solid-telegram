#
#

up: .build
	docker-compose up

.build: Dockerfile migrations.sh
	docker-compose build
	touch .build

test:
	docker-compose exec mysql mysql -proot -e 'show databases;' | grep mike_was_here

clean:
	docker-compose down --rmi local --volumes

all:
	@echo "Makefile needs your attention"


# vim:ft=make
#
