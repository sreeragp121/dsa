// isQuickSort(List<int>arr){
//   if(arr.length<2){
//     return arr;
//   }
//   int pivot=arr[arr.length-1];
//  List<int>left=[];
//  List<int>right=[];
//  for(int i=0;i<arr.length-1;i++){
//   if(arr[i]<pivot){
//     left.add(arr[i]);
//   }else{
//     right.add(arr[i]);
//   }
//  }
//  return [...isQuickSort(left),pivot,...isQuickSort(right)];

// }

// void main(){
//   List<int>arr=[3,5,1,4,2,6];
//   print(isQuickSort(arr));
// }

isQuickSort(List<int>arr){
  if(arr.length<2){
    return arr;
  }
int pivot=arr[arr.length-1];
List<int>left=[];
List<int>right=[];

for(int i=0;i<arr.length-1;i++){
  if(arr[i]<pivot){
    left.add(arr[i]);
  }else{
    right.add(arr[i]);
  }
}
return [...isQuickSort(left),pivot,...isQuickSort(right)];
}
void main(){
  List<int>arr=[3,5,1,4,2,6];
  print(isQuickSort(arr));
}