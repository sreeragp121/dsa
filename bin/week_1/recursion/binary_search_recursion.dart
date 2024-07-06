//binary search using recursion
binarySearch(List<int >arr,int target,int low,int heigh){
if(low>heigh){
  return -1;
}else{
int mid =(low+heigh)~/2;
if(arr[mid]==target){
  return mid;
}else if(arr[mid]<target){
return binarySearch(arr, target, mid+1, heigh);
}else{
  return binarySearch(arr, target, low, mid-1);
}
}
}

void main(){
  List<int>arr=[1,2,3,4,5,6,7,8,9];
  arr.sort();
  int target=6;
  int index=binarySearch(arr, target, 0,arr.length-1);
  if(index!=-1){
    print(index);
  }else{
    print('Number not fount');
  }
}