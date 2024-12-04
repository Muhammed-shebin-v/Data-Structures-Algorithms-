void main(){
  BinarySearchTree tree=BinarySearchTree();
  tree.insert(10);
  tree.insert(20);
  tree.insert(30);
  tree.insert(40);
  tree.insert(50);
  print(tree.contains(60));
}
class Node{
  int data;
  Node? left,right;
  Node(this.data);
}
class BinarySearchTree {
  Node? root;

  void insert(int data){
    Node? current = root;
    if(current == null){
      root = Node(data);
      return;
    }
    
    while(true){
      if(data < current!.data){
        if(current.left== null){
          current.left=Node(data);
          break;
        }else{
            current=current.left;
        }
      }
      else {
        if(current.right==null){
          current.right=Node(data);
          break;
        }else{
          current=current.right;
        }
      }
    }
  }

  bool contains(int data){
    Node?  current=root;
    while(current != null){
      if(data < current.data){
        current=current.left;
      }else if(data>current.data){
        current=current.right;
      }else{
        return true;
      }
    }
    return false;
  }
}