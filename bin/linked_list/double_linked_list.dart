// class Node{
//   Node?prev;
//   int? data;
//   Node?next;

//   Node(this.data);
// }

// class DoubleLinkedList{
//   Node?head;
//   Node?tail;

//   void addData(int data){
//     Node newNode=Node(data);
//     if(head==null){
//       head=newNode;
//     }else{
//       newNode.prev=tail;
//       tail!.next=newNode;
//     }
//     tail=newNode;
//   }

//   void display(){
    
//     if(head== null){
//       print('no data');
//     }else{
//       Node? temp =head;
//       while(temp != null){
//         print(temp.data);
//         temp=temp.next;
//       }
//     }
//   }
// }


// void main(){
//   DoubleLinkedList double=DoubleLinkedList();

//   double.addData(13);
//   double.addData(14);
//   double.addData(15);
//   double.addData(16);
//   double.addData(17);
//   double.addData(18);
//   double.display();
// }

class Node{
  Node? prev;
  Node? next;
  int? data;
  Node(this.data);
}

class DoubleLinkedList{
  Node? head;
  Node? tail;

  void addData(int data){
    Node newNode=Node(data);
    if(head==null){
      head=newNode;
    }else{
      newNode.prev=tail;
      tail!.next=newNode;
    }
    tail=newNode;
  }

  void display(){
    if(head==null){
      print('No Data');
    }else{
      Node?temp=head;
    while(temp != null){
      print(temp.data);
      temp=temp.next;
    }
    } 
  }
  void displayRev(){
    if(head==null){
      print('no data');
    }else{
      Node? temp =tail;
      while(temp!=null){
        print(temp.data);
        temp=temp.prev;
      }
    }
  }

  void deleteGivenNum(int num){
    Node? temp=head;
      while(temp!=null && temp.data!=num){
        temp=temp.next;
      }
      if(temp==null){
        return ;
      }
       if (temp == head) {
        head = temp.next;
        if (head != null) {
            head!.prev = null;
        }
    }
       if (temp == tail) {
        tail = temp.prev;
        if (tail != null) {
            tail!.next = null;
        }
    if (temp.prev != null) {
        temp.prev!.next = temp.next;
    }

    if (temp.next != null) {
        temp.next!.prev = temp.prev;
    }
    }
  }
}

void main(){
  DoubleLinkedList list=DoubleLinkedList();

  list.addData(12);
  list.addData(13);
  list.addData(14);
  // list.display();
  list.deleteGivenNum(12);
  list.display();
}