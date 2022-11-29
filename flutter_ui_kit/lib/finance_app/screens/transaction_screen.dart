import 'package:flutter/material.dart';

import '../widgets/chart_bar.dart';
import '../widgets/transaction_card.dart';
import '../widgets/transaction_result_card.dart';

class TransactionScreen extends StatelessWidget {
  static const routeName = '/transaction-screen';
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Transaction',
          style:
          TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * 0.01),
              ),
              child: Padding(
                padding:
                EdgeInsets.all(MediaQuery.of(context).size.height * 0.001),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        elevation: 0,
                      ),
                      child: Text(
                        '1W',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        elevation: 0,
                      ),
                      child: Text(
                        '1M',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        elevation: 0,
                      ),
                      child: Text(
                        '3M',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        elevation: 0,
                      ),
                      child: Text(
                        '6M',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        elevation: 0,
                      ),
                      child: Text(
                        'ALL',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Spending.February 2022',
                  style: TextStyle(
                      color: Colors.grey[400]
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                Text(
                  '\$ 24,400.00',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height*0.03,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.01,
            ),
            ChartBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Jan',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  'Feb',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  'Mar',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  'Apr',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  'May',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  'Jun',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  'Jul',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.025,
            ),
            const TransactionResultCard(
              icon: Icons.send,
              title: Text(
                'Income.Feb 2022',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              titleY:  Text(
                '+\$26,027.00',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            const TransactionResultCard(
              icon: Icons.arrow_back,
              title: Text(
                'Outcome.Feb 2022',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              titleY:  Text(
                '-\$24,400.00',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.2,
              child: ListView(
                children: [
                  TransactionCard(
                    icon:Icons.ac_unit_rounded,
                    title: const Text(
                      'Amazon.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titleT: Text(
                      'Shop',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titleY: Text(
                      '16 February, 2022',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titleU: Text(
                      '-\$600.99',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height*0.02
                      ),
                    ),
                  ),
                  TransactionCard(
                    icon:Icons.workspace_premium,
                    title: const Text(
                      'UpWork.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titleT: Text(
                      'Work',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titleY: Text(
                      '15 February, 2022',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titleU: Text(
                      '+\$4,219.00',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height*0.02
                      ),
                    ),
                  ),
                  TransactionCard(
                    icon:Icons.workspace_premium,
                    title: const Text(
                      'UpWork.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titleT: Text(
                      'Work',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titleY: Text(
                      '15 February, 2022',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titleU: Text(
                      '+\$4,219.00',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height*0.02
                      ),
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
