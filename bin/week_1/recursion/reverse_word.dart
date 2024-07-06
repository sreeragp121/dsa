// reverse a string
String reverseWord(String word){
if(word.length==1){
  return word;
}
return word[word.length-1]+reverseWord(word.substring(0,word.length-1));
}


void main(){
  String word='hello';
  print(reverseWord(word));
}

