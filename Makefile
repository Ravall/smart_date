PYLINT=	pylint
PYLINT_OPTIONS=-iy -rn -d 'R0801,R0904,R0903,C0111,W0142,W0141,F0401,W0108,W0232,W0105,I' \
	--generated-members=filter,id,relation_name

tests:
	python -m unittest discover

pylint-strict-real:
	$(PYLINT) -f parseable --ignore=migrations $(PYLINT_OPTIONS) smart_date

integrate: pylint-strict-real tests