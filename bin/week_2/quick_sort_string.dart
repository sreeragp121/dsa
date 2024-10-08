quickSort(List arr){
if(arr.length<2){
  return arr;
}
String pivot=arr[arr.length-1];
List left=[];
List right=[];

for(int i=0;i<arr.length-1;i++){
  if(arr[i].compareTo(pivot)<0){
    left.add(arr[i]);
  }else{
    right.add(arr[i]);
  }
}
return [...quickSort(left),pivot,...quickSort(right)];
}

void main(){
  List arr=['orange','apple','banana'];
  print(quickSort(arr));
}