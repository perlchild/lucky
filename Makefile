CRYSTAL_BIN ?= $(shell which crystal)
SHARD_BIN ?= ../../bin/lucky

build:
	echo $PWD
	$(CRYSTAL_BIN) build src/precompiled_tasks/watch.cr -o bin/watch
bin: build
	mkdir -p $(SHARD_BIN)
	cp ./bin/watch $(SHARD_BIN)