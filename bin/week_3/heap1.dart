class Heap{
  List<int>heap=[];

   _leftchildIndex(index){
    return 2*index+1;
  }

  _rightchildIndex(index){
    return 2*index+2;
  }

  _parentIndex(index){
    return (index-1)~/2;
  }
  void _swap(int i,int j){
    int temp=heap[i];
    heap[i]=heap[j];
    heap[j]=temp;
  }

  void _heapifyUp(int index){
    int parentIndex=_parentIndex(index);

    if(index>0 && heap[index]<heap[parentIndex] ){
      _swap(index, parentIndex);
      _heapifyUp(parentIndex);
    }
  }

 void heapifyDown(int index){
  int leftindex,rightIndex,smallest;

  while(true){
    leftindex=_leftchildIndex(index);
    rightIndex=_rightchildIndex(index);

    smallest=index;

    if(leftindex<heap.length && heap[leftindex]<heap[smallest]){
      smallest=leftindex;
    }

    if(rightIndex<heap.length && heap[rightIndex]<heap[smallest]){
      smallest=rightIndex;
    }
    if(smallest==index) break;

    _swap(index,smallest);
    index=smallest;
  }
 }

  void insert(int value){
    heap.add(value);
    _heapifyUp(heap.length-1);
  }

  void display(){
    print(heap);
  }

   extractMIn(){
    if(heap.length==1){
      return heap.removeLast();
    }
    int min=heap[0];
    heap[0]=heap.removeLast();
    heapifyDown(0);
    return min;
  }

  delete(int value){
    int index=heap.indexOf(value);
    if(index==-1)return;
    heap[index]=heap.removeLast();
    heapifyDown(index);
    // _heapifyUp(index);
  }

 List<int> heapSort(){
    List<int>sortedArr=[];

    while(heap.isNotEmpty){
      sortedArr.add(extractMIn());
    }
    return sortedArr;
  }
}

void main(){
  Heap h=Heap();

  h.insert(6);
  h.insert(7);
  h.insert(10);
  h.insert(9);
  h.insert(13);
  h.display();

  // h.insert(1);
  // h.display();
  // print(h.extractMIn());
  // h.delete(10);
  print(h.heapSort());
  // h.display();
}