import 'package:bulk_dispenser/Enum/SideMenuEnum.dart';

abstract class NavigationMenuEvent {
  const NavigationMenuEvent();
}

class NavigateTo extends NavigationMenuEvent {
  final SideMenuEnum destination;
  const NavigateTo(this.destination);
}
