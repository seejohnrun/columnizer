## Columnizer

To get going:

    gem install columnizer

A simple way to put multi-dimensional arrays into columns

    > data = [['hello', 'world'], ['my', 'name'], ['is', 'john']]
    > Columnizer.columnize(data)

    # helloworld
    # my   name
    # is   john

    > Columnizer.columnize(data, :padding => 3)

    # hello   world
    # my      name
    # is      john  

---

### TODO

* Don't get caught up on escape characters for colorization

---

### Author

* John Crepezzi (john.crepezzi@gmail.com)

---

### License

_The MIT License_ (See enclosed LICENSE)
