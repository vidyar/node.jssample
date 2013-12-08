TESTS = test/*.js
TESTDATA = shippable/testresults
test:

        mkdir -p $(TESTDATA)
        XUNIT_FILE=$(TESTDATA)/result.xml ./node_modules/mocha/bin/mocha --timeout 5000 --reporter=xunit-file $(TESTS)
  
.PHONY: test 
