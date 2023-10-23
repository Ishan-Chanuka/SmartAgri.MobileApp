import 'package:flutter/material.dart';
import 'package:smartagri/screens/colors.dart';
import 'package:smartagri/screens/distributor_accepted.dart';
import 'package:smartagri/screens/distributor_request.dart';

class Distributor_Home extends StatefulWidget {
  const Distributor_Home({super.key});

  @override
  State<Distributor_Home> createState() => _Distributor_HomeState();
}

class _Distributor_HomeState extends State<Distributor_Home> {
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
                      border:
                          Border.all(color: Color.fromARGB(255, 128, 126, 126)),
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
                                'images/delivery-truck.png',
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
                                'DIS-123456789',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.kCallcolor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Name: Samarakoon\nPhone: 0774572664\nVehical No: LY-2548',
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Requests',
                    style: TextStyle(
                      color: AppColors.kMainColor,
                      fontSize: 20,
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
                  SizedBox(height: 10),
                  CustomContent(),
                ],
              ),
            ),
            SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  CustomContent(),
                ],
              ),
            ),
            SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 10),
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
                    'images/sprout.png',
                    height: 150,
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
                    'Crop: Tomato\nPhone: 0779422376\nQty: 50g',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {Navigator.push(    context,    MaterialPageRoute(builder: (context) => const Distributor_Request()),  );},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff017840),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 0,
                          ),
                          child: const Text('Accept'),
                        ),
                      ),
                      Container(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffFF0000),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 0,
                          ),
                          child: const Text('Reject'),
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
