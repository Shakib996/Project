import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(vertical: 40,horizontal: 25,),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage('image/search_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Fast Seatch',style: TextStyle(fontSize: 28,color: Colors.white),),
          SizedBox(height: 10,),
          Text('You can search Qiuckly for job What you want',style: TextStyle(fontSize: 20,color: Colors.white,height: 1),),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Image.asset('asset/image/search.png',width: 25,),
                SizedBox(width: 5,),
                Text('Search',style: TextStyle(color: Colors.grey,fontSize: 18),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}