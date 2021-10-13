import 'package:test/test.dart';
import 'package:dart_application_1/queue.dart';

void main() {
  group('List Queue', () {
    test('isEmpty works', () {
      final myQueue = MyQueue<int>();
      expect(myQueue.isEmpty, true);
      myQueue.enqueue(1);
      expect(myQueue.isEmpty, false);
    });

    test('dequeue works', () {
      final myQueue = MyQueue<int>();
      myQueue.enqueue(1);
      expect(myQueue.toString(), '[1]');
      myQueue.dequeue();
      expect(myQueue.toString(), '[]');

      var value = myQueue.dequeue();
      expect(value, null);
      expect(myQueue.toString(), '[]');
    });
  });
}
