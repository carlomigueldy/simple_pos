// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/views/app/app_view.dart';
import '../ui/views/create_product/create_product_view.dart';

class Routes {
  static const String appView = '/';
  static const String createProductView = 'products/create';
  static const all = <String>{
    appView,
    createProductView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.appView, page: AppView),
    RouteDef(Routes.createProductView, page: CreateProductView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    AppView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AppView(),
        settings: data,
      );
    },
    CreateProductView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateProductView(),
        settings: data,
      );
    },
  };
}
