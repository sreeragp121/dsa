class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEndofNode = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word) {
    TrieNode current = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!current.children.containsKey(char)) {
        current.children[char] = TrieNode();
      }
      current = current.children[char]!;
    }
    current.isEndofNode = true;
  }

  bool search(String word) {
    TrieNode current = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];

      if (!current.children.containsKey(char)) {
        return false;
      }
      current = current.children[char]!;
    }
    return current.isEndofNode;
  }

  TrieNode? findNode(String prefix) {
    TrieNode current = root;  

    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];
      if (!current.children.containsKey(char)) {
        return null;
      }
      current = current.children[char]!;
    }
    return current;
  }

  void collectWord(TrieNode node, String prefix, List<String> result) {
    if (node.isEndofNode) {
      result.add(prefix);
    }
    node.children.forEach((Char, child) {
      collectWord(child, prefix + Char, result);
    });
  }

  List<String> autocomplete(String prefix) {
    List<String> result = [];
    TrieNode? node = findNode(prefix);
    if (node != null) {
      collectWord(node, prefix, result);
    }
    return result;
  }

 String findLongestCommonPrefix() {
    TrieNode current = root;
    String prefix = '';

    while (current.children.length == 1 && !current.isEndofNode) {
      String nextChar = current.children.keys.first;
      prefix += nextChar;
      current = current.children[nextChar]!;
    }
    return prefix;
  }
}


void main() {
  Trie t = Trie();

  t.insert('cat');
  t.insert('cap');
  // t.insert('bat');
  // t.insert('bot');

  // print(t.autocomplete('c'));
  print(t.findLongestCommonPrefix());

}
