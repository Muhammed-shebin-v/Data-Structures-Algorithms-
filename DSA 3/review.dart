void main() {
  BinarySearchTree tree = BinarySearchTree();
  tree.insert(10);
  tree.insert(11);
  tree.insert(8);
  tree.insert(15);
  tree.insert(4);
  tree.display();
  print('closest value is : ${tree.closestvalue(12)}');
}

class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

class BinarySearchTree {
  Node? root;

  insert(int data) {
    Node? current = root;
    if (root == null) {
      root = Node(data);
      return;
    }
    while (true) {
      if (data < current!.data) {
        if (current.left == null) {
          current.left = Node(data);
          break;
        } else {
          current = current.left;
        }
      } else {
        if (current.right == null) {
          current.right = Node(data);
          break;
        } else {
          current = current.right!;
        }
      }
    }
  }

  closestvalue(int data){
    Node? current=root;
    int closest = current!.data;
    while(current != null){
        if((data - closest).abs() > (data - current.data).abs()){
            closest = current.data;
        }
        if(data < current.data){
            current = current.left;
        }
        else{
            current = current.right;
        }
    }
    return closest; 
  }

  display() {
    preorder(root);
  }

  preorder(Node? node) {
    if (node != null) {
      print(node.data);
      preorder(node.left);
      preorder(node.right);
    }
  }
}
