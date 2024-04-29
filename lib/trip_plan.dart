import 'package:flutter/material.dart';
import 'package:travelapp/Component/custom_materialbutton.dart';
import 'package:travelapp/Component/dropdown.dart';

class TripPlan extends StatefulWidget {
  const TripPlan({super.key});

  @override
  State<TripPlan> createState() => _TripPlanState();
}

class _TripPlanState extends State<TripPlan> {
  Object? dropdownValue;
  Object? dropdownValue2;
  List<Map<String, String>> dropdownItems = [
    {'value': 'port', 'displayText': 'PortSaid'},
    {'value': 'Alex', 'displayText': 'Alexandria'},
    {'value': 'cairo', 'displayText': 'Cairo'},
    {'value': 'Luxor', 'displayText': 'Luxor'},
    {'value': 'Aswan', 'displayText': 'Aswan'},
  ];
  List<Map<String, String>> dropdownItems2 = [
    {'value': '3', 'displayText': 'Three days'},
    {'value': '5', 'displayText': 'Five days'},
    {'value': '7', 'displayText': 'One week'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(children: [
        Container(height: 50),
        const Image(
          image: AssetImage("img/df.png"),
          width: 100,
          height: 120,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Plan a new trip",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Container(height: 10),
            Text(
              "Tell us where you'll be spending your trip",
              style: TextStyle(fontSize: 15, color: Colors.grey[800]),
            ),
            const SizedBox(height: 50),
            CustomDropdownFormField(
              hintText: "Where to? e.g. Cairo, PortSaid, Alexandria",
              onChanged: (Object? value) {},
              value: dropdownValue,
              items: dropdownItems,
            ),
            const SizedBox(height: 20),
            CustomDropdownFormField(
              hintText: "Number of days",
              onChanged: (Object? value) {},
              value: dropdownValue2,
              items: dropdownItems2,
            ),
          ],
        ),
        Container(
          height: 50,
        ),
        CustomMaterialButton(
          text: "See your plan",
          onPressed: () {},
          backgroundColor: const Color.fromRGBO(255, 183, 77, 1),
        ),
      ]),
    );
  }
}
