import 'dart:developer' as developer;

import 'package:logging/logging.dart' show Level;
import 'package:stack_trace/stack_trace.dart' show Frame;

typedef L = LogService;

abstract class BaseLogService {
  void finest(Object? caller, Object? message);
  void finer(Object? caller, Object? message);
  void fine(Object? caller, Object? message);
  void config(Object? caller, Object? message);
  void info(Object? caller, Object? message);
  void warning(Object? caller, Object? message);
  void severe(Object? caller, Object? message);
  void shout(Object? caller, Object? message);
}

class LogService extends BaseLogService {
  static final LogService _instance = LogService._();
  static LogService get instance => _instance;

  final Map<Level, String> levelPrefixes = {
    Level.FINEST: '👾 ',
    Level.FINER: '👀 ',
    Level.FINE: '🎾 ',
    Level.CONFIG: '🐶 ',
    Level.INFO: '👻 ',
    Level.WARNING: '⚠️ ',
    Level.SEVERE: '‼️ ',
    Level.SHOUT: '😡 ',
  };

  @override
  void finest(Object? caller, Object? message) =>
      log(Level.FINEST, message, caller: caller);
  @override
  void finer(Object? caller, Object? message) =>
      log(Level.FINER, message, caller: caller);
  @override
  void fine(Object? caller, Object? message) =>
      log(Level.FINE, message, caller: caller);
  @override
  void config(Object? caller, Object? message) =>
      log(Level.CONFIG, message, caller: caller);
  @override
  void info(Object? caller, Object? message) =>
      log(Level.INFO, message, caller: caller);
  @override
  void warning(Object? caller, Object? message) =>
      log(Level.WARNING, message, caller: caller);
  @override
  void severe(Object? caller, Object? message) =>
      log(Level.SEVERE, message, caller: caller);
  @override
  void shout(Object? caller, Object? message) =>
      log(Level.SHOUT, message, caller: caller);

  LogService._();

  void log(Level level, Object? message, {Object? caller}) {
    final time = DateTime.now();
    final stringifyMsg = _stringifyMsg(message);
    String msg;
    if (caller == null) {
      msg = stringifyMsg;
    } else {
      msg = '${_getCallerName(caller)}> $stringifyMsg';
    }

    String? freme;

    if (caller == null) {
      msg = '${levelPrefixes[level]} $level $time $stringifyMsg ${freme ?? ""}';
    } else {
      msg =
          '${levelPrefixes[level]} $level $time ${_getCallerName(caller)}> $stringifyMsg ${freme ?? ""}';
    }

    return developer.log(
      msg,
      level: level.value,
      name: 'app',
      time: time,
    );
  }

  String _stringifyMsg(Object? target) {
    if (target is Function) {
      return target().toString();
    } else if (target is String) {
      return target;
    } else {
      return target.toString();
    }
  }

  String _getCallerName(Object? target) {
    if (target is Function) {
      return target().toString();
    } else if (target is String) {
      return target;
    } else {
      return target.runtimeType.toString();
    }
  }
}
