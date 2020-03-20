import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider_trial/models/enemy_model.dart';
import 'package:flutter_provider_trial/state/enemy_state.dart';

class myCard {
  myWidget(List<EnemyModel> theEnemys, EnemyState state, int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 12, left: 12, bottom: 8),
      child: Container(
        height: 100,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                theEnemys[index].EnemyName +
                    " " +
                    theEnemys[index].EnemyWatchedInfO.toString(),
                textScaleFactor: 1.5,
              ),
              InkWell(
                child: Icon(
                  Icons.remove_red_eye,
                  color: theEnemys[index].EnemyWatchedInfO
                      ? Colors.red
                      : Colors.black,
                ),
                onTap: () {
                  debugPrint("Watched");
                  if (theEnemys[index].EnemyArchive == true) {
                    state.myFunctionWatchState(theEnemys[index].EnemyID);
                  } else {
                    state.myFunctionWatchState(index);
                  }

                  print("index: $index");
                  state.toString();
                },
              ),
              InkWell(
                child: Icon(
                  theEnemys[index].EnemyArchive ? Icons.remove : Icons.add,
                ),
                onTap: () {
                  debugPrint("Archive");
                  if (theEnemys[index].EnemyArchive == true) {
                    state.myFunctionArchiveState(theEnemys[index].EnemyID);
                  } else {
                    state.myFunctionArchiveState(index);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
