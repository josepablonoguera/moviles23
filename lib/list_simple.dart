import 'package:flutter/material.dart';
import 'package:flutter_application_leccion2/person.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

class ListaSimple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizeScreem = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  var txtControlerPassword ;

  Body(){
   
    txtControlerPassword = new TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: personas.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 10,
            child: Column(
              children: [
                ListTile(
                  title: Container(
                      child: Row(
                    children: [
                      Text(personas[index].name),
                      Switch(
                        value: false,
                        onChanged: (value) => null,
                      ),
                      Container(
                        height: 60,
                        width: 250,
                        child: TextFormField(
                        
                          maxLength: 500,
                          keyboardType: TextInputType.number,
                          controller: txtControlerPassword,
                          
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                      )
                    ],
                  )),
                   isThreeLine: true,
                  subtitle: Text(personas[index].genero.toString()),
                  trailing: Icon(Icons.settings),
                ),
                ExpansionTile(
                  title: Text("Mi Familia"),
                  children: lista,
                )
              ],
            ),
          );
        },
      ),
    );
  }

  List<Person> personas = [
    new Person("Juan", "URL", 20.0, true),
    new Person("Maria", "URL", 22.0, true),
    new Person("Ariany", "URL", 23.0, true),
    new Person("Diego", "URL", 21.0, true),
    new Person("Kelyn", "URL", 27.0, true),
  ];

  List<Widget> lista = <Widget>[
    ListTile(
      title: Text(
        "Opcion 1",
        style: TextStyle(fontSize: 30),
      ),
      onTap: () => null,
    ),
    ListTile(
      title: Text(
        "Opcion 2",
        style: TextStyle(fontSize: 30),
      ),
    ),
    ListTile(
      title: Text(
        "Opcion 3",
        style: TextStyle(fontSize: 30),
      ),
    ),
    ListTile(
      title: Text(
        "Opcion 4",
        style: TextStyle(fontSize: 30),
      ),
    ),
    ListTile(
      title: Text(
        "Opcion 5",
        style: TextStyle(fontSize: 30),
      ),
    ),
    ListTile(
      title: Text(
        "Opcion 6",
        style: TextStyle(fontSize: 30),
      ),
    ),
  ];

  Container creaListas(BuildContext context, Color color) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      color: color,
      child: ListView(
        shrinkWrap: true,
        children: lista,
      ),
    );
  }
}
