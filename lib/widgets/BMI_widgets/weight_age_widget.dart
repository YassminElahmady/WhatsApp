import 'package:first_one/main.dart';
import 'package:flutter/material.dart';

class WeightAgeWidget extends StatelessWidget {
  final String CalculateName;
  final Color backgroungTybeColor;
  final String CalculateNum;
  final void Function() onTapAdd;
  final  void Function() onTapRemove;

  const WeightAgeWidget({
    super.key,
    required this.CalculateName,
    required this.CalculateNum,
    required this.backgroungTybeColor,
    required this.onTapAdd,
     required this.onTapRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: backgroungTybeColor,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: backgroungTybeColor),
          child: Column(
            children: [
              Text(
                CalculateName,
                style: TextStyle(
                  color: Color(0xff8B8C9E),
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                CalculateNum,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: onTapRemove,
                      icon: CircleAvatar(
                        backgroundColor: Color(0xff8B8C9E),
                        child: Icon(Icons.remove),
                      ),
                    ),
                    SizedBox(width: 30),
                    IconButton(
                      onPressed: onTapAdd,
                      icon: CircleAvatar(
                        backgroundColor: Color(0xff8B8C9E),
                        child: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
