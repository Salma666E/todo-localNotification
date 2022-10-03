import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/ui/theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key, required this.payload}) : super(key: key);
  final String payload;
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String _payload = '';
  @override
  void initState() {
    super.initState();
    _payload = widget.payload;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        elevation: 0,
        backgroundColor: context.theme.backgroundColor,
        title: Text(
          _payload.split('|')[0],
          style: TextStyle(color: Get.isDarkMode ? Colors.white : darkGreyClr),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Text(
                  'Hi, Salma',
                  style: TextStyle(
                      color: Get.isDarkMode ? Colors.white : darkGreyClr,
                      fontSize: 26,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 10),
                Text(
                  'You have a new remainder',
                  style: TextStyle(
                      color: Get.isDarkMode ? Colors.grey[100] : darkGreyClr,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: primaryClr),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.text_format_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'data',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _payload.split('|')[0],
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(
                          Icons.description,
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'description',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _payload.split('|')[1],
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(
                          Icons.calendar_today_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'date',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _payload.split('|')[2],
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            )),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
