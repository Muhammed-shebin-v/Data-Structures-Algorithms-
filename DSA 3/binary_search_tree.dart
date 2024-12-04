void main(){
  BinarySearchTree tree=BinarySearchTree();
  tree.insert(10);
  tree.insert(20);
  tree.insert(30);
  tree.insert(40);
  tree.insert(50);
  tree.insert(60);
  print(tree.contains(50));
  tree.remove(50);
  print(tree.contains(50));
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

  void removeHelper(int data,Node? current,Node? parent){
    while(current != null){
      if(data < current.data){
        parent = current;
        current = current.left;
      }else if(data > current.data){
        parent =current;
        current = current.right;
      }else{
        if(current.left != null && current.right != null){
          current.data=getMinValue(current.right);
          removeHelper(current.data, current.right, current);
        }else{
          if(parent == null){
            if(current.right == null){
              root =current.left;
            }else{
              root=current.right;
            }
          }else{
            if(parent.left == current){
              if(current.right == null){
                parent.left=current.left;
              }else{
                parent.left = current.right;
              }
            }else{
              if(current.right == null){
                parent.right = current.left;
              }else{
                 parent.right = current.right;
              }
            }
          }
        }
        break;
      }
    }
  }

  void remove(int data){
    removeHelper(data, root, null);
  }

  int getMinValue(Node? current){
    if(current!.left == null){
      return current.data;
    }else{
      return getMinValue(current.left);
    }
  }
}