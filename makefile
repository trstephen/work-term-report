# Caveat: Recursive make files are bad
# 	http://lcgapp.cern.ch/project/architecture/recursive_make.pdf
#
# Mea culpa:
#	1. This won't be something that's run often; it's mainly for Travis
#	2. Relative paths make the file much harder to read
#	   because the working directory is reset after every line
#	   in a makefile

all:
	cd template/letter; make
	cd template; make

clean:
	cd template/letter; make clean
	cd template; make clean
