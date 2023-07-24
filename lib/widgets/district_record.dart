import 'package:covidtraking/model/covidmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget districtRecord(BuildContext context, CovidPatient data){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
          elevation: 10,
      borderRadius: BorderRadius.circular(10),
      child: Container(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: [

               Text(data.district,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff7A9D54)),textAlign: TextAlign.center,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Active',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      Text(data.active.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),textAlign: TextAlign.center,),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text('Confirmed',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      Text(data.confirmed.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.yellow),textAlign: TextAlign.center,),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text('Deceased',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      Text(data.deceased.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffF31559)),textAlign: TextAlign.center,),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text('Recovered',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      Text(data.recovered.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.green),textAlign: TextAlign.center,),
                    ],
                  ),
                ],
              ),
             ],
           ),
         ),
      ),
    ),
  );
}