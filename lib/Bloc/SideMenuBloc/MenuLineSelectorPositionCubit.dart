import 'package:bloc/bloc.dart';
import 'package:bulk_dispenser/Enum/SideMenuEnum.dart';
import 'package:bulk_dispenser/Model/SideMenuLinePosition.dart';

class MenuLineSelectorPositionCubit extends Cubit<SideMenuLinePosition> {
  MenuLineSelectorPositionCubit() : super(SideMenuLinePosition(0, 0, 0, 160));

  void changeLinePosition(var enumState) {
    switch (enumState) {
      case SideMenuEnum.Explorer:
        changeToExplorer();
        break;
      case SideMenuEnum.Liquid:
        changeToLiquid();
        break;
      case SideMenuEnum.Designer:
        changeToDesigner();
        break;
      case SideMenuEnum.Runtime:
        changeToRuntime();
        break;
    }
  }

  void changeToExplorer() => emit(SideMenuLinePosition(0, 0, 0, 160));

  void changeToLiquid() => emit(SideMenuLinePosition(0, 0, 0, 55));

  void changeToDesigner() => emit(SideMenuLinePosition(0, 55, 0, 0));

  void changeToRuntime() => emit(SideMenuLinePosition(0, 160, 0, 0));
}
