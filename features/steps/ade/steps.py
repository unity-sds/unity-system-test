from behave import *
from behave.runner import Context

import json

@given(u'an algorithm binary in an accessible repository')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given an algorithm binary in an accessible repository')


@given(u'an algorithm descriptor')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given an algorithm descriptor')


@when(u'the algorithm descriptor is registered in the Algorithm Catalog')
def step_impl(context):
    raise NotImplementedError(u'STEP: When the algorithm descriptor is registered in the Algorithm Catalog')


@then(u'the algorithm is searchable in the Algorithm catalog')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the algorithm is searchable in the Algorithm catalog')


@then(u'the search result maps back to the algorithm binary')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the search result maps back to the algorithm binary')


@given(u'a set of catalog algorithms')
def step_impl(context):
    for row in context.table:
        print(row['name'])
        print(row['binary'])
    raise NotImplementedError(u'STEP: Given a set of catalog algorithms')


@given(u'the catalog algorithms are registered in the Algorithm Catalog')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given the catalog algorithms are registered in the Algorithm Catalog')


@when(u'a user searches the algorithm catalog')
def step_impl(context):
    raise NotImplementedError(u'STEP: When a user searches the algorithm catalog')


@then(u'the search retrieves 3 results')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the search retrieves 3 results')


@given(u'a set of catalog algorthms')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given a set of catalog algorthms')


@when(u'a user searches the algorithm catalog by name')
def step_impl(context):
    raise NotImplementedError(u'STEP: When a user searches the algorithm catalog by name')


@then(u'the user gets the algorithm package back')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the user gets the algorithm package back')


@then(u'the algorithm package references the correct binary')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the algorithm package references the correct binary')


@then(u'the binary is accessible')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then the binary is accessible')
