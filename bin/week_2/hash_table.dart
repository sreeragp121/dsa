class Node{
  String key;
  dynamic value;
  Node?next;
  Node (this.key,this.value);
}

class HashTable{
  static const int tableSize=10;
  List<Node?>table=List.filled(tableSize, null);

  int hash(String key){
    int total=0;
    for(int i=0;i<key.length;i++){
      total+=key.codeUnitAt(i);
    }
    return total%tableSize;
  }

  void set(String key,dynamic value){
    int index=hash(key);

    Node? newNode=table[index];

    if(newNode == null){
      table[index]=Node(key, value);
    }else{
      while (newNode?.next!=null){
        newNode=newNode?.next;
      }
      newNode?.next=Node(key, value);
    }
  }

  dynamic get(String key){
    int index =hash(key);
    Node?newNode=table[index];

    while(newNode != null){
      if(newNode.key ==key){
        return newNode.value;
      }
      newNode=newNode.next;
    }
    return null;
  }

  void remove(String key){
    int index=hash(key);

    Node?current=table[index];
    Node?prev;
    while(current != null){
      if(current.key == key){
        if(prev == null){
          table[index]=current.next;
        }else{
          prev.next=current.next;
        }
        break;
      }
      prev =current;
      current=current.next;
    }
  }

  void display(){
    for(int i=0;i<table.length;i++){
      Node?newNode=table[i];
      if(newNode != null){
        print('index $i');
      }
      while(newNode != null){
        print('${newNode.key}:${newNode.value}');
        newNode=newNode.next;
      }
    }
  }
}

void main(){
  HashTable hs=HashTable();
  hs.set('name', 'Sreerag');
  hs.set('age', '26');

  hs.set('mane', 'adarsh');
  hs.set('ag','27');

  hs.set('xam', 'value');
  hs.remove('mane');
  hs.display();
}