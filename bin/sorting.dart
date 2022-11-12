main() {
  List<int> array = [1, 3, 6, 81, 12, 4, 100, 6, 9];
  List<int> sortedarray = bubbleSort(array);
  print(sortedarray);
}

bubbleSort(List<int> array) {
  int lengthOfArray = array.length;
  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return (array);
}

insertionSort(List<int> array) {
  for (int j = 1; j < array.length; j++) {
    int current = array[j];

    int i = j - 1;

    while (i >= 0 && array[i] > current) {
      array[i + 1] = array[i];
      i = i - 1;
      array[i + 1] = current;
    }
  }
  return array;
}

List<int> selectionSort(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    int min = i;
    for (int j = i + 1; j < array.length; j++) {
      if (array[j] < array[i]) {
        min = j;
        int key = array[i];
        array[i] = array[min];
        array[min] = key;
      }
    }
  }
  return array;
}
