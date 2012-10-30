MD5FILE=verify.output.MD5SUMS
MD5REF=verify.output.MD5SUMS.reference
verify:
	@./verify.sh

reference:
	@cp ${MD5FILE} ${MD5REF}
	@for a in *.output; do cp $$a $$a.reference; done

diff:
	@../colordiff.pl -u ${MD5REF} ${MD5FILE} || true

clean:
	@rm -f *.output ${MD5FILE}
