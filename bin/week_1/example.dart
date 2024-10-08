// class Node{
//   int data;
//   Node?next;
//   Node(this.data);
// }

// class LinkedList{
// Node?head;
// Node?tail;

// void dataAdd(int data){
//   Node newNode=Node(data);
//   if(head==null){
//     head=newNode;
//   }else{
//     tail!.next=newNode;
//   }
//   tail=newNode;
// }

// void display(){
// if(head==null){
//   print('no Data');
// }else{
//   Node? temp=head;
//   while(temp != null){
//     print(temp.data);
//     temp=temp.next;
//   }
// }
// }

// void findMidAndDelete(){
//   Node? fastpointer=head;
//   Node? slowPointer=head;

//   Node?prev;
//   while(fastpointer!=null&&fastpointer.next!=null){
//     fastpointer=fastpointer.next!.next;
//     prev=slowPointer;
//     slowPointer=slowPointer!.next;
//   }
//   prev!.next=slowPointer!.next;
// }
// }

// void main(){
//   LinkedList list=LinkedList();
//   list.dataAdd(12);
//   list.dataAdd(13);
//   list.dataAdd(14);
//   list.dataAdd(15);
//   list.dataAdd(16);
//   list.findMidAndDelete();
//   list.display();
// }

// isSort(List<int>arr){
//   bool sort;

//   do{
//     sort=false;
//     for(int i=0;i<arr.length-1;i++){
//       if(arr[i]>arr[i+1]){
//         int temp=arr[i];
//         arr[i]=arr[i+1];
//         arr[i+1]=temp;
//         sort=true;
//       }
//     }

//   }while(sort);
// return arr;
// }

// insertSort(List<int>arr){
// for(int i=1;i<arr.length;i++){
//   int temp=arr[i];
//   int j=i-1;
//   while(j>=0 && arr[j]>temp){
//     arr[j+1]=arr[j];
//     j=j-1;
//   }
//   arr[j+1]=temp;
// }
// return arr;
// }
// void main(){
//   List<int>arr=[8,20,-2,4,-6];

//   // print(isSort(arr));
//   print(insertSort(arr));
// }

// isInsertionSort(List<int>arr){
//   for(int i=1;i<arr.length;i++){
//     int temp=arr[i];
//     int j=i-1;
//     while(j >= 0 && arr[j]>temp){
//       arr[j+1]=arr[j];
//       j=j-1;
//     }
//     arr[j+1]=temp;
//   }
//   return arr;
// }

// void main(){
//   List<int>arr=[8,20,-2,4,-6];

//   print(isInsertionSort(arr));
// }

// isInsertSort(List<int>arr){
//   for(int i=0;i<arr.length;i++){
//     int temp=arr[i];
//     int j=i-1;
//     while(j>=0 && arr[j]>temp){
//       arr[j+1]=arr[j];
//       j=j-1;
//     }
//     arr[j+1]=temp;
//   }
//  return arr;
// }
// void main(){
//   List<int>arr=[8,20,-2,4,-6];

//   print(isInsertSort(arr));
// }

// isBubbleSort(List<int>arr){
//   bool sort;
//  do {
//   sort =false;
//     for(int i=0;i<arr.length-1;i++){
//     if(arr[i]>arr[i+1]){
//       sort=true;
//       int temp=arr[i];
//       arr[i]=arr[i+1];
//       arr[i+1]=temp;
//     }
//   }
//  } while (sort);

//   return arr;
// }

// void main(){
//   List<int>arr=[3,5,1,4,2,6];
//   print(isBubbleSort(arr));
// }

// isInsertionSort(List<int>arr){
//   for(int i=1;i<arr.length;i++){
//     int temp=arr[i];
//     int j=i-1;
//     while(j >= 0 && arr[j]>temp){
//       arr[j+1]=arr[j];
//       j=j-1;
//     }
//     arr[j+1]=temp;
//   }
//   return arr;
// }

// isInsertionSort(List<int>arr){
//   for(int i=1;i<arr.length;i++){
//     int temp=arr[i];
//     int j=i-1;
//     while(j>=0&&arr[j]>temp){
//         arr[j+1]=arr[j];
//         j=j-1;
//     }
//     arr[j+1]=temp;
//   }
//   return arr;
// }

// void main(){
//   List<int>arr=[3,5,1,4,2,6];
//   print(isInsertionSort(arr));
// }

// isSortString(List<String >word){
//   if(word.length<2){
//     return word;
//   }
//   String pivot=word[word.length-1];
//   List<String>left=[];
//   List<String>right=[];
//   for(int i=0;i<word.length-1;i++){
//     if(word[i].compareTo(pivot)<0){
//       left.add(word[i]);
//     }else{
//       right.add(word[i]);
//     }
//   }
//   return [...isSortString(left),pivot,...right];
// }

// void main(){
//   List<String> array = ['banana', 'apple', 'orange', 'grape', 'kiwi'];
//   print(isSortString(array));
//   print('hbnhb');
// }

// isBubbleSort(List<int>arr){
//   bool sort;
//   do{
//     sort = false;
//     for(int i=0;i<arr.length-1;i++){
//       if(arr[i]>arr[i+1]){
//        sort=true;
//        int temp=arr[i];
//        arr[i]=arr[i+1];
//        arr[i+1]=temp;
//       }
//     }
//   }while(sort);
// return arr;
// }
// isInsertionSort(List<int>arr){
//   for(int i=1;i<arr.length;i++){
//     int temp=arr[i];
//     int j=i-1;
//     while(j >= 0 && arr[j]>temp){
//       arr[j+1]=arr[j];
//       j=j-1;
//     }
//     arr[j+1]=temp;
//   }
//   return arr;
// }
// isInsertionSort(List<int>arr){
// for(int i=1;i<arr.length;i++){
//  int temp=arr[i];
//  int j=i-1;
//  while(j>=0 && arr[j]>temp){
//     arr[j+1]=arr[j];
//     j=j-1;
//  }
//  arr[j+1]=temp;
// }
// return arr;
// }

// void main(){
//   List<int>arr=[3,5,1,4,2,6];
//   print(isQuickSort(arr));
// }

// isQuickSort(List<int>arr){
// if(arr.length<2){
//   return arr;
// }
// int pivot=arr[arr.length-1];
// List<int>left=[];
// List<int>right=[];
// for(int i=0;i<arr.length-1;i++){
// if(arr[i]<pivot){
//   left.add(arr[i]);
// }else{
//   right.add(arr[i]);
// }
// }
// return [...isQuickSort(left),pivot,...isQuickSort(right)];
// }

// class Stack{
//   List<String>stack=[];

//   void push(String data){
//     stack.add(data);
//   }

//   pop(){
//     if(stack.isEmpty){
//       print('no data');
//     }
//    return stack.removeLast();
//   }

//   void display(){
//     for(int i=stack.length-1;i>=0;i--){
//       print(stack[i]);
//     }
//   }

//  void removeMid(){
//     int mid=stack.length~/2;
//     List<String>temp=[];
//     int count=0;
//     while(stack.isNotEmpty){
//       String current=pop();
//       if(count!=mid){
//         temp.add(current);
//       }
//       count++;
//     }
//     while(temp.isNotEmpty){
//       push(temp.removeLast());
//     }
//   }

//   void reverse(){
//     List<String>temp=[];
//     while(stack.isNotEmpty){
//       temp.add(pop());
//     }
//     stack=temp;
//   }
// }

// void main(){
//   Stack st=Stack();
//   String word='hello';
//   for(int i=0;i<word.length;i++){
//     st.push(word[i]);
//   }
//   st.reverse();
//   st.display();
// }

// isBubbleSort(List<int> arr) {
//   bool sort;
//   do {
//     sort = false;
//     for (int i = 0; i < arr.length-1; i++) {
//       if (arr[i] > arr[i + 1]) {
//         int temp = arr[i];
//         arr[i] = arr[i + 1];
//         arr[i + 1] = temp;
//         sort = true;
//       }
//     }
//   } while (sort);

//   return arr;
// }

// void main(){
//   List<int>arr=[4,5,3,8,1,2,];
//   print(isBubbleSort(arr));
// }

// isselectionSort(List<int>arr){
// for(int i=0;i<arr.length-1;i++){
//   int min=i;
//   for(int j=i+1;j<arr.length;j++){
//     if(arr[j]<arr[min]){
//       min=j;
//     }
//   }
//   int temp=arr[i];
//   arr[i]=arr[min];
//   arr[min]=temp;
// }
// return arr;
// }

// isSelectionSort(List<int>arr){
//   for(int i=0;i<arr.length-1;i++){
//     int iMin=i;
//     for(int j=i+1;j<arr.length;j++){
//       if(arr[j]<arr[iMin]){
//         iMin=j;
//       }
//     }
//     int temp=arr[i];
//         arr[i]=arr[iMin];
//         arr[iMin]=temp;
//   }
//   return arr;
// }
// void main(){
//   List<int>arr=[6,4,8,2,3,9];
//   print(isselectionSort(arr));
// }

// isInsertionSort(List<int>arr){
// for(int i=1;i<arr.length;i++){
//   int temp=arr[i];
//   int j=i-1;

//   while(j>=0 && arr[j]>temp){
//     arr[j+1]=arr[j];
//     j=j-1;
//   }
//   arr[j+1]=temp;
// }
// return arr;
// }
// void main(){
//   List<int>arr=[8,20,-2,4,-6];

//   print(isInsertionSort(arr));
// }

// isQuickSort(List<int>arr){
//   if(arr.length<2){
//     return arr;
//   }
//   int pivot=arr[arr.length-1];
//   List<int>left=[];
//   List<int>right=[];
//   for(int i=0;i<arr.length-1;i++){
//     if(arr[i]<pivot){
//       left.add(arr[i]);
//     }else{
//       right.add(arr[i]);
//     }
//   }
//   return [...isQuickSort(left),pivot,...isQuickSort(right)];
// }

// void main(){
//   List<int>arr=[8,20,-2,4,-6];

//   print(isQuickSort(arr));
// }

// isMergeSort(List<int>arr){
// if(arr.length<2){
//   return arr;
// }
// int mid=arr.length~/2;
// List<int>leftArr=arr.sublist(0,mid);
// List<int>rightArr=arr.sublist(mid);

// return merge(isMergeSort(leftArr), isMergeSort(rightArr));
// }

// merge(List<int>leftArr,List<int>rightArr){
//   List<int>sortArr=[];
//   while(leftArr.isNotEmpty&&rightArr.isNotEmpty){
//     if(leftArr[0]<rightArr[0]){
//       sortArr.add(leftArr.removeAt(0));
//     }else{
//       sortArr.add(rightArr.removeAt(0));
//     }
//   }
//   return [...sortArr,...leftArr,...rightArr];
// }
// void main(){
//   List<int>arr=[6,3,76,3,7,8,9,1];
//   print(isMergeSort(arr));
// }

// isMergeSort(List<int>arr){
//   if(arr.length<2){
//     return arr;
//   }
//   int mid=arr.length~/2;
//   List<int>leftArr=arr.sublist(0,mid);
//   List<int>rightArr=arr.sublist(mid);

//   return merge(isMergeSort(leftArr), isMergeSort(rightArr));
// }

// merge(List<int>leftArr,List<int>rightArr){
//   List<int>sortArr=[];
//   while(leftArr.isNotEmpty&&rightArr.isNotEmpty){
//     if(leftArr[0]<rightArr[0]){
//       sortArr.add(leftArr.removeAt(0));
//     }else{
//       sortArr.add(rightArr.removeAt(0));
//     }
//   }
//   return [...sortArr,...leftArr,...rightArr];
// }

// import 'dart:collection';

// isQuickSort(List<int>arr){
//   if(arr.length<2){
//     return arr;
//   }
//   int pivot=arr[arr.length-1];
//   List<int>left=[];
//   List<int>right=[];
//   for(int i=0;i<arr.length-1;i++){
//     if(arr[i]<pivot){
//       left.add(arr[i]);
//     }else{
//       right.add(arr[i]);
//     }
//   }
//   return [...isQuickSort(left),pivot,...isQuickSort(right)];
// }

// void main(){
//   List<int>arr=[8,20,-2,4,-6];

//   print(isQuickSort(arr));
// }

// import 'dart:ffi';

// class Stack{
// List<int>stack=[];

// void push(int data){
//   stack.add(data);
// }

// pop(){
//   stack.removeLast();
// }

// void display(){
// for(int i=stack.length-1;i>=0;i++){
//   print(stack[i]);
// }
// }

// midDelete(){
//   int mid=stack.length~/2;
//   List<int>temp=[];
//  int count=0;
//   while (stack.isEmpty) {
//     if(count != mid){
//       temp.add(pop());
//       count++;
//     } 
//   }
//   while(temp.isNotEmpty){
//   stack.add(temp.removeLast());
//   }
// }
// }

// quickSort(List<int>arr){
//   if(arr.length<2){
//     return arr;
//   }
//   int pivot=arr[arr.length-1];
//   List<int>left=[];
//   List<int>right=[];
//   for(int i=0;i<arr.length-1;i++){
//     if(arr[i]<pivot){
//       left.add(arr[i]);
//     }else{
//       right.add(arr[i]);
//     }
//   }
//   return [...quickSort(left),pivot,...quickSort(right)];
// }


// isBubbleSort(List<int>arr){
//   bool sort;
//   do{
//     sort=false;
//     for(int i=0;i<arr.length-1;i++){
//       if(arr[i]>arr[i+1]){
//         sort=true;
//         int temp=arr[i];
//         arr[i]=arr[i+1];
//         arr[i+1]=temp;
//       }
//     }

//   }while(sort);
//   return arr;
// }

// isSelectionSort(List<int>arr){
//   for(int i=0;i<arr.length;i++){
//     int imin=i;
//     for(int j =i+1;j<arr.length;j++){
//       if(arr[j]<arr[imin]){
//         imin=j;
//       }
//     }
//     int temp=arr[i];
//     arr[i]=arr[imin];
//     arr[imin]=temp;
//   }
//   return arr;
// }

// isInsertionSort(List<int>arr){
//   for(int i=1;i<arr.length;i++){
//     int temp=arr[i];
//     int j=i-1;
//     while(j>=0 && arr[j]>temp){
//       arr[j+1]=arr[j];
//       j=j-1;
//     }
//     arr[j+1]=temp;
//   }
//   return arr;
// }

// isQuickSort(List arr){
//   if (arr.length-1<2) return arr;
//   int pivot=arr[0];
//   List left=[];
//   List right=[];

//   for(int i=0;i<arr.length-1;i++){
//     if(arr[i]<pivot){
//       left.add(arr[i]);
//     }else{
//       right.add(arr[i]);
//     }
//   }
//   return [...isQuickSort(left),pivot,...isQuickSort(right)];
// }

// isMargeSort(List arr){
  
// }

// void main(){
//   List<int>arr=[5,2,7,9,5,6,3];
//   // print(quickSort(arr));
//   // print(isBubbleSort(arr));
// //  print(isInsertionSort(arr));
//   // print(isSelectionSort(arr));
//   print(isQuickSort(arr));
// }

isMargeSort(List arr){
if(arr.length<2){
  return arr;

}
int mid =arr.length~/2;
List left=arr.sublist(0,mid);
List right=arr.sublist(mid);

return marge(isMargeSort(left),isMargeSort(right) );
}

marge(List left,List right){
  List sort =[];
  while(left.isNotEmpty&&right.isNotEmpty){
    if(left[0]<right[0]){
      sort.add(left.removeAt(0));
    }else{
      sort.add(right.removeAt(0));
    }
  }
  return [...sort,...left,...right];
}

void main(){
  List arr=[9,5,7,2,9,1];
  print(isMargeSort(arr));
}