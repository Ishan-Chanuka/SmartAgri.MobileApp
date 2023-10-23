import 'package:flutter/material.dart';
import 'package:smartagri/screens/colors.dart';

class Distributor_Accepted extends StatefulWidget {
  const Distributor_Accepted({super.key});

  @override
  State<Distributor_Accepted> createState() => _Distributor_AcceptedState();
}

class _Distributor_AcceptedState extends State<Distributor_Accepted> {
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
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    height: 650,
                    width: 360,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 128, 126, 126)),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/Group 22.png',
                          height: 150,
                          width: 250,
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Name: Vijeyadasa',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Crop: Tomato\nPhone: 0779423376\nQty: 50 Kg',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0), 
                              child: IntrinsicWidth(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                            
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: const [
                                    Text(
                                      'Transport Cost',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                  width: 50), 
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                       
                                  children: [
                                    const Text(
                                      'LKR',
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
                              )
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 300,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffF68223),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 0,
                                ),
                                child: const Text('Call'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 300,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff017840),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 0,
                                ),
                                child: const Text('Complete'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}