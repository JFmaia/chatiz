import 'package:common/common.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:test/test.dart';

void main() {
  test(
    'from json to json',
    () {
      final json = {
        'name': 'Emilly',
        'room': 'sala 1',
        'text': '',
        'type': 'SocketEventType.enter_room',
      };

      final event = SocketEvent.fromJson(json);

      expect(event.name, 'Maria');
      expect(event.type, SocketEventType.enter_room);
      expect(event.toJson(), json);
    },
  );
}
