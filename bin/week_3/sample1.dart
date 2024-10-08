class Node{
  dynamic value;
  Node?left;
  Node?right;
  Node(this.value);
}

class BT{
  Node?root;

  insertRoot(value){
   root ??= Node(value);
  }
   
   insertLeft(node,value){
    if(node.left==null){
      node.left=Node(value);
    }else{
      insertLeft(node.left, value);
    }
   }

   insertRight(node,value){
    if(node.right==null){
      node.right=Node(value);
    }else{
      insertRight(node.right, value);
    }
   }

   display(node){
    if(node!=null){
      print(node.value);
      display(node.left);
      display(node.right);
    }
    
   }

preOrder(node){
  if(node!=null){
    print(node.value);
    preOrder(node.left);
    preOrder(node.right);
  }
}

inOrder(node){
  if(node!=null){
    inOrder(node.left);
    print(node.value);
    inOrder(node.right);
  }
}



   postOrder(node){
    if(node!=null){
      postOrder(node.left);
      postOrder(node.right);
      print(node.value);
    }
   }   

   levelorder(node){
    List queue=[];
    queue.add(node);

    while(queue.isNotEmpty){
      Node current=queue.removeAt(0);
      print(current.value);

      if(current.left!=null){
        queue.add(current.left);
      }
      if(current.right!=null){
        queue.add(current.right);
      }
    }
   }

  isBST(root,[int?min,int?max]){
    if(root == null ){
      return true;
    }
     if ((min != null && root.value <= min) || (max != null && root.value >= max)) {
    return false;
  }

  return isBST(root.left, min, root.value) && isBST(root.right, root.value, max);
}

}

void main(){
  BT bt =BT();

  bt.insertRoot(3);
  bt.insertLeft(bt.root, 1);
  bt.insertRight(bt.root, 5);

  // bt.insertLeft(bt.root!.left, 14);
  // bt.insertRight(bt.root!.left, 15);

  // bt.insertLeft(bt.root!.right, 16);
  // bt.insertRight(bt.root!.right,17);
  // bt.display(bt.root);
  // bt.preOrder(bt.root);
  // bt.inOrder(bt.root);
  // bt.postOrder(bt.root);
  // print(bt.levelorder(bt.root));
  // print(bt.checking(bt.root));
  bt.display(bt.root);
  print(bt.isBST(bt.root));
  // bt.inOrder(bt.root);

}