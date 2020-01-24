# GrouByExample
This is an example of my extension for grouping elements by a given key. 

Many times we need to group items over an array of object. With this extension you can achieve it at single line. 

```
func groupBy<T>(_ key: (Element) -> T) -> [T : [Element]] {
        var returnItems = [T : [Element]]()
        for x in self {
            let key = key(x)
            guard var items = returnItems[key] else {
                returnItems[key] = [x]
                continue
            }
            items.append(x)
            returnItems[key] = items
        }
        return returnItems
    }
```
