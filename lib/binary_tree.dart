import 'package:dart_application_1/tree_node.dart';

class BinaryTreeNode<T> {
  BinaryTreeNode(this.value, {this.leftChild, this.rightChild});
  T value;
  BinaryTreeNode? leftChild;
  BinaryTreeNode? rightChild;

  @override
  String toString() {
    final out = StringBuffer();
    if (rightChild != null) {
      rightChild!._buildTree(out, true, '');
    }
    out.write(value.toString());
    out.write('\n');
    if (leftChild != null) {
      leftChild!._buildTree(out, false, '');
    }
    return out.toString();
  }

  void _buildTree(StringBuffer out, bool isRight, String indent) {
    if (rightChild != null) {
      rightChild!._buildTree(out, true, indent + (isRight ? '     ' : ' │   '));
    }
    out.write(indent);
    if (isRight) {
      out.write(' ┌───');
    } else {
      out.write(' └───');
    }
    out.write(' ');
    out.write(value.toString());
    out.write('\n');
    if (leftChild != null) {
      leftChild!._buildTree(out, false, indent + (isRight ? ' │   ' : '     '));
    }
  }

  // void printBinaryTree(TreeNode? root, int level) {
  //   if (root == null) return;
  //   printBinaryTree(root.right, level++);
  //   if (level != 0) {
  //     for (int i = 0; i < level - 1; i++) {
  //       print("|\t");
  //     }
  //     print("|-------" + root.value);
  //     print('\n');
  //   } else
  //     print(root.value);
  //   print('\n');
  //   printBinaryTree(root.left, level++);
  // }

  // @override
  // String toString() => printBinaryTree.toString();
}

// public static void printBinaryTree(TreeNode root, int level){
//     if(root==null)
//          return;
//     printBinaryTree(root.right, level+1);
//     if(level!=0){
//         for(int i=0;i<level-1;i++)
//             System.out.print("|\t");
//         System.out.println("|-------"+root.val);
//     }
//     else
//         System.out.println(root.val);
//     printBinaryTree(root.left, level+1);
// }    