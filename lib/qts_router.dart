import 'package:annotation_route/route.dart';
import 'package:flutter/material.dart';
import 'package:qts_flutter_router/router.dart';

class QtsRouter {
  static NavigatorState _state;

  QtsRouter() : super();

  static QtsRouter of(BuildContext context) {
    _state = Navigator.of(context);
    return QtsRouter();
  }

  Future<T> build<T extends Object>(ARouteOption option) {
    return _state.push(MaterialPageRoute(
        builder: (contenxt) => Router().pageFromUrlAndQuery(option)));
  }
}
