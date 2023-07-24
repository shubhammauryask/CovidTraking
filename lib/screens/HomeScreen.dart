import 'dart:convert';

import 'package:covidtraking/widgets/district_record.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/covidmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CovidPatient> _patients = [];

  Future<void> _fetchData() async {
    final response =
    await http.get(Uri.https('data.covid19india.org', 'state_district_wise.json'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      var stateList = data.keys;
      var state;
      for (state in stateList){
        var districtList = data[state]['districtData'].keys;
        var district;
        for (district in districtList){
          var districtData = data[state]['districtData'][district];
          _patients.add(CovidPatient(
            state: state,
            district: district,
            active: districtData['active'],
            confirmed: districtData['confirmed'],
            deceased: districtData['deceased'],
            recovered: districtData['recovered'],
          ));
        }
      }

      setState(() {

      });
    } else {
      // Handle error case
    }
    setState(() {
      _patients.removeAt(0);
      _patients.removeAt(3);
    });

  }


  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Corona Cases of District',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff3F2E3E),),),
        actions: [
          Icon(Icons.search_rounded),
          SizedBox(width: 15,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
        child: ListView.builder(
          itemCount: _patients.length,
          itemBuilder: (context, index) {
            return districtRecord(context, _patients[index]);
          },
        ),
      ),
    );
  }
}
