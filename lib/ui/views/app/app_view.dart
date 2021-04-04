import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_pos/ui/views/app/tabs/history_tab/history_tab_view.dart';
import 'package:simple_pos/ui/views/app/tabs/product_tab/product_tab_view.dart';
import 'package:simple_pos/ui/views/app/tabs/sale_tab/sale_tab_view.dart';
import 'package:stacked/stacked.dart';
import 'package:simple_pos/ui/dumb_widgets/app_safe_area.dart';

import 'app_viewmodel.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppViewModel>.reactive(
      viewModelBuilder: () => AppViewModel(),
      builder: (
        BuildContext context,
        AppViewModel model,
        Widget? child,
      ) {
        return DefaultTabController(
          length: 3,
          child: AppSafeArea(
            child: Scaffold(
              bottomNavigationBar: _BottomNav(),
              floatingActionButton: _Fab(model: model),
              body: TabBarView(
                children: [
                  ProductTabView(),
                  SaleTabView(),
                  HistoryTabView(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Fab extends StatelessWidget {
  final AppViewModel model;

  const _Fab({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: model.toCreateProductView,
    );
  }
}

class _BottomNav extends StatelessWidget {
  const _BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.black,
      labelPadding: const EdgeInsets.all(5),
      indicatorColor: Theme.of(context).primaryColor,
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      indicatorWeight: 3,
      tabs: [
        Tab(icon: Icon(Icons.grid_on_outlined)),
        Tab(icon: Icon(Icons.point_of_sale)),
        Tab(icon: Icon(Icons.history)),
      ],
    );
  }
}
