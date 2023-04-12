const rootRoute = "/";

const homePageDisplayName = "Home";
const homePageRoute = "/home";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(homePageDisplayName, homePageRoute),
];
