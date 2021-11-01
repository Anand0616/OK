import 'package:dart_application_1/binary_seaech_tree.dart';

void main() {
  final tree = BinarySearchTree<int>();
  tree.insert(43);
  tree.insert(10);
  tree.insert(79);
  tree.insert(90);
  tree.insert(12);
  tree.insert(54);
  tree.insert(11);
  tree.insert(9);
  tree.insert(50);
  print(tree.root);

  print(tree.contains(79));
  print(tree.contains(100));
  print(tree.contains(90));

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
}

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
