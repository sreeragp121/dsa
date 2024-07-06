
//Prime Number
primenumber(int num,[int i=2]){
  if(num==1) return false;
if(num==i){
  return true;
}else if (num%i==0){
return false;
}else{
  return primenumber(num,i+1);
}
}

void main(){
  int num=5;
  if(primenumber(num)){
    print('it is a prime number');
  }else{
    print('it is not a prime number');
  }
}

