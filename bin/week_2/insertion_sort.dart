isInsertionSort(List<int>arr){
  for(int i=1;i<arr.length;i++){
    int temp=arr[i];
    int j=i-1;
    while(j >= 0 && arr[j]>temp){
      arr[j+1]=arr[j];
      j=j-1;
    }
    arr[j+1]=temp;
  }
  return arr;
}

void main(){
  List<int>arr=[8,20,-2,4,-6];

  print(isInsertionSort(arr));
}