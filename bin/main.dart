import 'package:dart_application_1/binary_seaech_tree.dart';
import 'package:dart_application_1/mergeSort.dart';
import 'package:dart_application_1/queue.dart';
import 'package:dart_application_1/tree_node.dart';
import 'package:dart_application_1/heap.dart';
import 'package:dart_application_1/heap_sort.dart';
import 'package:dart_application_1/graph.dart';

void main() {
  final graph = Graph();

  final a = graph.createVertex('A');
  final b = graph.createVertex('B');
  final c = graph.createVertex('C');
  final d = graph.createVertex('D');
  final e = graph.createVertex('E');
  final f = graph.createVertex('F');
  final g = graph.createVertex('G');
  final h = graph.createVertex('H');
  final i = graph.createVertex('I');
  final j = graph.createVertex('J');

  graph.addEdge(a, i, 1);
  graph.addEdge(a, h, 1);
  graph.addEdge(a, g, 1);
  graph.addEdge(a, f, 1);
  graph.addEdge(a, b, 1);
  graph.addEdge(a, c, 1);
  graph.addEdge(i, j, 1);
  graph.addEdge(i, d, 1);
  graph.addEdge(b, e, 1);

  print(graph);
}


// void main() {
//   final list = [12, 7, 15, 9, 1, 3];
//   final sorted = heapSort(list);
//   print(sorted);
// }

// void main() {
//   // 3 1 3 3 8 10 6 2
//   final list = [4, 3, 1, 4, 8, 2, 5];
//   print(list);
//   final sorted = mergeSort(list);
//   print(sorted);
// }

// void main() {
//   final queue = PriorityQueue(isMin: true);
//   queue.enqueue(5);
//   queue.enqueue(10);
//   queue.enqueue(3);
//   print(queue.dequeue());
// }


// // final list = [10, 5, 7, 2, 1];
  // final heap = Heap();
  // heap.insert(10);
  // heap.insert(5);
  // heap.insert(7);
  // heap.insert(2);
  // // heap.insert(1);
  // // heap.insert(3);
  // // heap.removeRoot();
  // print(heap);

// final tree = BinarySearchTree<int>();
// tree.insert(43);
// tree.insert(10);
// tree.insert(79);
// tree.insert(90);
// tree.insert(12);
// tree.insert(54);
// tree.insert(11);
// tree.insert(9);
// tree.insert(50);
// print(tree.root);

// print(tree.contains(79));
// print(tree.contains(100));
// print(tree.contains(90));

// final tree = BinaryTreeNode('A',
//     leftChild: BinaryTreeNode('D'),
//     rightChild: BinaryTreeNode(
//       'R',
//       leftChild: BinaryTreeNode('T'),
//       rightChild: BinaryTreeNode('FUN'),
//     ));
// print(tree);
// tree.traverseInOrder((value) => print(value));
// tree.traversePreOrder((value) => print(value));
// tree.traversePostOrder((value) => print(value));

// tree.checkIsInTree('D');
// tree.checkIsInTree('S');

// final tree = createTree();
// tree.traverseTree();

// TreeNode<String> createTree<T>() {
//   final drink = TreeNode('drink');
//   final hot = TreeNode('hot');
//   final cold = TreeNode('cold');
//   final coffee = TreeNode('coffee');
//   final tea = TreeNode('tea');
//   final soda = TreeNode('soda');
//   final juice = TreeNode('juice');
//   final cola = TreeNode('cola');
//   final sprite = TreeNode('sprite');
//   final pepsi = TreeNode('pepsi');
//   drink.addChild(hot);
//   drink.addChild(cold);
//   hot.addChild(coffee);
//   hot.addChild(tea);
//   cold.addChild(soda);
//   cold.addChild(juice);
//   soda.addChild(cola);
//   soda.addChild(sprite);
//   soda.addChild(pepsi);

//   return drink;
// }
