import 'package:test/test.dart';
import 'package:schemata_dart/schemata.dart';

void main() {
  test('get kind1Schema returns non-null', () {
    final schema = Schemata.get('kind1Schema');
    expect(schema, isNotNull);
  });

  test('get noteSchema returns valid schema', () {
    final schema = Schemata.get('noteSchema');
    expect(schema, isNotNull);
  });

  test('get nonexistent returns null', () {
    expect(Schemata.get('nonexistent'), isNull);
  });

  test('keys returns >100 entries', () {
    expect(Schemata.keys().length, greaterThan(100));
  });
}
