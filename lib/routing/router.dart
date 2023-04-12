import 'package:flutter/material.dart';
import 'package:gethired/pages/clients/clients.dart';
import 'package:gethired/pages/drivers/drivers.dart';
import 'package:gethired/pages/overview/overview.dart';
import 'package:gethired/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverviewPage());
    case driversPageRoute:
      return _getPageRoute(DriversPage());
    case clientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
