import 'package:automall/constants.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ), //add border radius
              child: Image.asset(
                'assets/images/cars/20220315_164217-1.jpg',
                height: 240.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'ALTO LXI',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '4,8',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  const Text(
                    'Rs. 2,900,000.00',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.wallet_giftcard_outlined,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Best Price',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      'Vehicle specifications',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Body',
                              style: kSpecificationItemHeader,
                            ),
                            Text(
                              'SUV 5 doors',
                              style: kSpecificationItemValue,
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'Engine',
                              style: kSpecificationItemHeader,
                            ),
                            Text(
                              '4.41/555 hp/Gasoline',
                              style: kSpecificationItemValue,
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'Box',
                              style: kSpecificationItemHeader,
                            ),
                            Text(
                              'Automatic',
                              style: kSpecificationItemValue,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Mileage',
                              style: kSpecificationItemHeader,
                            ),
                            Text(
                              '137,000 km',
                              style: kSpecificationItemValue,
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'year of issue',
                              style: kSpecificationItemHeader,
                            ),
                            Text(
                              '2011',
                              style: kSpecificationItemValue,
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'Colour',
                              style: kSpecificationItemHeader,
                            ),
                            Text(
                              'White',
                              style: kSpecificationItemValue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              width: double.infinity,
              height: 320.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.teal.shade100,
              ),
            ),
            RawMaterialButton(
              onPressed: () {},
              constraints: BoxConstraints.tightFor(width: 200.0, height: 40.0),
              fillColor: Colors.teal.shade50,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
