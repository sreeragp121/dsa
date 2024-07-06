// class Node {
//   int? data;
//   Node? next;
//   Node(this.data);
// }

// class Linkedlist {
//   Node? head;
//   Node? tail;
// //linked list create
//   void addNewData(int data) {
//     Node newNodel = Node(data);
//     if (head == null) {
//       head = newNodel;
//     } else {
//       tail!.next = newNodel;
//     }
//     tail = newNodel;
//   }

// // display the list
//   void display() {
//     if (head == null) {
//       print('null');
//     } else {
//       Node? temp = head;
//       while (temp != null) {
//         print(temp.data);
//         temp = temp.next;
//       }
//     }
//     print('____________');
//   }

// // add tho the head
//   void addToHead(int data) {
//     Node? newData = Node(data);
//     if (head == null) {
//        newData=head;
//     } else {
//       newData.next=head;
//       head=newData;
//     }
//   }
// //delete head
// void deleteHead(){
//   if(head==null){
//     print('list is null');
//   }else{
//     head=head!.next;
//   }
// }

// void deleteLast(){
//   if(head==null){
//     print('list is empty');
//   }
//   if(head!.next==null){
//     head=null;
//     return;
//   }
//   Node secondLast=head!;
//   Node last=head!.next!;
//   while(last.next != null){
//     secondLast=last;
//     last=secondLast.next!;
//   }
//   tail=secondLast;
//   tail!.next=null;
//   }
// //delete given number
// void deleteGivenNum(int data){
//  Node? temp =head, prev;
// if(temp !=null && temp.data==data){
//   head=temp.next;
//   return;
// }
// while (temp != null && temp.data != data){
//   prev =temp;
//   temp=temp.next;
// }
// if(temp==tail){
//   tail=prev;
//   tail!.next=null;
// }
// prev!.next=temp!.next;
// }

// //insert a valut to the next of a given value

// void insertToNext(int nextTo,int data){
//   Node newNode=Node(data);
//   Node? temp = head;
//   while(temp != null && temp.data != nextTo){
//     temp=temp.next;
//   }
//   if(temp==null){
//     return ;
//   }
//   if(temp.next==null){
//     tail!.next=newNode;
//     tail=newNode;
//     return;
//   }

//   newNode.next=temp.next;
//   temp.next=newNode;
// }
// // search by value

//  searchByValue(int data){
//   Node?temp=head;
//   while(temp!=null){
//     if(temp.data==data){
//       return true;
//     }
//     temp=temp.next;
//   }
//   return false;
// }
// //search by index
// searchByindex(){
  
// }

// }

// void main() {
//   Linkedlist list = Linkedlist();
//   list.addNewData(12);
//   list.addNewData(13);
//   list.addNewData(10);
//   list.addNewData(20);
//   list.display();
//   // list.addToHead(100);
//   // list.deleteHead();
//   // list.deleteLast();
//   // list.deleteGivenNum(10);
//   list.insertToNext(13, 100);
//   bool data =list.searchByValue(5);
//   // list.display();
//   print(data);
// }

// class Node {
//   int? data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;

//   void addData(int data) {
//     Node newData = Node(data);
//     if (head == null) {
//       head = newData;
//     } else {
//       tail!.next = newData;
//     }
//     tail = newData;
//   }

//   void display() {
//     if (head == null) {
//       print('null');
//     } else {
//       Node? temp = head;
//       while (temp != null) {
//         print(temp.data);
//         temp = temp.next;
//       }
//     }
//     print("__________");
//   }

//   void addToHead(int data) {
//     Node newData = Node(data);
//     if (head == null) {
//       head=newData;
//     }else{
//       newData.next=head;
//       head=newData;
//     }
//   }

//   void deleteHead(){
//     if(head == null){
//       print('List is empty');
//     }else{
//       head=head!.next;
//     }
//   }
// }

// void main() {
//   LinkedList list = LinkedList();

//   list.addData(12);
//   list.addData(13);
//   list.addData(98);
//   list.addData(15);
//   list.display();
//   // list.addToHead(100);
//   list.deleteHead();
//   list.display();
// }

class Node{
  int data;
  Node? next;

  Node(this.data);
}

class Linkedlist{
  Node? head;
  Node? tail;

  void dataInsert(int data){
    Node newData =Node(data);
    if(head==null){
      head=newData;
    }else{
      tail!.next=newData;
    }
    tail=newData;
  }
  
  void display(){
    Node? temp=head;
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
    }
  }

  void deleteHead(){
    if(head==null){
      print('No data');
    }else{
      head=head!.next;
    }
  }

  void dataInsertToHead(int data){
    Node newData =Node(data);
    if(head==null){
      return;
    }else{
      newData.next=head;
      head=newData;
    }
  }

  void insertTo(int nextTo,int data){
    Node newData=Node(data);
    Node? temp=head;

    while(temp != null && temp.data != nextTo){
      temp=temp.next;
      }
  if(temp==null){
    return;
  }
  if(temp.next==null){
    tail!.next=newData;
    tail=newData;
    return;
  }
      newData.next=temp.next;
      temp.next=newData;
    }

    void deleteGivenNum(int deleteNum){
      Node? temp=head,prev;
      while(temp !=null && temp.data!=deleteNum){
        prev=temp;
        temp=temp.next;
      }
      if (temp==null){
        return;
      }
      if(temp.next==null){
        tail=prev;
        tail!.next==null;
      }
      prev!.next=temp.next;
    }
   searchByindex(int index){
      Node?temp=head;
      for(int i=0;i<=index;i++){
        if(i==index){
          return temp!.data;      
      }
      temp=temp!.next;
      }
    }

void removeDuplicate(){
  Node? current =head;
  while(current!=null){
    Node? runner=current;
    while(runner!.next != null){
      if(runner.next!.data==current.data){
        runner.next=runner.next!.next;
      }else{
        runner=runner.next;
      }
    } 
    current=current.next;
  }
}

void reverse(){
  Node? current=head,prev;
  while(current!=null){
    Node?temp=current.next;
    current.next=prev;
    prev=current;
    current=temp;
  }
  head=prev;
}
middleElement(){
  Node?slowPoninter=head;
  Node?fastPoninter=head;

  while(fastPoninter != null && fastPoninter.next != null){
    slowPoninter=slowPoninter!.next;
    fastPoninter=fastPoninter.next!.next;
  }
  return slowPoninter;
}



}

void main(){
  Linkedlist list=Linkedlist();
  list.dataInsert(12);
  list.dataInsert(13);
  list.dataInsert(14);
  list.dataInsert(15);
  list.dataInsert(16);
  list.dataInsert(17);
  list.dataInsert(18);
  // list.dataInsert(19);
  list.display();
  print('-------------');
  // list.removeDuplicate();
  // list.reverse();
  // var nums=list.middleElement();
  // print(nums.data);
  // list.display();
}