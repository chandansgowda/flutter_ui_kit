import 'package:flutter/material.dart';

class NewTransactionScreen extends StatefulWidget {
  static const routeName = '/new-transaction-screen';

  @override
  State<NewTransactionScreen> createState() => _NewTransactionScreenState();
}

class _NewTransactionScreenState extends State<NewTransactionScreen> {
  int value=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading:IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
    ),
        title: const Text(
          'Send Money',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: (
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.5,
                  decoration:  BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.025),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Send To',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.02,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.02),
                              color: Colors.white
                          ),
                          child: Padding(
                            padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.015),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey[100],
                                      ),
                                      child: Padding(
                                        padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                                        child:  const Icon(
                                          Icons.ac_unit_rounded,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width*0.03,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'James Lee',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height*0.01,
                                        ),
                                        Text(
                                          'jameslee@terra.com',
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[100],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                                    child: Icon(
                                      Icons.pending_actions,
                                      color: Colors.blue[400],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.03,
                        ),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                'Enter your amount',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height*0.03,
                              ),
                              Text(
                                '\$ $value',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: MediaQuery.of(context).size.height*0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.07,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.015),
                            color: Colors.blue[800],
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.025),
                              child: const Text(
                                'Send Money',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(MediaQuery.of(context).size.height*0.05),
                        topLeft: Radius.circular(MediaQuery.of(context).size.height*0.05),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  value = (value * 10) + 1;
                                });
                              },
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.04
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  value = value * 10 + 2;
                                });
                              },
                              child: Text(
                                '2',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.04
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  value = value * 10 + 3;
                                });
                              },
                              child: Text(
                                '3',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.04
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  value = value * 10 + 4;
                                });
                              },
                              child: Text(
                                '4',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.04
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  value = value * 10 + 5;
                                });
                              },
                              child: Text(
                                '5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.04
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  value = value * 10 + 6;
                                });
                              },
                              child: Text(
                                '6',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.04
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  value = value * 10 + 7;
                                });
                              },
                              child: Text(
                                '7',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.04
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  value = value * 10 + 8;
                                });
                              },
                              child: Text(
                                '8',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.04
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  value = value * 10 + 9;
                                });
                              },
                              child: Text(
                                '9',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.04
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.04
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.04),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    value = value * 10 + 0;
                                  });
                                },
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery
                                          .of(context)
                                          .size
                                          .height * 0.04
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  value = (value / 10).toInt();
                                });
                              },
                              child: Icon(
                                Icons.clear_rounded,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}