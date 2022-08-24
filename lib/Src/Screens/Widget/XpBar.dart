import 'package:flutter/material.dart';

class XpBar extends StatefulWidget {
  const XpBar({Key? key}) : super(key: key);

  @override
  State<XpBar> createState() => _XpBarState();
}

class _XpBarState extends State<XpBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.center,
            colors: [Color.fromARGB(255, 184, 241, 186), Colors.white]),
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 2),
        ],
      ),
      child: Stack(
        children: [
          Image.asset(
            'Material/gocluppoinbar.png',
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent
            ),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 45,
                child: Image.asset(
                  'Material/GO-CLUB1.png',
                ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '6969 XP to your next treasure',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4,),
                    Stack(
                      children: [
                        Container(
                          height: 4,
                          width: 245,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          height: 4,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              print('GoClub XP');
            },
            child: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
