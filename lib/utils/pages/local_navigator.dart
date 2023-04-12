import 'package:flutter/cupertino.dart';
import 'package:gethired/utils/constants/controllers.dart';
import 'package:gethired/routing/router.dart';
import 'package:gethired/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overviewPageRoute,
    );
