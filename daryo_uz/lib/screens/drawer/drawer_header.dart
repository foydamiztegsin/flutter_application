import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Daryo',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(width: 24),
              selectLang(),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Toshkent",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Row(
                children: [
                  Icon(Icons.cloud_queue_sharp, color: Colors.white),
                  SizedBox(width: 4),
                  Text(
                    '+12.0',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1.0,
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              currencyRate(Icons.monetization_on_outlined, '11700'),
              currencyRate(Icons.euro_outlined, '13500'),
              currencyRate(Icons.currency_ruble_outlined, '150'),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(color: Colors.blue),
    );
  }

  List<bool> _isSelected = [false, true];

  Widget selectLang() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(30),
        ),
        width: 180,
        height: 30,
        child: ToggleButtons(
          selectedBorderColor: Colors.transparent,
          borderColor: Colors.transparent,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                color: _isSelected[0] ? Colors.white : Colors.blue,
              ),
              width: 90,
              height: 30,
              child: Text(
                'Lotincha',
                style: TextStyle(
                  color: _isSelected[1] ? Colors.white : Colors.blue,
                ),
              ),
              alignment: Alignment.center,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: _isSelected[1] ? Colors.white : Colors.blue,
              ),
              width: 90,
              height: 30,
              child: Text(
                'Kirilcha',
                style: TextStyle(
                  color: _isSelected[1] ? Colors.blue : Colors.white,
                ),
              ),
              alignment: Alignment.center,
            ),
          ],
          isSelected: _isSelected,
          onPressed: (index) {
            setState(() {
              if (index == 0) {
                _isSelected[0] = true;
                _isSelected[1] = false;
              } else {
                _isSelected[1] = true;
                _isSelected[0] = false;
              }
            });
          },
        ),
      ),
    );
  }

  Widget currencyRate(IconData icon, String rate) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          rate,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
