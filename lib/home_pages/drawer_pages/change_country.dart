import 'package:Binta/shared/colors.dart';
import 'package:Binta/shared/toast_message.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Drawer7 extends StatefulWidget {

  @override
  _Drawer7State createState() => _Drawer7State();
}

class _Drawer7State extends State<Drawer7> {

  late SharedPreferences prefs;

  String _country = "";

  List<String> countryList = ['Algeria',
    'Angola','Benin', 'Botswana', 'Burkina Faso',
    'Burundi', 'Cameroon', 'Cabo Verde', 'Central African Republic',
    'Chad', 'Comoros', 'Congo', 'the Democratic Republic of Congo',
    'Cote d’Ivoire', 'Djibouti', 'Equatorial Guinea', 'Egypt', 'Eritrea',
    'Ethiopia', 'Gabon', 'Gambia', 'Ghana', 'Guinea','Guinea-Bissau', 'Kenya',
    'the Kingdom of Lesotho', 'Liberia', 'Libya', 'Madagascar', 'Malawi', 'Mali',
    'Mauritania', 'Mauritius', 'Morocco', 'Mozambique', 'Namibia', 'Niger', 'Nigeria',
    'Rwanda', 'Saharawi Arab Democratic Republic', 'Sao Tome and Principe', 'Senegal',
    'Seychelles', 'Sierra Leone', 'Somalia', 'South Africa', 'South Sudan', 'Sudan',
    'Kingdom of Swaziland', 'Tanzania', 'Togo', 'Tunisia', 'Uganda', 'Zambia', 'Zimbabwe'
  ];

  @override
  void initState() {
    // TODO: implement initState
    _retrieveCountry();
    super.initState();
  }

  _retrieveCountry()async{
    prefs = await SharedPreferences.getInstance();
    setState(() => _country = prefs.getString("country")!);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 1,
            backgroundColor: colorWhite,
            iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
            centerTitle: true,
            title: Text('Change Country', style: TextStyle(color: colorPrimaryPurple),)
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 1.0,),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Opacity(
                opacity: 0.1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('lib/shared/assets/images/binta_logo_full.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      SizedBox(height: 10.0,),
                      Row(
                        children: [
                        Text('Selected country :', style: TextStyle(
                          fontSize: 18.0, color: colorBlack
                        ),),
                        SizedBox(width: 10.0,),
                        Text(_country, style: TextStyle(fontSize: 18.0,
                            fontWeight: FontWeight.bold, color: colorPurpleBright))
                      ],),
                      SizedBox(height: 40.0,),
                      Expanded(child: _body(),),
                      SizedBox(height: 10.0,),
                      Container(
                        height: 40.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: colorPrimaryPurple),
                        child: TextButton(
                          child: Text("Save Changes", style: TextStyle(
                              fontSize: 16.0, color: colorWhite, fontWeight: FontWeight.normal)),
                          onPressed: () async {
                            prefs = await SharedPreferences.getInstance();
                            prefs.setString("country", _country);
                            toastMessage("Success");

                          },
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
        ));
  }

  Widget _body(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Select new : ', style: TextStyle(
            fontSize: 18.0, color: colorBlack
        ),),
        Expanded(
          child: ListView.builder(
            itemCount: countryList.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: GestureDetector(
                      child: Text('${countryList[index]}', style: TextStyle(fontSize: 18.0),),
                    onTap: () {
                      setState(() => _country = countryList[index].toString());
                    },
                  ),
                ),
              );
            }
          ),
        ),
      ],
    );
  }


}
