class MinHeap {
  List<int> heap = [];

  void insert(int value) {
    heap.add(value);
    _heapifyUp(heap.length - 1);
  }

  int extractMin() {
    if (heap.isEmpty) return -1;
    int root = heap[0];
    heap[0] = heap.removeLast();
    _heapifyDown(0);
    return root;
  }

  void _heapifyUp(int index) {
    int parentIndex = (index - 1) ~/ 2;

    if (index > 0 && heap[index] < heap[parentIndex]) {
      _swap(index, parentIndex);
      _heapifyUp(parentIndex);
    }
  }

  void _heapifyDown(int index) {
    int leftChildIndex = 2 * index + 1;
    int rightChildIndex = 2 * index + 2;
    int smallest = index;

    if (leftChildIndex < heap.length && heap[leftChildIndex] < heap[smallest]) {
      smallest = leftChildIndex;
    }

    if (rightChildIndex < heap.length && heap[rightChildIndex] < heap[smallest]) {
      smallest = rightChildIndex;
    }

    if (smallest != index) {
      _swap(index, smallest);
      _heapifyDown(smallest);
    }
  }

  void _swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  void printHeap() {
    print(heap);
  }
}

void main() {
  MinHeap minHeap = MinHeap();
  minHeap.insert(3);
  minHeap.insert(10);
  minHeap.insert(5);
  minHeap.insert(1);
  minHeap.insert(4);
  minHeap.printHeap(); // Output: [1, 3, 5, 10, 4]

  print("Extracted Min: ${minHeap.extractMin()}"); // Output: 1
  minHeap.printHeap(); // Output: [3, 4, 5, 10]
}
