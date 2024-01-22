from behave import *
from behave.runner import Context

import json

@given('a product exists in an S3 bucket')
def step_impl(context:Context):
    raise NotImplementedError(u'a product exists in an S3 bucket')

@given(u'And a collection has been created for this product')
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

# new additions#

@given(u'SounderSIPS data exists at an accessible location')
def step_impl(context):
    # copy data from artifact to s3://asdnadjad
    raise NotImplementedError(u'STEP: Given SounderSIPS data exists at an accessible location')


@given(u'the data are not in a Unity owned bucket')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given the data are not in a Unity owned bucket')


@given(u'a collection has been created for this product')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given a collection has been created for this product')


@then(u'the product shall be copied to a Unity owned bucket')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the product shall be copied to a Unity owned bucket')


@then(u'the search result maps to the new file')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the search result maps to the new file')


@given(u'a registered user')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given a registered user')


@given(u'a data product to upload')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given a data product to upload')


@when(u'a user uploads the product')
def step_impl(context):
    # os.sys_call(generate_downlaod_list... asdadad)
    raise NotImplementedError(u'STEP: When a user uploads the product')


@then(u'the search result maps to a collection')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the search result maps to a collection')

@given(u'data products are in a Unity owned bucket')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given data products are in a Unity owned bucket')


@given(u'a metadata sidecar file in a Unity owned bucket')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given a metadata sidecar file in a Unity owned bucket')


@when(u'a CNM populated with required files is sent to the Cumulus SNS Topic')
def step_impl(context):
    raise NotImplementedError(u'STEP: When a CNM populated with required files is sent to the Cumulus SNS Topic')


@then(u'the data are cataloged')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the data are cataloged')


@then(u'the metadata are cataloged')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the metadata are cataloged')


@then(u'a success response is sent to the SPS Process')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then a success response is sent to the SPS Process')
