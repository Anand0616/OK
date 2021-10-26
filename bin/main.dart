import 'package:dart_application_1/binary_tree.dart';

void main() {
  final tree = BinaryTreeNode('A',
      leftChild: BinaryTreeNode('D'),
      rightChild: BinaryTreeNode(
        'R',
        leftChild: BinaryTreeNode('T'),
        rightChild: BinaryTreeNode('FUN'),
      ));
  print(tree);
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
