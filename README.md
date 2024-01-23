# unity-system-test
System Test area of the Unity Repository

## Behavior Driven Development and Behave

## Setup for tests

install the behave framework:

```
pip install behave
```

then run the tests

```
behave
```

Run against "develop" values
```
behave --tags=@develop features/tagged_examples.feature
```

Run against "test" values
```
behave --tags=@test features/data_catalog/parent_collections.feature
```

run Shared Service Tests:
```

behave --tags=shared
```
