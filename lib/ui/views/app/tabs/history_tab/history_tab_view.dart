import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'history_tab_viewmodel.dart';

class HistoryTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HistoryTabViewModel>.reactive(
      viewModelBuilder: () => HistoryTabViewModel(),
      builder: (
        BuildContext context,
        HistoryTabViewModel model,
        Widget? child,
      ) {
        return Center(
          child: Text(
            'HistoryTabView',
          ),
        );
      },
    );
  }
}
