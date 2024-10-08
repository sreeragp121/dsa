import 'dart:ffi';

class TrieNode{
  Map<String,TrieNode>children={};
  bool isEndOfWord=false;
}

class Trie1 {
  TrieNode root=TrieNode();

  insert(String word){
    TrieNode current=root;

    for(int i=0;i<word.length;i++){
      String char=word[i];
      if(!current.children.containsKey(char)){
        current.children[char]=TrieNode();
      }
      current=current.children[char]!;
    }
    current.isEndOfWord=true;
  }

  search(String word){
    TrieNode current=root;

    for(int i=0;i<word.length;i++){
      String char=word[i];

      if(!current.children.containsKey(char)){
        return false;
      }
      current=current.children[char]!;
    }
    return current.isEndOfWord;
  }

 List<String> autoSuggest(prefix){
    TrieNode current=root;
    for(int i=0;i<prefix.length;i++){
      String char=prefix[i];
      if(!current.children.containsKey(char)){
        return [];
      }
      current=current.children[char]!;
    }

    List<String>suggestion=[];
    _collectWords(current,prefix,suggestion);

    return suggestion;

  }

  _collectWords(TrieNode node,String prefix,List<String>result){
    if(node.isEndOfWord){
      result.add(prefix);
    }
    node.children.forEach((char,children){
      _collectWords(children, prefix+char, result);
    });
  }
}

void main(){
  Trie1 t=Trie1();

  t.insert('word');
  t.insert('sreerag');
  t.insert('sree');

  print(t.autoSuggest('s'));
}