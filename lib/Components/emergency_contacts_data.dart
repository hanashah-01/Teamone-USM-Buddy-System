import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:teamone_app/Components/emergency_contacts.dart';

class ContactsData extends StatefulWidget {
  const ContactsData({Key? key}) : super(key: key);

  @override
  _ContactsDataState createState() => _ContactsDataState();
}

class _ContactsDataState extends State<ContactsData> {
  static List<String> emergencyContactsName = [
    "Ambulance",
    "Hospital",
    "Police Department",
    "Fire Department",
  ];

  static List<String> emergencyContactsInitials = [
    "AM",
    "PB",
    "PD",
    "FD",
  ];

  static List<dynamic> icons = [
    Icons.local_shipping,
    Icons.medical_services,
    Icons.local_police,
    Icons.support,
    null
  ];
  static List<String> emergencyContactsNo = [
    "tel: 112",
    "tel: 999",
    "tel: 991",
    "tel: 994",
  ];

  final List<EmergencyContacts> emergencyContacts = List.generate(
      emergencyContactsName.length,
      (index) => EmergencyContacts(emergencyContactsInitials[index],
          emergencyContactsName[index], emergencyContactsNo[index]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(15),
            child: Wrap(children: [
              Column(children: <Widget>[
                Scrollbar(
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics()),
                        shrinkWrap: true,
                        itemCount: emergencyContactsName.length,
                        itemBuilder: (BuildContext context, index) {
                          EmergencyContacts _contacts =
                              emergencyContacts[index];
                          return SizedBox(
                              height: 100,
                              child: Card(
                                  elevation: 4,
                                  child: InkWell(
                                      onTap: () async {
                                        var phoneNo = _contacts.contactNo;
                                        await FlutterPhoneDirectCaller
                                            .callNumber(phoneNo);
                                      },
                                      child: ListTile(
                                          title: Text(_contacts.name),
                                          subtitle: Text(_contacts.contactNo),
                                          dense: true,
                                          leading: CircleAvatar(
                                              child: Icon(icons[index]))))));
                        }))
              ])
            ])));
  }
}
