import 'package:flutter/material.dart';

class PaymentSelectScreen extends StatefulWidget {
  const PaymentSelectScreen({Key? key}) : super(key: key);

  @override
  State<PaymentSelectScreen> createState() => _PaymentSelectScreenState();
}

class _PaymentSelectScreenState extends State<PaymentSelectScreen> {

  String _option = '';

  void _handleRadio(String? e) => setState((){ _option = e!; });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FC),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF7F9FC),
        leading: Icon(Icons.arrow_back_ios, color: Colors.black, size: 15.0),
        title: Text(
          'Payment',
          style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose payment option',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.grey[400]),
              ),
              const SizedBox(height: 30.0),
              Container(
                width: double.infinity,
                height: 55.0,
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/apple-pay.png', width: 30.0),
                        const SizedBox(width: 15.0),
                        Text(
                          'Apple Pay',
                          style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                      ],
                    ),
                    Radio(value: 'applepay', groupValue: _option, onChanged: _handleRadio, activeColor: Colors.blue)
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 55.0,
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/amazon-pay.png', width: 30.0),
                        const SizedBox(width: 15.0),
                        Text(
                          'Amazon Pay',
                          style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                      ],
                    ),
                    Radio(value: 'amazonpay', groupValue: _option, onChanged: _handleRadio, activeColor: Colors.blue)
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 55.0,
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/mastercard.png', width: 30.0),
                        const SizedBox(width: 15.0),
                        Text(
                          '●●●● 3579',
                          style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                      ],
                    ),
                    Radio(value: 'mastercard', groupValue: _option, onChanged: _handleRadio, activeColor: Colors.blue)
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 55.0,
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/visa.png', width: 30.0),
                        const SizedBox(width: 15.0),
                        Text(
                          '●●●● 1387',
                          style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                      ],
                    ),
                    Radio(value: 'visa', groupValue: _option, onChanged: _handleRadio, activeColor: Colors.blue)
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
