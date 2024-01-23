from behave import *
from behave.runner import Context

from unity_sds_client.unity import Unity
from unity_sds_client.unity_services import UnityServices as services
from unity_sds_client.resources.collection import Collection


@when(u'i query {collection_name} from the data catalog')
def step_impl(context, collection_name):
    s = Unity()
    data_manager = s.client(services.DATA_SERVICE)
    cd = data_manager.get_collection_data(Collection(collection_name))
    context.collection_data = cd


@then(u'the response has 1 or more granules')
def step_impl(context):
    assert (len(context.collection_data) > 0)
