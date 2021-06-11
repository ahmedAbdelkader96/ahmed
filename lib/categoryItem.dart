import 'package:flutter/material.dart';


class CategoryItem extends StatelessWidget {
  final String id;
  final String name;
  final Color color;
  final String gender;
  final String image;
  final Icon icon;

  CategoryItem(this.id, this.name, this.color,this.gender,this.image,this.icon);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(

          onTap: () => null,
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          child:  Container(

            // margin: EdgeInsets.(30),
            width: 200,
            height: 200,

            child: Center(
              child: Text(
                name+ "${" : "}" +gender,
                style:TextStyle(fontSize: 20 , fontWeight:FontWeight.bold ) ,
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.fill,

              ),

              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Positioned(child: icon,bottom: 5,right: 5,)
      ],

    );
  }
}
