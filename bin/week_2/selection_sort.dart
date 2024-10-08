isSelectionSort(List<int>arr){
  for(int i=0;i<arr.length-1;i++){
    int iMin=i;
    for(int j=i+1;j<arr.length;j++){
      if(arr[j]<arr[iMin]){
        iMin=j;
      }
    }
    int temp=arr[i];
        arr[i]=arr[iMin];
        arr[iMin]=temp;
  }
  return arr;
}

void main(){
  List<int>arr=[6,4,8,2,3,9];
  print(isSelectionSort(arr));
}

