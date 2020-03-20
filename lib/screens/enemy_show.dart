import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_provider_trial/models/enemy_model.dart';
import 'package:flutter_provider_trial/screens/my_archive.dart';
import 'package:flutter_provider_trial/state/enemy_state.dart';
import 'package:flutter_provider_trial/view/myCardWidget.dart';
import 'package:provider/provider.dart';

class EnemyShowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reddiyler"),
      ),
      body: Consumer<EnemyState>(
        builder: (context, state, widget) {
          List<EnemyModel> theEnemys = state.enemy;
          return Container(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
              return myCard().myWidget(theEnemys, state, index);
              },
              itemCount: theEnemys.length,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyArchive()));
        },
      ),
    );
  }
}
