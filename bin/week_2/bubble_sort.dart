// BubbleSort first type
isBubbleSort(List<int>arr){
  bool sort;
do{
sort=false;
for(int i=0;i<arr.length-1;i++){
if(arr[i]>arr[i+1]){
  int temp=arr[i];
  arr[i]=arr[i+1];
  arr[i+1]=temp;
  sort=true;
}
}
}while(sort);
return arr;
}

void main(){
  List<int>arr=[6,5,4,9,3,7,8,];

  print(isBubbleSort(arr));
}


// isQuickSort(List<int>arr){
//   if(arr.length<2){
//     return arr;
//   }
// int pivot=arr[arr.length-1];
// List<int>left=[];
// List<int>right=[];
// for(int i=0;i<arr.length-1;i++){
//   if(arr[i]>pivot){
//     left.add(arr[i]);
//   }
//   else{
//     right.add(arr[i]);
//   }
// }
// return [...isQuickSort(left),pivot,...isQuickSort(right)];
// }

// void main(){
//   List<int>arr=[1,4,6,9,4,89];
//   print(isQuickSort(arr));
// }

// class Queue{
// List<int>queueBox=[];
// List<int>stack=[];

// void enqueue(int data){
//   queueBox.add(data);
// }

// dequeue(){
//   while(queueBox.isNotEmpty){
//  stack.add(queueBox.removeAt(0));
//   }
//   while(stack.isNotEmpty){
//     queueBox.add(stack.removeLast());
//   } 
// }

// void display(){
//   for(int i=0;i<queueBox.length;i++){
//     print(queueBox[i]);
//   }
// }
// }

// void main(){
//   Queue qu=Queue();

//   qu.enqueue(13);
//   qu.enqueue(14);
//   qu.enqueue(15);
//   qu.dequeue();
//   qu.display();
// }

// class Stack{
// List<String>stack=[];

// void push(String data){
//   stack.add(data);
// }

//  pop(){
//   if(stack.isEmpty){
//     print('stack is empty');
//   }
//   else{
//     stack.removeLast();
//   }
// }

// reverse(){
//   List<String>temp=[];
//   for(int i=stack.length-1;i>=0;i--){
//     temp.add(pop());
//   }
//   stack=temp;
// }
// void display(){
//   for(int i=stack.length-1;i>=0;i--){
//     print(stack[i]);
//   }
// }
// }

// void main(){
//   Stack st=Stack();
// String word='sreerag';
// for(int i=0;i<word.length;i++){
//   st.push(word[i]);
// }
// st.display();
// st.reverse();
// }

