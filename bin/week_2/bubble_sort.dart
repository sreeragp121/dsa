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


