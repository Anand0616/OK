void selection(List <int> list) {
  int i;
  int j;

  for (i = 0; i < list.length - 1; i++) {
    int jMin = i;
    for (j = i + 1; j < list.length; j++) {
      if (list[j] < list[jMin]) {
        jMin = j;
      }
    }
    if (jMin != i) {
      swap(list, list[i], list[jMin]);
      // swap(list[i], list[jMin]);
    }
  }
}

void swap(List<int> list, int firstIndex, int secondIndex) {
  final save = list[firstIndex];
  list[firstIndex] = list[secondIndex];
  list[secondIndex] = save;
}
