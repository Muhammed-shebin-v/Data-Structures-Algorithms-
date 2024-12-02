void main(){
  Stack stack=Stack();
  stack.push(10);
  stack.push(500);
  stack.push(30);
  stack.display();
stack.sort2();
  stack.display();
}


class Stack{
  List stack=[];


  push(int data){stack.add(data);}

  pop(){if(isempty()){return -1;}else{return stack.removeLast();}}

  peek(){if(stack.isEmpty){return -1;}else{ return stack.last;}}

  void display(){
    stack.isEmpty?print('stack is empty'):print(stack.reversed);
  }

  bool isempty()=>stack.isEmpty;

  insertAtBottom(int data){
    if(stack.isEmpty)push(data);
    else{
      int top=pop();
      insertAtBottom(data);
      push(top);
    }
  }

 void rev(){
  if(stack.isEmpty){
    return ;
  }
  else{
    int top = pop();
    rev();
    insertAtBottom(top);
  }
 }

 int leng()=>stack.length;

 void sort(){
  if(stack.isEmpty)print('impossible');else stack.sort();
  }

 void sort2(){
  if(stack.isEmpty){
    return;
  }
  else{
    int top=pop();
    sort2();
    insertAtBottom(top);
  }
 }

 fromQueue(Stack list){
    Stack s=Stack();
    while(!list.isempty()){
      push(list.pop());
    }
    return s;
 }
}

class minStack{
  List minstack=[];
  List stack=[];

  push(int data){
      stack.add(data);
      if(minstack.isEmpty || data<minstack.last){
        minstack.add(data);
      }
    
  }

  pop(){
    if(stack.isEmpty){
      return;
    }
    else{
      int r=stack.removeLast();
      if(r==minstack.last){
        minstack.removeLast();
      }
    }
  }

  display(){
    if(stack.isEmpty){
      print('ee');
      return;
    }
    else{
      print(stack.reversed);
    }
  }
  getmin(){
    if(stack.isEmpty){
      return;
    }
    else{
      print(minstack.last);
    }
  }

}



