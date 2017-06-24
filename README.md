# RealmDataStore

### Usage
RealmModel is conformed to RealmModelable. Please define the class with RealmModel as super class.
```swift
struct SampleModel: RealmModel {
    ...
}
```

Additional
```swift
RealmDataStore.shared.add(samleModel)
```
or
```swift
RealmDataStore.shared.add(samleModel) {
    print("added.")
}
```
