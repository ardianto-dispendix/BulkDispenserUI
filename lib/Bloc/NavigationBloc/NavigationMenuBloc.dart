import 'package:bloc/bloc.dart';
import 'package:bulk_dispenser/Bloc/Event/NavigationMenuEvent.dart';
import 'package:bulk_dispenser/Bloc/States/NavigationMenuState.dart';
import 'package:bulk_dispenser/Enum/SideMenuEnum.dart';

class NavigationMenuBloc
    extends Bloc<NavigationMenuEvent, NavigationMenuState> {
  NavigationMenuBloc() : super(NavigationMenuState(SideMenuEnum.Explorer));

  @override
  NavigationMenuState get initialState =>
      NavigationMenuState(SideMenuEnum.Explorer);

  @override
  Stream<NavigationMenuState> mapEventToState(
      NavigationMenuEvent event) async* {
    if (event is NavigateTo) {
      if (event.destination != state.selectedItem) {
        yield NavigationMenuState(event.destination);
      }
    }
  }
}
