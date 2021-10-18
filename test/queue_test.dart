import 'package:test/test.dart';
import 'package:dart_application_1/queue.dart';

void main() {
  group('LinkedList Queue', (){
    test('isEmpty works',(){
     final queue = QueueLinkedList<int>();
     expect(queue(queue.isEmpty, true);
     queue.enqueue(1);
     expect(queue.isEmpty, false);
    });
      test('enqueue woorks', (){
        final queue = QueueLinkedList<int>();
        queue.enqueue(1);
        expect(queue.toString(), '1';
        queue.enqueue(2);
        expect(queue.toString(), '1, 2';
         });
  });
            
  group('List Queue', () {
    test('isEmpty works', () {
      final myQueue = QueueList<int>();
      expect(myQueue.isEmpty, true);
      myQueue.enqueue(1);
      expect(myQueue.isEmpty, false);
    });

    test('dequeue works', () {
      final myQueue = QueueList<int>();
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
