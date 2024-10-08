class Graph{
Map<int,List<int>>adjList={};

addVertex(vertex){
  if(!adjList.containsKey(vertex)){
    adjList[vertex]=[];
  }
}

addEdges(vertex1,vertex2){
  addVertex(vertex1);
  addVertex(vertex2);

  adjList[vertex1]!.add(vertex2);
  adjList[vertex2]!.add(vertex1);
}

dfs(startVertex,Set<int>visited){
  if(!visited.contains(startVertex)){
    print(startVertex);
    visited.add(startVertex);

    for(int vertex in adjList[startVertex]??[]){
      dfs(vertex, visited);
    }
  }
}

display(){
  adjList.forEach((vertex,edges){
    print('$vertex:$edges');
  });
}
}

void main(){
  Graph g=Graph();

  g.addEdges(1,2);
  g.addEdges(1,3);
  g.addEdges(3,4);
  g.display();
  g.dfs(1,{});

}