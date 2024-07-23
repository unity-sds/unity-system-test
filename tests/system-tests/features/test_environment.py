
"""
The code within the following block is checked before all/any of test steps are run.
This would be a great place to instantiate any of your class objects and store them as
attributes in behave's context object for later use.
"""
def before_all(context):
    # The following creates an api_calls attribute for behave's context object
    context.venue = "test"
    context.TEST_COLLECTION = "LA LA LA"
