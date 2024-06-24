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
// primeNumber(int num,[int i=2]){
// if(num==i){
//   return true;
// }else if(num%i==0){
//   return false;
// }else{
//   return primeNumber(num,i+1);
// }
// }

// void main(){
//   int num=4;
//   if(primeNumber(num)){
//     print('it is prime number');
//   }else{
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