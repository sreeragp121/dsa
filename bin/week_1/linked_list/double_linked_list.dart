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
  void deleteGivenNum(int numb){
    Node? temp =head;

    while(temp!=null&&temp.data!=numb){
      temp=temp.next;
    }
    if(temp==null){
      return;
    }
    if(temp==head){
      head=head!.next;
      if(head!=null){
        head!.prev=null;
      }
    }
    if(temp==tail){
      tail=temp.prev;
      if(tail!=null){
        tail!.next==null;
      }
    }
    if(temp.prev!=null){
      temp.prev!.next=temp.next;
    }
    if(temp.next!=null){
      temp.next!.prev=temp.prev;
    }
  }

  void insertHead(int data){
    Node?newNode=Node(data);

    if(head==null){
    return;
    }else{
      head!.prev=newNode;
      newNode.next=head;
      head=newNode;
    }
  }

  void insertTail(int data){
    Node?newNode=Node(data);

    if(head==null){
      return;
    }else{
      tail!.next=newNode;
      newNode.prev=tail;
      tail=newNode;
    }
  }
  void insertMidprev(int data,int numb){
    Node?newNode=Node(data);
      Node?temp=head;
      while(temp != null && temp.data != numb){
        temp=temp.next;
      }
      if(temp==null){
        return;
      }
    if(temp==head){
      newNode.next=head;
      head!.prev=newNode;
      head=newNode;
    }
    if(temp.prev!=null){
      newNode.prev=temp.prev;
      temp.prev!.next=newNode;
    }
    newNode.next=temp;
    temp.prev=newNode;
  }

  void insertMidnext(int data,int numb){
  Node?newNode=Node(data);

  Node? temp=head;
  while(temp!=null && temp.data!=numb){
    temp=temp.next;
  }
  if(temp==null){
    return;
  }
  if(temp==tail){
    tail!.next=newNode;
    newNode.prev=temp;
    tail=newNode;
  }

  if(temp.next!=null){
    temp.next!.prev=newNode;
    newNode.next=temp.next;
  }
temp.next=newNode;
newNode.prev=temp;
  }

  void deleteDupilcate(){
    Node? current=head;
    while(current!=null){
      Node?runner=current.next;
      while (runner!=null && runner.data == current.data){
        runner=runner.next;
      }
    current.next=runner;
    if(runner==tail){
      tail=current;
    }
    current=runner;
    }
  }
}

void main(){
  DoubleLinkedList list=DoubleLinkedList();

  list.addData(12);
    list.addData(12);
  list.addData(12);
  list.addData(13);  
  list.addData(13);
  list.addData(12);
  list.addData(14);
  // list.display();
  // list.deleteGivenNum(14);
  // list.insertHead(100);
  // list.insertTail(100);
  // list.insertMidnext(100, 13);
  list.deleteDupilcate();
  list.display();
}