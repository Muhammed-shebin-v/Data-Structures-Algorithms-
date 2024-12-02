class HashNode<k, v> {
  k? key;
  v? value;
  HashNode(this.key, this.value);
}

class Hashtable<k, v> {
  late int size;
  late int capacity;
  late List<List<HashNode<k, v>>> slot;

  Hashtable([int initialcapacity = 16]) {
    capacity = initialcapacity;
    size = 0;
    slot = List.generate(capacity, (index) => []);
  }

  hash(k key) {
    return key.hashCode % capacity;
  }

  insert(k key, v value) {
    int index = hash(key);
    for (var node in slot[index]) {
      if (node.key == key) {
        node.value = value;
        return;
      }
    }
    slot[index].add(HashNode(key, value));
    size++;
  }

  
  retrieve(k key) {
    int index = hash(key);
    for (var node in slot[index]) {
      if (node.key == key) {
        return node.value;
      }
    }
  }

  display(){
    for (int i = 0; i < capacity; i++) {
      if (slot[i].isNotEmpty) {
        for (var node in slot[i]) {
          print("${node.key}:${node.value}");
        }
      }
    }
  }

}

void main(){
  Hashtable h = Hashtable();
  h.insert(1, 30);
  h.insert(2, 40);
  h.insert(3, 50);
  h.insert(300, 500);
  h.display();
  print(h.retrieve(300));
}
