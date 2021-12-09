//TODO: create a vertex
//value
class Vertex<T> {
  Vertex(this.value, this.id);

  final T value;
  final int id;

  @override
  String toString() {
    // TODO: implement toString
    return value.toString();
  }
}

//TODO: create an edge
//source vertex
//destination vertex
// weight
class Edge<T> {
  Edge(this.source, this.destination, {this.weight});

  final Vertex<T> source;
  final Vertex<T> destination;
  final double? weight;

  @override
  String toString() {
    // TODO: implement toString
    return ("from $source to $destination").toString();
  }
}

//T ni tsuuhun deer E ni olon ym hiij bn

class Graph<E> {
  Map<Vertex<E>, List<Edge<E>>> _connections = {};

  int _idCounter = 0;

  Vertex<E> createVertex(E value) {
    final vertex = Vertex(value, _idCounter);
    _idCounter++;
    _connections[vertex] = [];
    return vertex;
  }

  void addEdge(Vertex<E> source, Vertex<E> destination, double weight) {
    //TODO create an edge object
    final edge = Edge(source, destination, weight: weight);
    //TODO lookup source in _connections, then add edge to list
    _connections[source]?.add(edge);
  }

  @override
  String toString() {
    //TODO: homework
    return _connections.toString();
  }
}
