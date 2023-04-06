include .env
export $(shell sed 's/=.*//' .env)

packer-init:
	cd ./iac/packer && \
	packer init && \
	cd -

packer-build:
	cd ./iac/packer && \
	packer version && \
	cd -