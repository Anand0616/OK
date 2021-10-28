import 'package:dart_application_1/binary_tree.dart';

class BinarySearchTree<E extends Comparable> {
  BinaryTreeNode<E>? root;

  void insert(E value) {
    root = _insertAt(root, value) as BinaryTreeNode<E>?;
  }

  BinaryTreeNode _insertAt(BinaryTreeNode? node, E value) {
    if (node == null) {
      return BinaryTreeNode<E>(value);
    }

    if (value.compareTo(node.value) >= 0) {
      node.rightChild = _insertAt(node.rightChild, value);
    } else {
      node.leftChild = _insertAt(node.leftChild, value);
    }

    return node;
  }

  @override
  String toString() => root.toString();
}
