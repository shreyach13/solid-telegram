#
#

up:
	docker-compose up


test:
	docker-compose exec mysql mysql -proot -e 'show databases;' | grep mike_was_here

clean:
	docker-compose down --rmi local --volumes

all:
	@echo "Makefile needs your attention"


# vim:ft=make
#
