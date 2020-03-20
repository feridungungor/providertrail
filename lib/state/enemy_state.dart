import 'package:flutter/cupertino.dart';
import 'package:flutter_provider_trial/models/enemy_model.dart';

class EnemyState with ChangeNotifier {
  List<EnemyModel> _enemys = [
    EnemyModel(EnemyID: 0, EnemyName: 'A Kişisi'),
    EnemyModel(EnemyID: 1, EnemyName: 'B Kişisi'),
    EnemyModel(EnemyID: 2, EnemyName: 'C Kişisi'),
    EnemyModel(EnemyID: 3, EnemyName: 'D Kişisi'),
    EnemyModel(EnemyID: 4, EnemyName: 'E Kişisi'),
  ];

  List<EnemyModel> InTheArchive(){

     List<EnemyModel> list = List();
     for(EnemyModel e in _enemys){
       if(e.EnemyArchive == true){list.add(e);}
     }
     return list;
  }

  List<EnemyModel> get enemy => _enemys;


  myFunctionWatchState(int index) {
    _enemys[index].EnemyWatchedInfO = !_enemys[index].EnemyWatchedInfO;
    notifyListeners();
  }

  myFunctionArchiveState(int index) {
    _enemys[index].EnemyArchive = !_enemys[index].EnemyArchive;
    notifyListeners();
  }
}
