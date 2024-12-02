class Queue {
  List queue = [];

  void enqueue(int value) {
    queue.add(value);
  }

  deque() {
    if (queue.isEmpty) print('empty');
    return queue.removeAt(0);
  }

  void display() {
    print(queue);
  }

  reverse() {
    if (queue.isEmpty) {
      return;
    } else {
      int front = deque();
      reverse();
      queue.add(front);
    }
  }
}

void main() {
  Queue queue = Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.enqueue(40);
  queue.enqueue(50);
  queue.deque();
  queue.deque();
  queue.display();
  queue.reverse();
  queue.display();
}
