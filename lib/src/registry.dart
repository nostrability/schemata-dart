import 'dart:convert';
import 'schemas_data.dart';

class Schemata {
  static final Map<String, Map<String, dynamic>> _cache = {};

  /// Returns parsed JSON schema for the given key, or null.
  static Map<String, dynamic>? get(String key) {
    if (_cache.containsKey(key)) return _cache[key];
    final raw = schemasData[key];
    if (raw == null) return null;
    final parsed = jsonDecode(raw) as Map<String, dynamic>;
    _cache[key] = parsed;
    return parsed;
  }

  /// Returns all available schema registry keys.
  static List<String> keys() => schemasData.keys.toList()..sort();
}
