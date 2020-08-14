import 'package:flutter/material.dart';

//defined data source of list.
var items = [
  {
      'name':'Item 1',
      'description':'Sample Desc.'
  },
  {
      'name':'Item 2',
      'description':'Sample Desc.'
  },
  {
      'name':'Item 3',
      'description':'Sample Desc.'
  },
  {
      'name':'Item 4',
      'description':'Sample Desc.'
  }

];
//-------------------

void main() {
  runApp(ListDemoApp());
  }
  
  class ListDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Demo"),
        ),
        body: Center(child: Padding(
          padding: EdgeInsets.all(5),
          child: ListView(
            children: items.map((item) => ListCell(item)).toList(),
                      ),
                    ),),
                  ),
                );
              }
            }
            
            
            
class ListCell extends StatelessWidget{
 final listItm;
  ListCell(this.listItm);
   
  @override
  Widget build(BuildContext context) {
  return Card(
    child: ListTile(
      title: Text(listItm['name']), 
      subtitle: Text(listItm['description']),
      onTap: (){
        _showMyDialog(context);
      },
    ),
    
  );
  }

  

}


Future<void> _showMyDialog(c) async { // c for context
  return showDialog<void>(
    context: c,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Alert'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Binod!') // :-D LOL.
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}