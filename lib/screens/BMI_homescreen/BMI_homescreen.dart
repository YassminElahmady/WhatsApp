import 'dart:developer';

import 'package:first_one/cubit/bmi_cubit/bmi_cubit.dart';
import 'package:first_one/cubit/bmi_cubit/bmi_cubit.dart';
import 'package:first_one/main.dart';
import 'package:first_one/widgets/BMI_widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/BMI_widgets/male_female_container.dart';

class BmiHomescreen extends StatelessWidget {
  const BmiHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff24263B),
      appBar: AppBar(
        backgroundColor: Color(0xff1C2135),
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // male & female
          BlocBuilder<BmiCubit, BmiState>(
            buildWhen: (state, previousState) {
              if (state is GenderTybe) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              return Expanded(
                child: Row(
                  children: [
                    MaleFemaleContainer(
                      backgroungTybeColor: BmiCubit.get(context).gender == 'male' ? Color(0xff333244) : Color(0xff24263B),
                      TybeName: 'Male',
                      ImageTybeIcon: "assets/images/male.png",
                      onTap: () {
                        BmiCubit.get(context).changeGender('male');
                      },
                    ),
                    SizedBox(width: 12),
                    MaleFemaleContainer(
                      backgroungTybeColor: BmiCubit.get(context).gender == 'female' ? Color(0xff333244) : Color(0xff24263B),
                      TybeName: 'Female',
                      ImageTybeIcon: "assets/images/female.png",
                      onTap: () { BmiCubit.get(context).changeGender('female'); },
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(height: 12),
          // height container
          BlocBuilder<BmiCubit, BmiState>(buildWhen: (state, previousState) {
            if (state is HeightTybe) {
              return true;
            } else {
              return false;
            }
          },
  builder: (context, state) {

    return Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff333244),
              ),
              child: Column(
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff8B8C9E),
                    ),
                  ),
                  SizedBox(height: 6),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: BmiCubit.get(context).Height.toInt().toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 40,
                              color: Colors.white),
                        ),
                        TextSpan(
                          text: 'cm',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(height: 15),
                  Expanded(
                    child: Slider(
                      value: BmiCubit.get(context).Height,
                      max: 250,
                      min: 150,
                      activeColor: Color(0xffE83D67),
                      onChanged: (value) {
                        BmiCubit.get(context).changeHeight(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
  },
),
          SizedBox(height: 12),
          BlocBuilder<BmiCubit, BmiState>(
             buildWhen: (state, previousState) {
      if (state is WeightTybe) {
      return true;
      } else {
      return false;
      }
      },
  builder: (context, state) {
    return Expanded(
            child: Row(children: [
              WeightAgeWidget(

                backgroungTybeColor: Color(0xff24263B),
                CalculateName: 'Weight',
                CalculateNum:  BmiCubit.get(context).Weight.toInt().toString(),
                onTapAdd: () {

                  BmiCubit.get(context).changeWeight( BmiCubit.get(context).Weight++);
                },
                onTapRemove: (){
                  BmiCubit.get(context).changeWeight( BmiCubit.get(context).Weight--);
                },
              ),
              SizedBox(width: 12),
              WeightAgeWidget(
                onTapAdd: () {

                  BmiCubit.get(context).changeAge( BmiCubit.get(context).age++);
                },
                onTapRemove: (){
                  BmiCubit.get(context).changeAge( BmiCubit.get(context).age--);
                },

                backgroungTybeColor: Color(0xff333244),
                CalculateName: 'Age',
                CalculateNum: BmiCubit.get(context).age.toInt().toString(),
              ),
            ]),
          );
  },
),

          SizedBox(
            height: 5,
          ),

          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xffE83D67)),
              ),
              onPressed: () {},
              child: Text(
                'Calculate',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
