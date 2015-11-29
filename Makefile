# Lets you specify a particular test case using pytest syntax.
# e.g. `make test TESTS=tests/test_polypipe.py::PolyPypeTestCase::test_param_too_large`
TESTS = .

test_requirements:
	pip install -e .[test]

test:
	py.test $(TESTS)

quality:
	pylint polypype --rcfile=.pylintrc
	pep8 polypype

validate: test quality
