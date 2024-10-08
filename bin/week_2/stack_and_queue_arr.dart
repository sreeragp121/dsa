class Stack{
  List<int>stack=[];

 void push(int data){
  stack.add(data);
  }

 pop(){
  if(stack.isEmpty){
    print('stack is empty');
  }
  return stack.removeLast();
  }

  void display(){
    if(stack.isEmpty){
      print('stack is empty');
    }
    for(int i=stack.length-1;i>=0;i--){
      print(stack[i]);
    }
  }

  void removemid(){
    if(stack.isEmpty){
      print('stack is empty');
    }else{
      int mid=stack.length~/2;
      print(mid);
      List<int>temp=[];
      int count=0;

      while(stack.isNotEmpty){
        int current=pop();
        if(count !=mid){
          temp.add(current);
        }
        count++;
      }
      while(temp.isNotEmpty){
        stack.add(temp.removeLast());
      }
    }
  }

   void reverse() {
    List<int> tempStack = [];
      while (stack.isNotEmpty) {
      tempStack.add(pop());
    }
      while (tempStack.isNotEmpty) {
      stack.add(tempStack.removeAt(0));
    }
  }
}

void main(){
  // Stack s=Stack();

  // s.push(10);
  // s.push(11);
  // s.push(12);
  // s.push(13);
  // s.push(14);
  // // s.push(15);
  // s.display();
  // // print('pop data :${s.pop()}');
  // // s.removemid();
  // print('stack after reverse element');
  // s.reverse();
  // s.display();

  // Queue q=Queue();
  // q.enqueue(1);
  // q.enqueue(2);
  // q.enqueue(3);
  // q.enqueue(4);
  // q.enqueue(5);
  // q.enqueue(6);
  // q.enqueue(7);
  // q.disple();
  // print('queue after enqueue:${q.dequeue()}');
  // q.disple();

  StackString st=StackString();

  String word='sreerag';
  for(int i=0;i<word.length;i++){
    st.pus(word[i]);
  }
  // st.pop();
  st.display();
  st.reverse();
  print('stack after reverse element');
  st.display();

}

class Queue{
  List queue=[];

  void enqueue(int data){
    queue.add(data);
  }

 dequeue(){
  if(queue.isEmpty){
    print('queue is empty');
  }
 return queue.removeAt(0);
  }

  void disple(){
    if(queue.isEmpty){
      print('queue is empty');
    }else{
    print(queue);
    }
  }
}

class StackString{
  List<String>stack=[];

  void pus(String data){
    stack.add(data);
  }

 String? pop(){
    if (stack.isEmpty) {
      return null;
    }
    return stack.removeLast();
  }

  void display(){
    for(int i=stack.length-1;i>=0;i--){
      print(stack[i]);
    }
  }
  void reverse(){
    List<String >temp=[];
    while(stack.isNotEmpty){
      temp.add(pop()!);
    }
    while (temp.isNotEmpty){
      stack.add(temp.removeAt(0));
    }
  }

}