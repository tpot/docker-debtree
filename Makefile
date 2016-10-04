PACKAGES = docker.io etcd runc
DEBTREE = ./debtree

default: $(addsuffix .pdf,$(PACKAGES))

%.dot:
	$(DEBTREE) -b $* --skiplist-file $*.skiplist --endlist-file $*.endlist > $@

%.pdf: %.dot
	dot -T pdf -o $@ $<

clean:
	rm -f *.pdf *.dot
