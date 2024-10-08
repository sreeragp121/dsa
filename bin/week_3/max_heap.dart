class Heap{
  List<int>heap=[];

  _leftchildIndex(index)=> (2*index)+1;

  _rightchildIndex(index)=>(2*index)+2;
  _parentIndex(index)=>(index-1)~/2;

  _swap(i,j){
    int temp=heap[i];
    heap[i]=heap[j];
    heap[j]=temp;
  }

 void _heapifyUp(index){
    int parentIndex=_parentIndex(index);
    if(index >0 && heap[parentIndex]<heap[index]){
      _swap(index, parentIndex);
      _heapifyUp(parentIndex);
    }
  }

 void _heapifyDown(int index){
    int leftIndex,rightIndex,largest;

    while(true){
      leftIndex=_leftchildIndex(index);
      rightIndex=_rightchildIndex(index);
      largest=index;

      if(leftIndex <heap.length && heap[leftIndex]>heap[largest]){
        largest=leftIndex;
      }
      if(rightIndex < heap.length && heap[rightIndex]>heap[largest]){
        largest=rightIndex;
      }

      if(largest==index)break;

      _swap(index, largest);
      index=largest;
    }

  }

  extractMax(){
    if(heap.length == 1){
      return heap.removeLast();
    }
    int max=heap[0];
    heap[0]=heap.removeLast();
    _heapifyDown(0);
    return max;
  }

  insertValue(value){
    heap.add(value);
    _heapifyUp(heap.length-1);
  }

  List<int>heapSort(){
    List<int>sortedArr= [];

    while(heap.isNotEmpty){
      sortedArr.insert(0, extractMax());
    }
    return sortedArr;
  }

  display(){
    print(heap);
  }


}

void main(){
  Heap h=Heap();

  h.insertValue(10);
  h.insertValue(15);
  h.insertValue(16);
  h.insertValue(17);
  h.insertValue(18);
  // h.display();
  // h.insertValue(13);
  // print(h.extractMax());
  h.display();
  print(h.heapSort());
}