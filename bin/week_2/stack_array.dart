class StackArray{
  List<int>stack=[];


void push(int element){
  stack.add(element);
}

 pop(){
  if(stack.isEmpty){
    print('empty stack');
  }
  return stack.removeLast();
}

peek(){
  if(stack.isEmpty){
    print('empty stack');
  }
  print(stack.last) ;
}

bool isEmpty(){
 return stack.isEmpty;
}

void reverse(){
  stack=stack.reversed.toList();
}

void display(){
  if(stack.isEmpty){
    print('stack Empty');
  }
  for(int i=stack.length-1;i>=0;i--){
    print(stack[i]);
  }

}
void midRemove(){
  int mid=stack.length~/2;
  List<int>temp=[];
  int count=0;
  while(stack.isNotEmpty){
    int current=pop();
    if(count != mid){
      temp.add(current);
      count++;
    }
  }
  while(temp.isNotEmpty){
    push(temp.removeLast());
  }
}

void reverseStack(){
  List<int>temp=[];
  while(stack.isNotEmpty){
    temp.add(pop());
  }
  stack=temp;
}

}

void main(){
StackArray st=StackArray();
st.push(8);
st.push(3);
st.push(4);
// st.pop();
// st.peek();
st.midRemove();
st.reverse(); 
st.display();
}