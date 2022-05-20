import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool _flag = false;

  @override
  void initState() {
    super.initState();
  }

  void _onChangeCheckbox(bool? e) {
    setState(() {
      _flag = e!;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Icon(Icons.arrow_back, color: Colors.grey),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Payment Options', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: Colors.black)),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  Text('Credit card', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.grey)),
                  const SizedBox(width: 8.0),
                  Icon(Icons.arrow_drop_down, color: Colors.grey),
                ],
              ),
              const SizedBox(height: 25.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(width: 1.3, color: Colors.lightBlue),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Center(
                        child: Image.asset("assets/icons/visa.png", width: 40.0),
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    Container(
                      width: 100,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(width: 0.4, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Center(
                        child: Image.asset("assets/icons/mastercard.png", width: 40.0),
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    Container(
                      width: 100,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(width: 0.4, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Center(
                        child: Image.asset("assets/icons/american-express.png", width: 40.0),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80.0),
              Container(
                width: size.width,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    labelText: 'Email Address',
                    labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.6,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                        labelText: 'Card number',
                        labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    width: size.width * 0.2,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                        labelText: 'Exp.',
                        labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.6,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                        labelText: 'Cardholder Name',
                        labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    width: size.width * 0.2,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                        labelText: 'CVV',
                        labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  Checkbox(value: _flag, onChanged: _onChangeCheckbox),
                  const SizedBox(width: 10.0),
                  Text('I accept terms and policies.'),
                ],
              ),
              const SizedBox(height: 50.0),
              GestureDetector(
                onTap: (){},
                child: Container(
                    height: 50.0,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: Center(
                      child: Text('Confirm', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 17.0)),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
