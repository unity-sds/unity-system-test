from behave import *
from behave.runner import Context

import json

@given('a product exists in an S3 bucket')
def step_impl(context:Context):
    raise NotImplementedError(u'a product exists in an S3 bucket')

@given(u'a collection has been created for this filetype')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given a collection has been created for this filetype')


@given(u'a CNM has been created for the product')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given a CNM has been created for the product')


@when(u'a CNM request is sent to the ingest endpoint')
def step_impl(context):
    raise NotImplementedError(u'STEP: When a CNM request is sent to the ingest endpoint')


@then(u'the product should be searchable in the catalog')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the product should be searchable in the catalog')


@then(u'the file maps back to the original file')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the file maps back to the original file')


@given(u'an invalid CNM has been created for the product')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given an invalid CNM has been created for the product')


@then(u'the product should not be searchable in the catalog')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the product should not be searchable in the catalog')


@then(u'a error message has been added to the queue')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then a error message has been added to the queue')


@given(u'the CNM message references a non-existent object')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given the CNM message references a non-existent object')


@given(u'a collection has not been created for this filetype')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given a collection has not been created for this filetype')


@then(u'the file size matches the CNM file size')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the file size matches the CNM file size')
