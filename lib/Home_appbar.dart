import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/prifile.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25, right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Home',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('MD.Shakib Sikder',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
          Container(
            transform: Matrix4.rotationZ(100),
            margin: EdgeInsets.only(top: 40,right: 40),
            child: Stack(
              children: [
                Icon(Icons.notifications_none),
                Positioned(
                  top: 8,right: 8,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
            },
            child: Image.asset('image/avatar.png',width: 30,),
          ),
        ],
      ),
    );
  }
}
