import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.grey.withOpacity(.4),
              blurRadius: 35,
              offset: Offset(
                  8, 8
              ),

            ),],
          ),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Handbag LV',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        r'$255',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),

                      Icon(Icons.favorite, color: Colors.red,),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        Positioned(
          top: -35,
          left: 70,
          child: Image.network('https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
            height: 100,
            width: 100,),
        ),
      ],
    );
  }
}