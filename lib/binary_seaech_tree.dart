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

  bool contains(E value) {
    return _containsHelper(root, value);
  }

  bool _containsHelper(BinaryTreeNode? node, E value) {
    // base case
    if (node == null) return false;
    if (node.value == value) {
      return true;
    }

    // recurrsion
    if (value.compareTo(node.value) > 0) {
      return _containsHelper(node.rightChild, value);
    } else {
      return _containsHelper(node.leftChild, value);
    }
    // return _containsHelper(node, value);
  }

  // bool contains(E value) {
  //   var current = root;
  //   while (current != null) {
  //     if (current.value == value) {
  //       return true;
  //     }
  //     if (value.compareTo(current.value) > 0) {
  //       current = current.rightChild;
  //     } else {
  //       current = current.leftChild;
  //     }
  //   }
  //   return false;

  // }

  @override
  String toString() => root.toString();
}
