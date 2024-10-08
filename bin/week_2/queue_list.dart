class Queue{
  List<int>queue=[];


 enqueue(int data){
    queue.add(data);
  }

  void dequeue(){
    if(queue.isEmpty){
      print('no data in the queue');
    }else{
      queue.removeAt(0);
    }
    
  }
 void display(){
  if(queue.isEmpty){
    print('no data in the queue');
  }else{
    for(int i =0;i<queue.length;i++){
      print(queue[i]);
    }
  }
 }
}

void main(){
  Queue q=Queue();
  q.enqueue(2);
  q.enqueue(3);
  q.enqueue(4);
  q.enqueue(5);
  q.enqueue(6);
  // q.dequeue();
  q.display();
}

