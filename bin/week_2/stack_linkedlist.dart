class Node{
  int? data;
  Node?next;
  Node(this.data);
}

class LinkedList{
  Node?top;
  

  void addData(int data){
    Node newNode=Node(data);

    if(top==null){
      top=newNode;
    }else{
      newNode.next=top;
      top=newNode;
    }
  }

  void display(){
    Node?current=top;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }

  void pop(){
    top=top!.next;
  }
}

void main(){
  LinkedList list=LinkedList();
  list.addData(23);
  list.addData(34);
  list.addData(78);
  list.pop();
  list.display();
}