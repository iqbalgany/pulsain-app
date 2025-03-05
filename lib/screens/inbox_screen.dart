import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constans/colors.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  String selectedTab = "Order";

  List<Map<String, String>> orders = [
    {
      "status": "Sukses",
      "transaction_code": "#TP-TL-1022007",
      "date": "12 June 2023, 09:42 AM"
    },
    {
      "status": "Gagal",
      "transaction_code": "#TP-TL-1022008",
      "date": "13 June 2023, 10:30 AM"
    },
    {
      "status": "Penting",
      "transaction_code": "#TP-TL-1022009",
      "date": "14 June 2023, 11:15 AM"
    },
    {
      "status": "Sukses",
      "transaction_code": "#TP-TL-1022007",
      "date": "12 June 2023, 09:42 AM"
    },
    {
      "status": "Gagal",
      "transaction_code": "#TP-TL-1022008",
      "date": "13 June 2023, 10:30 AM"
    },
    {
      "status": "Penting",
      "transaction_code": "#TP-TL-1022009",
      "date": "14 June 2023, 11:15 AM"
    },
    {
      "status": "Sukses",
      "transaction_code": "#TP-TL-1022007",
      "date": "12 June 2023, 09:42 AM"
    },
    {
      "status": "Gagal",
      "transaction_code": "#TP-TL-1022008",
      "date": "13 June 2023, 10:30 AM"
    },
    {
      "status": "Penting",
      "transaction_code": "#TP-TL-1022009",
      "date": "14 June 2023, 11:15 AM"
    },
    {
      "status": "Sukses",
      "transaction_code": "#TP-TL-1022007",
      "date": "12 June 2023, 09:42 AM"
    },
    {
      "status": "Gagal",
      "transaction_code": "#TP-TL-1022008",
      "date": "13 June 2023, 10:30 AM"
    },
    {
      "status": "Penting",
      "transaction_code": "#TP-TL-1022009",
      "date": "14 June 2023, 11:15 AM"
    },
  ];
  List<Map<String, String>> notifications = [
    {
      "status": "Informasi",
      "message": "Selamat Datang, pembuatan akun anda berhasil",
      "date": "12 June 2024, 09:42 AM"
    },
    {
      "status": "Promo Spekta",
      "message": "Promo eksklusif PulsaIn sudah di mulai",
      "date": "12 June 2024, 09:42 AM"
    },
    {
      "status": "Informasi",
      "message": "Selamat Datang, pembuatan akun anda berhasil",
      "date": "12 June 2024, 09:42 AM"
    },
    {
      "status": "Promo Spekta",
      "message": "Promo eksklusif PulsaIn sudah di mulai",
      "date": "12 June 2024, 09:42 AM"
    },
    {
      "status": "Informasi",
      "message": "Selamat Datang, pembuatan akun anda berhasil",
      "date": "12 June 2024, 09:42 AM"
    },
    {
      "status": "Promo Spekta",
      "message": "Promo eksklusif PulsaIn sudah di mulai",
      "date": "12 June 2024, 09:42 AM"
    },
    {
      "status": "Informasi",
      "message": "Selamat Datang, pembuatan akun anda berhasil",
      "date": "12 June 2024, 09:42 AM"
    },
    {
      "status": "Promo Spekta",
      "message": "Promo eksklusif PulsaIn sudah di mulai",
      "date": "12 June 2024, 09:42 AM"
    },
    {
      "status": "Informasi",
      "message": "Selamat Datang, pembuatan akun anda berhasil",
      "date": "12 June 2024, 09:42 AM"
    },
    {
      "status": "Promo Spekta",
      "message": "Promo eksklusif PulsaIn sudah di mulai",
      "date": "12 June 2024, 09:42 AM"
    },
  ];

  List<bool> isTappedList = [];
  List<bool> isSwipedList = [];

  @override
  void initState() {
    super.initState();
    isTappedList = List.generate(orders.length, (index) => false);
    isSwipedList = List.generate(orders.length, (index) => false);
  }

  Color getStatusColor(String status, bool isTapped) {
    if (isTapped) return Colors.grey;
    if (status == "Sukses" || status == "Informasi") {
      return ColorsTheme().primary;
    }
    if (status == "Gagal") return Colors.red;
    return Colors.orange;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> currentList =
        selectedTab == "Order" ? orders : notifications;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        children: [
          SizedBox(height: 47),
          ListTile(
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                color: ColorsTheme().primary,
              ),
            ),
            title: Text(
              'Kotak Masuk',
              style: GoogleFonts.outfit(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Text(
                            'Opsi Kotak Masuk',
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 15),
                          Divider(),
                          SizedBox(height: 20),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xffEDFCFF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.flag, color: ColorsTheme().primary),
                                SizedBox(width: 14),
                                Text(
                                  'Tandai Pesan',
                                  style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: ColorsTheme().primary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              showModalBottomSheet(
                                backgroundColor: Colors.white,
                                context: context,
                                builder: (context) {
                                  return StatefulBuilder(
                                    builder: (BuildContext context, setState) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            // currentList.removeAt(index);
                                          });
                                        },
                                        child: Container(
                                          height: 305,
                                          width:
                                              MediaQuery.sizeOf(context).width,
                                          child: Column(
                                            children: [
                                              SizedBox(height: 30),
                                              Text(
                                                'Konfirmasi',
                                                style: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Divider(),
                                              SizedBox(height: 20),
                                              SvgPicture.asset(
                                                  'assets/delete_file.svg'),
                                              SizedBox(height: 20),
                                              Text(
                                                'Hapus Pesan',
                                                style: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Anda yakin ingin menghapus pesan yang ada?',
                                                style: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height: 37.5),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 15,
                                                  horizontal: 42,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorsTheme().primary,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Text(
                                                  'Yakin, Hapus Semua',
                                                  style: GoogleFonts.outfit(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Color(0xffEDFCFF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.delete, color: Color(0xffFF6565)),
                                  SizedBox(width: 14),
                                  Text(
                                    'Hapus Semua Pesan',
                                    style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xffFF6565),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              icon: Icon(Icons.more_vert),
            ),
          ),
          Row(
            children: [
              statusNotification(context, 'Order'),
              statusNotification(context, 'Notifikasi'),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: currentList.length,
              itemBuilder: (context, index) {
                return Slidable(
                  key: ValueKey(currentList[index]),
                  startActionPane: ActionPane(
                    extentRatio: 0.1,
                    motion: ScrollMotion(),
                    dismissible: DismissiblePane(onDismissed: () {}),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          setState(() {
                            currentList.removeAt(index);
                          });
                        },
                        icon: Icons.delete,
                        foregroundColor: Color(0xffFF6565),
                      ),
                    ],
                  ),
                  child: notificationTile(currentList, index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget notificationTile(List<Map<String, String>> list, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          isTappedList[index] = !isTappedList[index];
        });
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: Color(0xffE9E8E8),
        ))),
        child: ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                list[index]['status']!,
                style: GoogleFonts.outfit(
                    color: getStatusColor(
                        list[index]['status']!, isTappedList[index]),
                    fontSize: 10,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                selectedTab == "Order"
                    ? list[index]['transaction_code']!
                    : list[index]['message']!,
                style: GoogleFonts.outfit(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color:
                        isTappedList[index] ? Color(0xff646267) : Colors.black),
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.calendar_month_outlined,
                color: Color(0xff838087),
                size: 10,
              ),
              SizedBox(width: 3),
              Text(
                list[index]['date']!,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 10,
                  color: Color(0xff838087),
                ),
              ),
            ],
          ),
          trailing: Visibility(
            visible: !isTappedList[index],
            child: Icon(
              Icons.circle,
              color: ColorsTheme().primary,
              size: 5,
            ),
          ),
        ),
      ),
    );
  }

  Widget statusNotification(BuildContext context, String text) {
    bool isSelected = selectedTab == text;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTab = text;
          });
        },
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.only(
            top: 6,
            bottom: 11,
          ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: isSelected ? ColorsTheme().primary : Colors.blue[200]!,
          ))),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
              color: isSelected ? ColorsTheme().primary : Colors.blue[200],
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
