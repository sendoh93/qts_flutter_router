import 'package:annotation_route/route.dart';
import 'package:annotation_route/route.dart';
import 'package:flutter/material.dart';
import 'package:qts_flutter_router/router.internal.dart';

@ARouteRoot()
class Router {
  var DefaultWidget = new Text("page not found");
  ARouterInternal internal = ARouterInternalImpl();

  Widget pageFromUrlAndQuery(ARouteOption option) {
    ARouterResult routeResult = internal.findPage(ARouteOption(option.urlpattern, option.params), ARouteOption(option.urlpattern, option.params));
    if (routeResult.state == ARouterResultState.FOUND) {
      return routeResult.widget;
    }
    return DefaultWidget;
  }

/*ARouterInternal internal = ARouterInternalImpl();

  dynamic getPage(ARouteOption option) {
    return internal.findPage(
        ARouteOption(option.urlpattern, option.params), option);
  }*/
}

class MyRouteOption {
  String urlpattern;
  Map<String, dynamic> params;
  MyRouteOption(this.urlpattern, this.params);

}
