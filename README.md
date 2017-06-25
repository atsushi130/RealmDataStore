# RealmDataStore

### Usage
RealmEntity is conformed to Realmable. Please define the class with RealmEntity as super class.
```swift
struct SampleEntity: RealmEntity {
    ...
}
```

Additional
```swift
RealmDataStore.shared.add(samleEntity)
```
or
```swift
RealmDataStore.shared.add(samleEntity) {
    print("added.")
}
```
