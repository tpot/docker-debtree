This repository contains scripts and configuration to run the debtree
program against Docker and the various subsystems that make up Docker.

debtree is a program that graphs dependencies in Debian, and it can
be configured to graph build dependencies as well as install 
dependencies.

The *.endlist and *.skiplist files are used to terminate the graph
at a particular named node, and to not graph named nodes at all,
respectively.  These options are used to avoid graphing low-level
system dependencies and to break the larger Docker dependency graph
into smaller subsystems.

The pdf directory contains pre-generated PDF files for browsing.
