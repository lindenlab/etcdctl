
all: bin/etcdctl

bin/etcdctl:
	./build

install: bin/etcdctl
	mkdir -p $(DESTDIR)
	/bin/cp -vpf -t $(DESTDIR) bin/etcdctl

clean:
	rm -rf bin src
