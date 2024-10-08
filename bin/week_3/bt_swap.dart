// class TreeNode {
//   int value;
//   TreeNode? left;
//   TreeNode? right;

//   TreeNode(this.value);
// }

// class RecoverBST {
//   TreeNode? first;
//   TreeNode? second;
//   TreeNode? prev;

//   void _inOrderTraversal(TreeNode? node) {
//     if (node == null) return;

//     // Traverse the left subtree
//     _inOrderTraversal(node.left);

//     // Find the first and second nodes that are out of order
//     if (prev != null && prev!.value > node.value) {
//       if (first == null) {
//         first = prev;
//       }
//       second = node;
//     }

//     // Update the previous node
//     prev = node;

//     // Traverse the right subtree
//     _inOrderTraversal(node.right);
//   }

//   void recoverTree(TreeNode? root) {
//     first = null;
//     second = null;
//     prev = null;

//     // Perform in-order traversal to identify the two swapped nodes
//     _inOrderTraversal(root);

//     // Swap the values of the two nodes
//     if (first != null && second != null) {
//       int temp = first!.value;
//       first!.value = second!.value;
//       second!.value = temp;
//     }
//   }
// }

// // Helper function to print the in-order traversal of the tree
// void printInOrder(TreeNode? node) {
//   if (node == null) return;
//   printInOrder(node.left);
//   print('${node.value} ');
//   printInOrder(node.right);
// }

// void main() {
//   // Example BST with swapped nodes
//   TreeNode root = TreeNode(3);
//   root.left = TreeNode(1);
//   root.right = TreeNode(4);
//   root.right!.left = TreeNode(2); // Nodes 2 and 3 are swapped

//   print('Before recovery:');
//   printInOrder(root);
  
//   // Recover the BST
//   RecoverBST recover = RecoverBST();
//   recover.recoverTree(root);

//   print('After recovery:');
//   printInOrder(root);
// }


class Node{
  dynamic value;
  Node?left;
  Node?right;
  Node(this.value);
}

class Bt{
  Node? root;

  insertRoot(value){
    root ??= Node(value);
  }

  insertLeft(parent,value){
    if(parent!=null && parent.left==null){
      parent.left=Node(value);
    }
  }

  insertRight(parent,value){
    if(parent!=null && parent.left==null){
      parent.left=Node(value);
    }
  }
}