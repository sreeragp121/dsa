// import 'dart:js_interop';

// isQuickSort(List<int>arr){
//   if(arr.length<2){
//     return arr;
//   }
//   int pivot=arr[arr.length-1];
//   List<int>left=[];
//   List<int>right=[];

//   for(int i=0;i<arr.length;i++){
//     if(arr[i]<arr[pivot]){
//       left.add(arr[i]);
//     }else{
//       right.add(arr[i]);
//     }
//   }
//   return [...isQuickSort(left),pivot,...isQuickSort(right)];
// }

// void main(){
//   List<int>arr=[];
//   print(isQuickSort(arr));
// }


// class Node{
//   int data;
//   Node?next;
//   Node(this.data);
// }

// class Stack{
//   Node ? top;

//   void push(int data){
//     Node newNode=Node(data);
//     if(top==null){
//       top=newNode;
//     }else{
//       newNode.next=top;
//       top=newNode;
//     }
//   }
//   pop(){
//     top=top!.next;
//   }
//   display(){
//     Node? current=top;
//     while(current!=null){
//       print(current.data);
//       current=current.next;
//     }
//   }

//   reverse(){
//     Node?curent=top;
//     List<int>temp=[];
//     while(curent!=null){
//       temp.add(curent.data);
//       curent=curent.next;
//       pop();
//     }
//     for(int i=0;i<temp.length;i++
//     ){
//       push(temp[i]);
//     }
//   }
// }

// void main(){
//   Stack st=Stack();
//   st.push(10);
//   st.push(9);
//   st.push(8);
//   st.push(7);
//   st.push(6);
//   st.reverse();
//   st.display();
// }

void main(){
  String word='malayalam';
  bool result=true;
  for(int i=0;i<word.length/2;i++){
    if(word[i]!=word[(word.length-1)-i])
    {
      result=false;
    }
  }
  if(result){
    print('true');
  }else{
    print('false');
  }
}