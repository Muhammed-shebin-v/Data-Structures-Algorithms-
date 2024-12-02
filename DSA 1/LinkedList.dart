void main () {
  Linkedlist list= Linkedlist();
  // List<int> numbers=[1,2,3,8,9];
  // list.display();
  list.addNode(10);
  list.addNode(10);
  list.addNode(400);
  list.addNode(500);
  list.addNode(500);
  list.reverse();
  list.display();
  list.duplicate();
  list.display();
  // list.deletebefore(300);
  // list.addNode(999);
  // list.arraytoll(numbers);
  // list.findMiddle();
  // list.addNode(50);
  // list.addNode(100);
  // list.newnode(500);
  // list.addnew(600);
  // list.addlast(300);
  // // list.addfirst(999);
  // list.insertAtFirst(123);
  // list.addinlast(666);
  // list.addinfirst(700);
  // list.addNode(300);
  // list.addafter(555,666);
  // list.addbefore(111, 666);
  // list.addNode(7777);
  // list.deleteperticular(300);
  // list.deleteperticular(7777);
  // list.deleteperticular(555);
  // list.display();
  // list.findmaxs();
  // list.reverse();
}
class Node{
  int? data;
  Node? next;
   
   Node(int data){
    this.data=data;
   }
}
class Linkedlist {
  Node? head=null;
  Node? tail=null;

  void addNode(int data){
    Node newNode= new Node(data);
    if(head==null){
      head=newNode;
    }
     else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }
  void insertAtFirst(int data) {
    print('insert at first');
    Node newnode = Node(data);
    newnode.next = head;
    head = newnode;
  }
    void display(){
      if(head==null){
        print('empty');
        return;
      }
      Node? temp=head;
      while(temp!=null){
        print(temp.data);
        temp=temp.next;
      }
    }


    void delete(int data){
      Node? temp=head, prev=null;
      if(temp!=null && temp.data==data){
        head=temp.next;
        return;
      }
      while(temp!=null && temp.data != data){
        prev=temp;
        temp=temp.next;
      }
      if(temp==null){
        return;
      }
      if(temp == tail){
        tail=prev;
        tail?.next=null;
        return;
      }
      prev?.next=temp.next;

    }


    void insertAfter(int nextTo,int data){
      Node newNode= Node(data);
      Node? temp=head;

      while (temp!= null && temp.data != nextTo){
        temp =temp.next;
      }
      if(temp==null){
        return;
      }
      if(temp==tail){
        tail?.next=newNode;
        tail=newNode;
        return;
      }
      newNode.next=temp.next;
      temp.next=newNode;
    }


    void removeDuplicates(){
      Node? current=head;
      while(current!=null){
        Node? next=current.next;
        while(next!= null && next.data==current.data){
          next=next.next;
        }
        current.next=next;
        if(next==tail && current.data == next?.data){
          tail=current;
          tail?.next=null;
        }
        current.next;
      }
    }


  void removeDuplicatesd() {
  if (head == null) {
    return;
  }
  Node? current = head;
  while (current != null && current.next != null) {
    if (current.data == current.next!.data) {
      current.next = current.next!.next;
      if (current.next == null) {
        tail = current;
      }
    } else {
      current = current.next;
    }
  }
}
void newnode(int data){
  Node? newnode=new Node(data);
  if(head == null){
    head=newnode;
  }
  else{
  Node? current=head;
  while(current?.next != null){
    current=current?.next;
  }
  current?.next=newnode;
  }
}

void addnew(int data){
  Node? newnode= new Node(data);
  if(head == null){
    head=newnode;
  }
  else{
    Node? current=head;
    while(current?.next !=null){
      current=current?.next;
    }
    current?.next=newnode;
  }
}
void addfirst(int data){
  Node? newnode=Node(data);
  if(head== null){
    head=newnode;
  }
  else{
    newnode.next=head;
    head=newnode;
  }
}
void addlast(int data){
  Node? newnode=Node(data);
  if(head==null){
    head=newnode;
  }
  else{
    Node? current=head;
    while(current?.next!=null){
      current=current?.next;
    }
    current?.next=newnode;
  }
}
void addinfirst(int data){
  Node newnode=Node(data);
  newnode.next=head;
  head=newnode;
}
void addinlast(int data){
  Node newnode=Node(data);
  if(head==null){
    head=newnode;
  }
  else{
    Node? current=head;
    while(current?.next!=null){
      current=current?.next;
    }
    current?.next=newnode;
  }
}
void addafter(int data,int posdata){
  Node? newnode= Node(data);
  if(head==null){
    print('invalid position');
    return;
  }
  else{
    Node? current= head;
    while(current!=null && current.data != posdata){
      current=current.next;
    }
    newnode.next=current?.next;
    current?.next=newnode;
  }
}
void addbefore(int data,int posdat){
  Node newnode= Node(data);
  if(head==null){
    return;
  }
  else{
  Node? current=head;
  Node? prev;
  while(current!=null && current.data!=posdat){
    prev=current;
    current=current.next;
  }
  prev?.next=newnode;
  newnode.next=current;
  }
}
void deleteperticular(int data){
  if(head==null){
    return;
  }
  else{
    Node? pos= Node(data);
    Node? current=head;
    Node? prev=null;

    while(current!=null && current.data!=pos.data){
      prev=current;
      current=current.next;
    }
    prev?.next=current?.next;
 }
}
void deleteafter(int pos){
  Node? current=head;
  while(current!=null&& current.data!=pos){
    current=current.next;
  }
  current?.next=current.next?.next;
}
void deletebefore(int pos){
  Node? current=head;
  Node? prev=null;
  Node? befprev=null;
  while(current!=null && current.data!=pos){
    befprev=prev;
    prev=current;
    current=current.next;
  }
  befprev?.next=current;
}
void arraytoll(List<int> numbers){
  for(int i in numbers){
    newnode(i);
  }
}
void reverse() {
    print('reverse order:');
    Node? later;
    Node? current = head;
    Node? prev;

    while (current != null) {
      later = current.next;
      current.next = prev;
      prev = current;
      current = later;
    }
    head = prev;
    current = head;
    while (current != null) {
      print('${current.data}');
      current = current.next;
    }
  }

  void findMiddle() { //find middle and delete that
    if (head == null) {
      print('list is empty');
    }
    Node? slow = head;
    Node? fast = head;
    Node? prev;
    while (fast != null && fast.next!=null) {
      prev=slow;
      slow = slow?.next;
      fast = fast.next?.next;
    }
    print(' middle ${slow?.data}') ;
    prev?.next=slow?.next;
  }
  void findmaxs(){
    if(head==null){
      return;
    }
    else{
      Node? current = head;
      int? max1=0;
      int? max2=0;
      while(current != null){
        if(current.data! > max1!){
          max2=max1;
          max1=current.data;
        }
        else if(current.data! > max2! && current.data! < max1){
          max2=current.data;
        }
        current=current.next;
      }
      print('maximum is $max1 and second max $max2');
    }
  }

    void duplicate() {
    print('After removing duplicates:');
    List dup = [];
    if (head == null) {
      print('list is empty!');
      return;
    }
    Node? current = head;
    Node? prev;
    while (current != null) {
      if (dup.contains(current.data)) {
        prev?.next = current.next;
      } else {
        dup.add(current.data);
        prev = current;
      }
      current = current.next;
    }
  }

}
