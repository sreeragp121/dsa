//-----summation of n numbers -----
// int summation(int num){
// if (num==0){
//   return 0;
// }
// return num+summation(num-1);
// }

// void main(){
//   int num=5;
//   int result=summation(num);
//   print(result);
// }

// ----factorial----
// int factorial(int num){
//   if(num<=1){
//     return 1;
//   }
//   return num*factorial(num-1);
// }

// void main(){
//   int num=5;
//   int result=factorial(num);
//   print(result);
// }

// binarysearch(List<int> arr, int target) {
//   int low = 0;
//   int heigh = arr.length - 1;

//   while (low <= heigh) {
//     int mid = (low + heigh) ~/ 2;
//     if (arr[mid] == target) {
//       return mid;
//     } else if (arr[mid] < target){
//       low = mid + 1;
//   }
//     else{
//         heigh = mid - 1;
//     }
//   }
//   return -1;
// }

// void main(){
//   List<int>arr=[1,2,3,4,5,6,7];
//   int target=2;
//   arr.sort();
//   int result =binarysearch(arr, target);
//   if(result!=-1){
//     print(result);
//   }else{
//     print('no data fount ');
//   }
// }
// -- prime number or not---//
// primeNumber(int num, [int i = 2]) {
//   if(num==1)return false;
//   if (num == i) {
//     return true;
//   } else if (num % i == 0) {
//     return false;
//   } else {
//     return primeNumber(num, i + 1);
//   }
// }

// void main() {
//   int num = 1;
//   if (primeNumber(num)) {
//     print('it is prime number');
//   } else {
//     print('it is not prime number');
//   }
// }
//----binary search using recusion----
// binarysearch(List<int>arr,int target,int low,int heigh){
//   if(low>heigh){
//     return -1;
//   }
// int mid=(low+heigh)~/2;
// if(arr[mid]==target){
// return mid;
// }else if(arr[mid]<target){
//   return binarysearch(arr, target, mid+1, heigh);
// }else{
//   return binarysearch(arr, target, low, mid-1);
// }
// }

// void main(){
//   List<int>arr=[1,2,3,4,5,6,7,8,9];
//   int target=10;
//   arr.sort();
//   int index=binarysearch(arr,target,0, arr.length-1);
// if(index!=-1){
//   print(index);
// }else{
//   print('Number not found');
// }
// }
// String reverseString(String str) {
//   // Base case: if the string is empty or has a single character, return it as is
//   if (str.isEmpty || str.length == 1) {
//     return str;
//   }

//   // Recursive case: take the last character and concatenate it with the reversed substring
//   return str[str.length - 1] + reverseString(str.substring(0, str.length - 1));
// }

// void main() {
//   String str = "hello";
//   String reversedStr = reverseString(str);
//   print(str.substring(0, 1));
//   // print("Original string: $str");
//   // print("Reversed string: $reversedStr");
// }

// binarysearch(List<int>arr,int target){
//   int low=0;
//   int heigh=arr.length-1;

//   while(low<=heigh){
//     int mid =(low+heigh)~/2;

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
//   List<int>arr=[1,2,3,4,5,6,7];
//   int target=8;
//   int index=binarysearch(arr, target);
//   if(index!=-1){
//     print(index);
//   }else{
//     print('item not fount');
//   }
// }

// binarysearch(List<int>arr,int target,int low,int heigh){
//   if(low>=heigh){
//     return -1;
//   }
//   int mid =(low+heigh)~/2;
//   if(arr[mid]==target){
//     return mid;
//   }else if(arr[mid]<target){
//     return binarysearch(arr, target,mid+1 , heigh);
//   }else{
//     return binarysearch(arr, target, low,mid-1);
//   }
// }

// void main(){
//   List<int>arr=[1,2,3,4,5,6,7,8];
//   arr.sort();
//   int target=4;
//   int index=binarysearch(arr, target, 0, arr.length-1);
//   if(index!=-1){
//     print(index);
//   }else{
//     print('target not foun');
//   }
// }

// reverseString(String word){
//   if(word.length==1){
//     return word;
//   }
//  return word[word.length-1]+reverseString(word.substring(0,word.length-1));
// }

// void main(){
//   String word='hello';
//   print(reverseString(word));
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
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail!.next = newNode;
//     }
//     tail = newNode;
//   }

//   void display() {
//     if (head == null) {
//       print('No data');
//     } else {
//       Node? temp = head;
//       while (temp != null) {
//         print(temp.data);
//         temp = temp.next;
//       }
//     }
//   }

//   //delete given number
//   void deleteGivenNum(int deleteNum) {
//     Node? temp = head, prev;
//     while (temp != null && temp.data != deleteNum) {
//       prev = temp;
//       temp = temp.next;
//     }
//     if (temp == null) {
//       return;
//     }
//     if (temp.next == null) {
//       tail = prev;
//       tail!.next == null;
//     }
//     prev!.next = temp.next;
//   }

// //revers
//   void reverse() {
//     Node? current = head, prev;
//     while (current != null) {
//       Node? temp = current.next;
//       current.next = prev;
//       prev = current;
//       current = temp;
//     }
//     head = prev;
//   }
// }

// void main() {
//   List<int> arr = [13, 25, 26, 85, 34, 2];
//   LinkedList list = LinkedList();
//   for (int i = 0; i < arr.length; i++) {
//     list.addData(arr[i]);
//   }
//   list.reverse();
//   list.display();
// }

//find the last word length in a sentence 
// int lastWordLength(String sentence) {
//   int i = sentence.length - 1;

//   while (i >= 0 && sentence[i] == ' ') {
//     i--;
//   }

//   int k = 0;
//   while (i >= 0 && sentence[i] != ' ') {
//     k++;
//     i--;
//   }
//   return k;
// }
// void main(){
//   String sentence='find the last word length in a sentence ';
//  print(lastWordLength(sentence));
// }
//Count the vowels in this sentence
// int vowelsCount(String sentence){
//   String lowecase=sentence.toLowerCase();
// Set<String>vowels={'a','e','i','o','u'};
// int count=0;
//  for(int i=0;i<lowecase.length;i++){
//   if(vowels.contains(sentence[i])){
//     count++;
//   }
//  }
// return count;
// }

// void main(){
//   String sentence='Count the vowels in this sentence';
//  print(vowelsCount(sentence));
// }
// // Linear Search
// int linearSearch(List<int>arr,int target){
//   for(int i=0;i<arr.length;i++){
//     if(arr[i]==target){
//       return i+1;
//     }
//   }
//   return-1;
// }
//Binary Search
int binarysearch(List<int>arr,int target){
int low=0;
int heigh=arr.length-1;
while(low<=heigh){
int mid =(low+heigh)~/2;
if(arr[mid]==target){
  return mid;
}else if(arr[mid]<target){
  low=mid+1;
}else{
  heigh=mid-1;
}
}
return -1;
}
void main(){
  List<int>arr=[1,2,3,4,5,6,7,8];
  arr.sort();
  int index=binarysearch(arr, 5);
  if(index!=-1){
    print(index);
  }else{
    print('data not found');
  }
}