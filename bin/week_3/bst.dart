class Node {
  dynamic value;
  Node? left;
  Node? right;
  Node(this.value);
}

class BST {
  Node? root;

  void insert(value) {
    if (root == null) {
      root = Node(value);
    } else {
      insertNode(root, value);
    }
  }

  insertNode(root, value) {
    if (root.value < value) {
      if (root.left == null) {
        root.left = Node(value);
      } else {
        insertNode(root.left, value);
      }
    } else {
      if (root.right == null) {
        root.right = Node(value);
      } else {
        insertNode(root.right, value);
      }
    }
  }

//-----------DFS--------------
//-----------inOrder-----------

  inOrder(root) {
    if (root != null) {
      inOrder(root.left);
      print(root.value);
      inOrder(root.right);
    }
  }

//-----------------preOrder-----------
  preOrder(root) {
    if (root != null) {
      print(root.value);
      preOrder(root.left);
      preOrder(root.right);
    }
  }

//----------postOrder-------------------

  postOrder(root) {
    if (root != null) {
      postOrder(root.left);
      postOrder(root.right);
      print(root.value);
    }
  }

//--------------BFS---------------------
//-------------levelOrder---------------

  levelOrder(root) {
    List queue = [];

    queue.add(root);

    while (queue.isNotEmpty) {
      var current = queue.removeAt(0);
      print(current.value);

      if (current.left != null) {
        queue.add(current.left);
      }
      if (current.right != null) {
        queue.add(current.right);
      }
    }
  }

 leafNodes(root,[List? result]){
  result??=[];
  if(root != null){
    if(root.left == null && root.right == null){
      result.add(root.value);
    }
    leafNodes(root.left,result);
    leafNodes(root.right,result);
  }
  return result;
 }
}

void main() {
  BST bst = BST();

  bst.insert(10);
  bst.insert(5);
  bst.insert(15);
  bst.insert(3);
  bst.insert(7);
  bst.insert(30);
  bst.insert(12);
  // bst.inOrder(bst.root);
  // bst.preOrder(bst.root);
  // bst.postOrder(bst.root);
  // bst.levelOrder(bst.root);
  print(bst.leafNodes(bst.root));
}
