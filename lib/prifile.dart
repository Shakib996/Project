import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MD.Shakib Sikder',style: TextStyle(color: Colors.green),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Icon(Icons.home,color: Colors.black,);
          Navigator.pop(context);
        },
      ),
    );
  }
}
