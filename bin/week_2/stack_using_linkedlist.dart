class Node{
String?data;
Node?next;
Node(this.data);
}

class StackLink{
Node?top;

void push(String data){
  Node newNode=Node(data);

  if(top!=null){
    newNode.next=top;
  }
  top=newNode;
}

void display(){
  Node? current=top;
  while(current != null){
   print(current.data);
   current=current.next;
  }
}

pop(){
 String? value=top!.data;
  top=top!.next;
  return value;
}
reverse(){
  Node?prev;
  Node?current=top;
  Node?next;

  while(current !=null){
    next=current.next;
    current.next=prev;
    prev=current;
    current=next;
  }
  top=prev;
}
void removeMid(){
  if (top == null) {
    print('Stack is empty');
    return;
  }
  Node?fastPointer=top;
  Node?slovPointer=top;
 Node?prev;
  while(fastPointer != null && fastPointer.next !=null){
    prev=slovPointer;
    slovPointer=slovPointer!.next;
    fastPointer=fastPointer.next!.next;
  }
  if(prev!=null){
    prev.next=slovPointer!.next;
  }else{
    top=top!.next;
  }
}
}

void main(){
  StackLink st=StackLink();

  // st.push(10);
  // st.push(11);
  // st.push(12);
  String name='sreerag';
  for(int i=0;i<name.length;i++){
    st.push(name[i]);
  }
  st.display();
  // st.reverse();
  st.removeMid();
  print('Stack after reverse');
  
  st.display();
}