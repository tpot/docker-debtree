PACKAGES = docker.io etcd runc notary
DEBTREE = ./debtree

default: $(addsuffix .pdf,$(PACKAGES))

%.dot:
	$(DEBTREE) -b $* --skiplist-file $*.skiplist --endlist-file $*.endlist > $@

%.pdf: %.dot
	dot -T pdf -o $@ $<

clean:
	rm -f *.pdf *.dot
