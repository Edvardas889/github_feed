import 'dart:collection';
import 'dart:convert';
import 'package:hive/hive.dart';

class AppBox<T> {
  String get boxName => "${typeOf<T>()}Box";

  String get defaultEntityKey => typeOf<T>().toString();

  final T? Function(dynamic json) fromJson;
  final Map<String, T?> _localMap = HashMap<String, T>();

  Type typeOf<T>() => T;

  AppBox({
    required this.fromJson,
  });

  Future<T?> getLocal({String? key = null}) async {
    try {
      final entityKey = key ?? this.defaultEntityKey;
      final local = _localMap[entityKey];
      if (local != null) return local;
      Box box = await Hive.openBox(boxName);
      final value = box.get(entityKey);
      if (value != null) {
        final model = fromJson.call(jsonDecode(value));
        _localMap[entityKey] = model;
        return model;
      }
    } catch (e, s) {
      //LOG ERROR
      return null;
    }
    return null;
  }

  Future<T> save(T model, {String? key}) async {
    try {
      final entityKey = key ?? this.defaultEntityKey;
      _localMap[entityKey] = model;

      Box box = await Hive.openBox(boxName);
      String value = jsonEncode(model);
      box.put(entityKey, value);
    } catch (e, s) {
      //LOG ERROR
    }
    return model;
  }

  void clearLocal() {
    _localMap.clear();
  }

  Future deleteAll() async {
    try {
      Box box = await Hive.openBox(boxName);
      clearLocal();
      return box.deleteAll(box.keys);
    } catch (e, s) {
      //LOG ERROR
    }
  }

  Future delete({String? key}) async {
    try {
      if (key == null) return;
      _localMap.removeWhere((k, value) => k == key);
      Box box = await Hive.openBox(boxName);
      return box.delete(key);
    } catch (e, s) {
      //LOG ERROR
      return null;
    }
  }
}
