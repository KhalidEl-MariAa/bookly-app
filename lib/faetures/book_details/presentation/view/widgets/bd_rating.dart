import 'package:flutter/material.dart';

class RatingPart extends StatelessWidget {
  const RatingPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
       children:  [
       
         const Icon(Icons.star_rate,size: 17,),
          SizedBox(width: MediaQuery.of(context).size.width*0.009),
        const  Text('4.5',style: TextStyle(fontSize: 15,),)],
    );
  }
}


