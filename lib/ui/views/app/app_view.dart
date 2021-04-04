import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:simple_pos/ui/dumb_widgets/app_safe_area.dart';

import '../../../styles/constants.dart';
import '../../../styles/constants.dart';
import '../../../styles/constants.dart';
import '../../../styles/constants.dart';
import '../../../styles/constants.dart';
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
        final theme = Theme.of(context);
        return AppSafeArea(
          child: Scaffold(
            body: Column(
              children: [
                SizedBox(height: 60),
                Padding(
                  padding: EdgeInsetsHelper.smallAll,
                  child: Row(
                    children: [
                      Text(
                        'Product Catalog',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsHelper.smallAll,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadiusHelper.smallAll,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsetsHelper.smallAll,
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: List.generate(20, (index) {
                        return Padding(
                          padding: EdgeInsetsHelper.extraSmallAll,
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.primaryColor,
                              borderRadius: BorderRadiusHelper.smallAll,
                            ),
                            child: Center(
                              child: Text('Product ${index + 1}'),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.grid_on_rounded), label: 'Products'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.point_of_sale), label: 'Sales'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.history), label: 'History'),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: null,
            ),
          ),
        );
      },
    );
  }
}
