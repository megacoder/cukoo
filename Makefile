PREFIX	=/opt
BINDIR	=${PREFIX}/bin

all::	cukoo

check::	cukoo
	./cukoo

install:: cukoo
	install -D -c cukoo ${BINDIR}/cukoo

uninstall::
	${RM} ${BINDIR}/cukoo
	find ${BINDIR}/ -type l -print | fgrep -w cukoo
