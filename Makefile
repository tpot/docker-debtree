PACKAGES = docker.io etcd runc notary docker-registry docker-libkv
DEBTREE = ./debtree

default: $(addsuffix .pdf,$(PACKAGES))

%.dot: %.skiplist %.endlist
	$(DEBTREE) -b $* --skiplist-file $*.skiplist --endlist-file $*.endlist > $@

%.pdf: %.dot
	dot -T pdf -o $@ $<

clean:
	rm -f *.pdf *.dot
