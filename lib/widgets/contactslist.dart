import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/screens/mobilechatscreen.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: info.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MobileChat()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ListTile(
                          title: Text(info[index]['name'].toString(),
                              style: TextStyle(fontSize: 15)),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(info[index]['message'].toString(),
                                style: TextStyle(fontSize: 10)),
                          ),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                info[index]['profilePic'].toString()),
                          ),
                          trailing: Text(
                            info[index]['time'].toString(),
                            style: const TextStyle(
                                fontSize: 11, color: Colors.blueGrey),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const Divider(
              color: dividerColor,
              indent: 85,
            )
          ],
        ));
  }
}
