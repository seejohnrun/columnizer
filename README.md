## Columnizer

To get going:

``` bash
$ gem install columnizer
```

A simple way to put multi-dimensional arrays into columns

``` ruby
data = [['hello', 'world'], ['my', 'name'], ['is', 'john']]
Columnizer.columnize(data)
# helloworld
# my   name
# is   john

Columnizer.columnize(data, :padding => 3)
# hello   world
# my      name
# is      john
```

---

## Author

* John Crepezzi (john.crepezzi@gmail.com)

---

## License

MIT License (See enclosed LICENSE)
