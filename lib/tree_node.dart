class TreeNode<T> {
  TreeNode(this.value);
  T value;
  List<TreeNode<T>> children = [];

  TreeNode? get right => null;

  TreeNode? get left => null;

  void addChild(TreeNode<T> child) {
    children.add(child);
  }

  void traverseTree() {
    print(value);
    for (final child in children) {
      child.traverseTree(); //recurrsion is a method calling itself
    }
  }
}
