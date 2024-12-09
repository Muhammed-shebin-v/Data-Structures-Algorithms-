// Main Function
void main(){
  BinarySearchTree tree=BinarySearchTree();
  tree.insert(10);
  tree.insert(8);
  tree.insert(11);
  tree.insert(4);
  tree.insert(9);
  tree.remove(11);
  tree.inorder();
  print('***************');
  tree.preorder();
  print('***************');
  tree.postorder();
  print('sum');
  print(tree.sum(tree.root));
}


// Binary Node Creation
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
        }else current=current.left;
      }
      else {
        if(current.right==null){
          current.right=Node(data);
          break;
        }else current=current.right;
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


  void remove(int data){
    removeHelper(data, root, null);
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
  int getMinValue(Node? current){
    if(current!.left == null){
      return current.data;
    }else{
      return getMinValue(current.left);
    }
  }


  void preorder(){
    preorderHelper(root);
  }
  void preorderHelper(Node? node){
    if(node != null){
      print(node.data);
      preorderHelper(node.left);
      preorderHelper(node.right);
    }
  }


  void inorder(){
    inorderHelper(root);
  }
  void inorderHelper(Node? node){
    if(node != null){
      inorderHelper(node.left);
      print(node.data);
      inorderHelper(node.right);
    }
  }


  void postorder(){
    postorderHelper(root);
  }
  void postorderHelper(Node? node){
    if(node != null){
      postorderHelper(node.left);
      postorderHelper(node.right);
      print(node.data);
    }
  }


  int findClosest(int target){
    Node? current =root;
    int closest=current!.data;
    while(current != null){
      if((target - closest).abs() > (target - current.data).abs()){
        closest= current.data;
      }
      if(target<current.data){
        current=current.left;
      }else if(target > current.data){
        current = current.right;
      }else{
        break;
      }
    }
    return closest;
  }

  sum(Node? node) {
    if (node == null) return 0;
    return sum(node.left) + sum(node.right) + node.data;
  }
}