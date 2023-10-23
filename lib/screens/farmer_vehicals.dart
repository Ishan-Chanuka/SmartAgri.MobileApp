import 'package:flutter/material.dart';
import 'package:smartagri/screens/colors.dart';
import 'package:smartagri/screens/farmer_request.dart';

class Farmer_Vehicals extends StatefulWidget {
  const Farmer_Vehicals({super.key});

  @override
  State<Farmer_Vehicals> createState() => _Farmer_VehicalsState();
}

class _Farmer_VehicalsState extends State<Farmer_Vehicals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(top: 30.0), 
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 128, 126, 126)),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Image.asset(
                          'images/farmer.png', 
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'FAR-123456789',
                          style: TextStyle(
                            fontSize: 25,
                            color: AppColors.kCallcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                    'Name: Samarakoon\nPhone: 0774572664',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
                  Text(
                    'Vehicles',
                    style: TextStyle(
                      color: AppColors.kMainColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomContent(),
                ],
              ),
            ),
            SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  CustomContent(),
                ],
              ),
            ),
            SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  CustomContent(),
                ],
              ),
            ),
            SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  CustomContent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 128, 126, 126)),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Image.asset(
                    'images/combine-harvester.png',
                    height: 120,
                    width: 100,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Name: Vijeyadasa',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    
                  ),
                  SizedBox(height: 8),
                  const Text(
                    'Vehicle Type: Lorry\nPhone: 0779422376\nCapacity: 50kg\nPlastic Containers: Yes',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Container(
                        width: 200, 
                        child: ElevatedButton(
                          onPressed: () {Navigator.push(    context,    MaterialPageRoute(builder: (context) => const Farmer_Request()),  );},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff017840),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 0,
                          ),
                          child: const Text('Request'),
                        ),
                      ),
                      
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

   