import 'package:flutter/material.dart';

class Phonescreen extends StatefulWidget {
  const Phonescreen({super.key});

  @override
  State<Phonescreen> createState() => _PhonescreenState();
}

class _PhonescreenState extends State<Phonescreen> {
  String numbers = '';

  changeall(String news) {
    if (numbers.length == 13) {
      check();
    } else {
      numbers += news;
      setState(() {});
    }
  }

  check() {
    List lsts = [];
    List lst = numbers.split('');
    if (lst.first == '+') {
      if (lst.length == 13) {
        for (var i = 0; i < lst.length; i++) {
          if (i == 9 || i == 6 || i == 11) {
            lsts.add('-');
          }
          lsts.add(lst[i]);
        }
        numbers = lsts.join();

        setState(() {});
      }
    }
  }

  removerall() {
    List lst = numbers.split('');
    lst.removeLast();
    numbers = lst.join();
    setState(() {});
  }

  longremove() {
    numbers = '';
    setState(() {});
  }

  telqil() {
    numbers = 'Tel qilyapman...';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numbers,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    changeall('1');
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        ),
                        color: Colors.grey.shade300),
                    child: const Text(
                      '1',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    changeall('2');
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Column(
                      children: [
                        Text(
                          '2',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        Text(
                          'ABC',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    changeall('3');
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)),
                    child: const Column(
                      children: [
                        Text(
                          '3',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        Text(
                          'DEF',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    changeall('4');
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: const Column(
                      children: [
                        Text(
                          '4',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'GHI',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    changeall('5');
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)),
                    child: const Column(
                      children: [
                        Text(
                          '5',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        Text(
                          'ABC',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    changeall('6');
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)),
                    child: const Column(
                      children: [
                        Text(
                          '6',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        Text(
                          'MNO',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    changeall('7');
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: const Column(
                      children: [
                        Text(
                          '7',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'PQRS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    changeall('8');
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)),
                    child: const Column(
                      children: [
                        Text(
                          '8',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        Text(
                          'TUV',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    changeall('9');
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)),
                    child: const Column(
                      children: [
                        Text(
                          '9',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        Text(
                          'WXYZ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    changeall('*');
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: const Text(
                      '*',
                      style: TextStyle(fontSize: 50),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    changeall('0');
                  },
                  onLongPress: () {
                    changeall('+');
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)),
                    child: const Column(
                      children: [
                        Text(
                          '0',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        Text(
                          '+',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    changeall('#');
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)),
                    child: const Text(
                      '#',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 125,
                ),
                InkWell(
                  onTap: () {
                    telqil();
                  },
                  child: Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                        color: Colors.green),
                    child: const Icon(
                      Icons.phone,
                      size: 60,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    removerall();
                  },
                  onLongPress: () {
                    longremove();
                  },
                  child: Ink(
                      child: const Icon(
                    Icons.backspace_outlined,
                    size: 60,
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
