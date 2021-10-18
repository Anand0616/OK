class RingBuffer<E> {
  RingBuffer(int lenght) : _list = List.filled(lenght, null, growable: false);
  // [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

  final List<E?> _list;

  int _length = 0;

  int _readIndex = 0;
  int _writeIndex = 0;

  bool get isEmpty => _length == 0;
  bool get isFull => _length == _list.length;

  bool write(E? value) {
    _list[_writeIndex] = value;
    moveWriterIndex();
    return true;
  }

  void moveWriterIndex() {
    if (_writeIndex == _list.length - 1) {
      _writeIndex = 0;
    } else {
      _writeIndex = _writeIndex + 1;
    }
  }

  @override
  String toString() => _list.toString();
}
