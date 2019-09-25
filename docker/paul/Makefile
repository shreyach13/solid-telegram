#
#
test:
	docker-compose exec my_mysql mysql -proot -e 'show databases;'

vault:
	wget https://releases.hashicorp.com/vault/1.2.3/vault_1.2.3_linux_amd64.zip -O vault.zip
	sha256 vault.zip | grep fe15676404aff35cb45f7c957f90491921b9269d79a8f933c5a36e26a431bfc4

up: .build
	docker-compose up

.build: Dockerfile migrations.sh
	docker-compose build
	touch .build

clean:
	docker-compose down --rmi local --volumes

all:
	@echo "Makefile needs your attention"


