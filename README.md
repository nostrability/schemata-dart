# schemata_dart

Dart data package for [Nostr](https://nostr.com/) protocol JSON schemas. Embeds compiled schemas from [nostrability/schemata](https://github.com/nostrability/schemata).

## Usage

```dart
import 'package:schemata_dart/schemata.dart';

final schema = Schemata.get('kind1Schema'); // Map<String, dynamic>?
final allKeys = Schemata.keys();            // List<String>
```

## License

GPL-3.0-or-later
