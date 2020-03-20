import 'package:flutter/material.dart';
import 'package:flutter_provider_trial/models/enemy_model.dart';
import 'package:flutter_provider_trial/screens/enemy_show.dart';
import 'package:flutter_provider_trial/state/enemy_state.dart';
import 'package:flutter_provider_trial/view/myCardWidget.dart';
import 'package:provider/provider.dart';

class MyArchive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Archive"),
      ),
      body:  Consumer<EnemyState>(
        builder: (context, state, widget) {
          List<EnemyModel> myArchiveList = state.InTheArchive();
          return Container(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return new myCard().myWidget(myArchiveList, state, index);
              },
              itemCount: myArchiveList.length,
            ),
          );
        },
      ),
    );
  }

}
