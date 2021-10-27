class BinaryTreeNode<T> {
  BinaryTreeNode(this.value, {this.leftChild, this.rightChild});
  T value;
  BinaryTreeNode<T>? leftChild;
  BinaryTreeNode<T>? rightChild;

  bool checkIsInTree(T value) {
    var result = false;
    traverseInOrder(currentValue) {
      if (currentValue == value) {
        result = true;
      }
    }

    return result;
  }

  void traverseInOrder(void Function(T value) doSomething) {
    leftChild?.traverseInOrder(doSomething);
    doSomething(value);
    rightChild?.traverseInOrder(doSomething);
  }

  void traversePreOrder(void Function(T value) doSomething) {
    doSomething(value);
    leftChild?.traversePreOrder(doSomething);
    rightChild?.traversePreOrder(doSomething);
  }

  void traversePostOrder(void Function(T value) doSomething) {
    leftChild?.traversePostOrder(doSomething);
    rightChild?.traversePostOrder(doSomething);
    doSomething(value);
  }

  @override
  String toString() {
    final out = StringBuffer();

    final indents = <String>[];
    rightChild?._buildTree(out, true, indents);
    out.writeln(value);
    leftChild?._buildTree(out, false, indents);

    return out.toString();
  }

  void _buildTree(StringBuffer out, bool isRight, List<String> indents) {
    if (rightChild != null) {
      indents.add(isRight ? '     ' : '│    ');
      rightChild!._buildTree(out, true, indents);
      indents.removeLast();
    }

    out
      ..writeAll(indents)
      ..write(isRight ? '┌─── ' : '└─── ')
      ..writeln(value);

    if (leftChild != null) {
      indents.add(isRight ? '│    ' : '     ');
      leftChild!._buildTree(out, false, indents);
      indents.removeLast();
    }
  }
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