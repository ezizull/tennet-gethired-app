import 'package:flutter/cupertino.dart';
import 'package:gethired/utils/constants/controllers.dart';
import 'package:gethired/presentation/routes/router.dart';
import 'package:gethired/presentation/routes/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: homePageRoute,
    );
