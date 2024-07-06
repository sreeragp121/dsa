// int binarySearch(List<int> arr,int target){
//  int low =0;
//  int heigh=arr.length-1;
//  while(low<=heigh){
//   int mid=(low+heigh)~/2;
//   if(arr[mid]==target){
//     return mid;
//   }else if(arr[mid]<target){
//     low=mid+1;
//   }else{
//     heigh=mid-1;
//   }
//  }
//  return -1;
// }

// void main(){
//   List<int>arr=[1,2,3,4,5,6,7,8,9];
//   arr.sort();
//   int target=3;
//   int index=binarySearch(arr, target);
//   if(index!=-1){
//     print(index);
//   }else{
//     print('no data');
    
//   }
//   }

// int binarySearch(List<int>arr,int target){

//   int low=0;
//   int heigh=arr.length-1;

//   while(low<=heigh){
//     int mid=(low+heigh)~/2;
//     if(arr[mid]==target){
//       return mid;
//     }else if(arr[mid]<target){
//       low=mid+1;
//     }else{
//       heigh=mid-1;
//     }
//   }
//   return -1;
// }

// void main(){
// List<int>arr=[1,2,3,4,5,6,7,8,9];
// arr.sort();
// int target=4;
// int index=binarySearch(arr, target);

// if(index!=-1){
//   print(index);
// }else{
//   print('no data');
// }
// }


class Node{
  int? data;
  Node?next;

  Node(this.data);
}

class LinkedList{
  Node?head;
  Node?tail;

  void dataAdd(int data){
    Node newNode=Node(data);
    if(head==null){
      head=newNode;
    }else{
      tail!.next=newNode;
    }
    tail=newNode;
  }

  void display(){
    Node? temp=head;

    while(temp!=null){
      print(temp.data);
      temp=temp.next;
    }
  }

  void reverse(){
    Node?current=head,prev;
    while(current!=null){
      Node?temp=current.next;
      current.next=prev;
      prev=current;
      current=temp;
    }
  head=prev;
  }
}

void main(){
  LinkedList list=LinkedList();

  list.dataAdd(12);
  list.dataAdd(13);
  list.dataAdd(14);
  list.dataAdd(15);
  list.dataAdd(16);
  list.reverse();
  list.display();
}