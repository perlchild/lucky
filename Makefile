CRYSTAL_BIN ?= $(shell which crystal)
SHARD_BIN ?= ../../bin/lucky

build:
	$(CRYSTAL_BIN) build -o bin/watch src/precompiled_tasks/watch.cr
bin: build
	mkdir -p $(SHARD_BIN)
	cp ./bin/watch $(SHARD_BIN)