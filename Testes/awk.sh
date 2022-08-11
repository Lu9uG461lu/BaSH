#!/bin/bash
free -h | awk '
	BEGIN {
		print "Memória"
	}
	/Mem:/ {
		print "\tTotal: "$2"\tBuffer: "$6"\tCacheada: "$7
	}
	/Swap:/ {
		print "\tUsada: "$3"\tLivre: "$4
	}'
