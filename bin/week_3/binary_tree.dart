import 'dart:math';

class Node {
  dynamic value;
  Node? left;
  Node? right;
  Node(this.value);
}

class BT {
  Node? root;

  void insertRoot(value) {
    root ??= Node(value);
  }

  void insertLeft(parent, value) {
    if (parent != null && parent.left == null) {
      parent.left = Node(value);
    }
  }

  void insertRight(parent, value) {
    if (parent != null && parent.right == null) {
      parent.right = Node(value);
    }
  }

// -------------inOrder---------------

  inOreder(root) {
    if (root != null) {
      inOreder(root.left);
      print(root.value);
      inOreder(root.right);
    }
  }

//-------------level order-------------------
levelOrder(root){
  List queue=[];

  queue.add(root);

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

//---------------find even numbers--------------------

  findEvenNum(root, [List<int>? result]) {
    result ??= [];

    if (root != null) {
      if (root.value % 2 == 0) {
        result.add(root.value);
      }
      findEvenNum(root.left, result);
      findEvenNum(root.right, result);
    }
    return result;
  }
//---------------find power of two ---------------------

  findPowerTwo(root, [List<int>? result]) {
    result ??= [];
    if (root != null) {
      if (isPower(root.value)) {
        result.add(root.value);
      }
      findPowerTwo(root.left,result);
      findPowerTwo(root.right,result);
    }
    return result;
  }

  isPower(int numb) {
    if (numb <= 0) return false;

    double value = log(numb) / log(2);
    return value % 1 == 0;
  }
//----------find largest number-------------------------

  findMax(root){
    if(root ==null)return null;

    int?leftMax=findMax(root.left);
    int?rightMax=findMax(root.right);

    int max=root.value;

    if(leftMax!=null&& leftMax>max){
      max=leftMax;
    }
    if(rightMax!=null&& rightMax>max){
      max=rightMax;
    }
    return max;
  }

// ------------find the largest two numbers ---------------------------


   List<int?> findLargestTwo(Node? root) {
    List<int?> largestTwo = [null, null]; // [largest, secondLargest]
    
    void updateLargestTwo(int value) {
      if (largestTwo[0] == null || value > largestTwo[0]!) {
        // Update both largest and second largest
        largestTwo[1] = largestTwo[0];
        largestTwo[0] = value;
      } else if (largestTwo[1] == null || value > largestTwo[1]!) {
        // Update only second largest
        largestTwo[1] = value;
      }
    }

    void traverse(Node? node) {
      if (node != null) {
        updateLargestTwo(node.value);
        traverse(node.left);
        traverse(node.right);
      }
    }

    traverse(root);
    return largestTwo;
  }


  //----------find the leaf nodes ------------

  findLeafNode(root,[List<int>?result]){
    result??=[];

    if(root!=null){
      if(root.left ==null && root.right == null){
        result.add(root.value);
      }
      findLeafNode(root.left,result);
      findLeafNode(root.right,result);
    }
    return result;
  }

//---------------find the depth ------------

findDepth(root){
  if(root==null){
    return 0;
  }

  int leftDepth=findDepth(root.left);
  int rightDepth=findDepth(root.right);

  return 1+(leftDepth>rightDepth?leftDepth:rightDepth);
}

}

void main() {
  BT bt = BT();

  bt.insertRoot(3);
  bt.insertLeft(bt.root, 1);
  bt.insertRight(bt.root, 4);

  // bt.insertLeft(bt.root?.left, 15);
  // bt.insertRight(bt.root?.left, 17);

  bt.insertLeft(bt.root?.right, 2);
  // bt.insertRight(bt.root?.right, 9);

  bt.inOreder(bt.root);
  // List<int> result = bt.findEvenNum(bt.root);
  // print(result);

  // print(bt.findPowerTwo(bt.root));

  // print(bt.findMax(bt.root));

  // print(bt.findLeafNode(bt.root));

  // print(bt.findDepth(bt.root));
  // bt.levelOrder(bt.root);
}
