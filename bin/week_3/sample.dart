// // class Heap{
// //   List<int>heap=[];

// //   _leftchildIndex(int index)=>2*index+1;
// //   _rightChildInex(int index)=>2*index+2;
// //   _parentIndex(int index) =>(index-1)~/2; 

// //   _swap(i,j){
// //     int temp=heap[i];
// //     heap[i]=heap[j];
// //     heap[j]=temp;
// //   }

// //   insertValue(int value){
// //     heap.add(value);
// //     _heapifyUp(heap.length-1);
// //   }

// //   _heapifyUp(int index){
// //     int parentIndex=_parentIndex(index);

// //     if(index>0 && heap[parentIndex]>heap[index]){
// //       _swap(index,parentIndex);
// //       _heapifyUp(parentIndex);
// //     }
// //   }

// //   _heapifyDown(int index){
// //     int leftchildIndex,rightChildInex,smallest;

// //     while(true){
// //     leftchildIndex=_leftchildIndex(index);
// //      rightChildInex=_rightChildInex(index);
// //      smallest=index;

// //      if(leftchildIndex<heap.length && heap[leftchildIndex]<heap[smallest]){
// //       smallest=leftchildIndex;
// //      }

// //      if(rightChildInex<heap.length && heap[rightChildInex]<heap[smallest]){
// //       smallest=rightChildInex;
// //      }
// //      if(index==smallest) break;

// //      _swap(index, smallest);
// //       index=smallest;
// //     }
// //   }

// //   extractMin(){
// //     if(heap.length==1){
// //       return heap.removeAt(0);
// //     }
// //     int min=heap[0];
// //     heap[0]=heap.removeLast();
// //     _heapifyDown(0);

// //     return min;
// //   }
  
// //   delete(value){
// //     for(int i=0;i<heap.length;i++){
// //       if(heap[i]==value){
// //         heap[i]=heap.removeLast();
// //         _heapifyDown(i);
// //         // break;
// //       }
// //     }
// //   }

// //   sort(){
// //     List<int>result=[];

// //     while(heap.isNotEmpty){
// //       result.add(extractMin());
// //     }
// //     return result;
// //   }

// //   display(){
// //     print(heap);
// //   }
// // }

// // void main(){
// //   Heap h=Heap();

// //   List<int>value=[4,2,7,10,56,91];

// //   for(int i=0;i<value.length;i++){
// //     h.insertValue(value[i]);
// //   }
// //   h.display();
// //   // print(h.extractMin());
// //   h.delete(4);
// //   h.display();
// //   print(h.sort());
// // }

// class MaxHeap{
//   List<int>maxHeap=[];

//   _leftchildIndex(index)=>2*index+1;
//   _rightChildInex(index)=>2*index+2;
//   _parentIndex(index)=>(index-1)~/2;
//   _swap(i,j){
//     int temp=maxHeap[i];
//     maxHeap[i]=maxHeap[j];
//     maxHeap[j]=temp;
//   }

//   _heapifyUp(index){
//     int parentIndex=_parentIndex(index);

//     if(index >0 && maxHeap[parentIndex]<maxHeap[index]){
//       _swap(index, parentIndex);
//       _heapifyUp(parentIndex);
//     }
//   }

//   insert(value){
//     maxHeap.add(value);
//     _heapifyUp(maxHeap.length-1);
//   }

//   void display(){
//     print(maxHeap);
//   }
// }


// void main(){
//   MaxHeap m=MaxHeap();
//   List<int>arr=[5,3,78,8,9];

//   for(int i=0;i<arr.length;i++){
//     m.insert(arr[i]);
//   }
//   m.display();
// }


class Node{
  dynamic value;
  Node?left;
  Node?right;

  Node(this.value);
}

class BST{
  Node? root;

  insert(value){
    if(root==null){
      root=Node(value);
    }else{
      _insertNode(root,value);
    }
  }

  _insertNode(parent,int value){
    if(parent.value>value){
      if(parent.left==null){
        parent.left=Node(value);
      }else{
        _insertNode(parent.left,value);
      }
    }else{
      if(parent.right==null){
        parent.right=Node(value);
      }else{
        _insertNode(parent.right, value);
      }
    }
  }

  search(root,value){
  if(root==null){
    return false;
  }else{
    if(root.value==value){
      return true;
    }else if(root.value>value){
     return search(root.left, value);
    }else{
     return search(root.right, value);
    }
  }
  }

 secondLargest(Node? root) {
  int? first ;
  int? second ;

  // Helper function to traverse the tree
  void trav(Node? node) {
    if (node == null) return;

    // Update first and second largest values
    if ( first==null ||node.value > first!) {
      second = first;
      first = node.value;
    } else if (second == null ||( node.value > second! && node.value != first)) {
      second = node.value;
    }

    // Traverse left and right subtrees
    trav(node.left);
    trav(node.right);
  }

  // Start traversal
  trav(root);

  return second;
}



levelOrder(node){
  List queue=[];
  queue.add(node);

  while(queue.isNotEmpty){
    Node current =queue.removeAt(0);
    print(current.value);

    if(current.left != null){
      queue.add(current.left);
    }

    if(current.right!=null){
      queue.add(current.right);
    }
  }

}
}

void main(){
  BST b=BST();

  List<int>value=[6,4,7,3,9,2];

  for(int i=0;i<value.length;i++){
    b.insert(value[i]);
  }
  b.levelOrder(b.root);
  // print(b.search(b.root,6));
  // print(b.secondLargest(b.root));

  // print(b.countLeaf(b.root));
}
