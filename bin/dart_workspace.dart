//  // -----fint which numbers sum is target-----
 
//  sum(List<int>nums,int target){
//   Set<int>numb={};
//   for(int i=0;i<nums.length;i++){
//     int num=nums[i];
//     int match=target-num;
//     if(nums.contains(match)){
//       return [num,match];
//     }else{
//       numb.add(num);
//     }
//   }
// }

// void main(){
//  List<int>nums=[6,5,7,9,4,0,2];
//  int target=10;
//   List<int>result=sum(nums, target);
//   print(result);
// }

// sum(List<int>arr,int target){
// Set<int>numb={};
// for(int i=0;i<arr.length;i++){
// int num=arr[i];
// int match=target-num;
// if(arr.contains(match)){
//   return [num,match];
// }else{
//   numb.add(num);
// }
// }
// }

// void main(){
//   List<int>arr=[3,4,5,2,5,6,7];
//   int target=10;
//   List<int>result=sum(arr, target);
//   print(result);
// }

binarySearch(List<int>arr,int target){
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
  return-1;
}

void main(){
  List<int>arr=[1,2,3,4,5,6,7,8,9];
  arr.sort();
  int target=7;
  int index=binarySearch(arr, target);
  if(index!=-1){
    print(index);
  }else{
    print('no data found');
  }
}