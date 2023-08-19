import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class Drawer6 extends StatelessWidget {

  String _title1 = "What is the meaning of Binta?";
  String _title2 = "What can Binta do for a victim of GBV?";
  String _title3 = "Will it be allowed if I make anonymous report of an abuse?";
  String _title4 = "Can I get access to help anytime I needed it?";
  String _title5 = "Is there any age restriction to report a case?";
  String _title6 = "What happens if the individual abusing me is my life partner/parent/relatives/siblings/guardian?";
  String _title7 = "What issues can I report?";
  String _title8 = "Can I help to report a case on behalf of a victim of abuse?";
  String _title9 = "What happens after I report a case?";
  String _title10 = "What role will the social worker and connected partner play in assisting the victim?";


  String _text1 = "Binta is a platform providing support for victims of gender based violence and its preventive "
      "supports as a service integration through awareness creation, partnership collaborations in form of response "
      "to remedy where victims can have easy access to justice.";
  String _text2 = "Binta empowers you by providing information necessary to educate you about gender based violence, support you and lead you by bridging the gap to your needs as the case may be.";
  String _text3 = "Yes, we have a private platform where victims can communicate with social workers.";
  String _text4 = "Yes, as soon as our social worker is available.";
  String _text5 = "There is no age restriction to report a case.";
  String _text6 = "You can report a case against anybody acting as an abuser. You might be relocated to a safe house for your safety if required";
  String _text7 = "You can report issues on domestic violence ranging from physical punishment, sexual, emotional or psychological violence. Forced marriage including child marriage or early marriage."
      " Sex-based harassment including trafficking for sex or slavery, female genital mutilation and online violence including illegal threats, stalking or incitement to violence, unwanted, offensive "
      "or sexually explicit emails or messages, sharing of private images or videos without consent, or inappropriate advances on social networking sites.";
  String _text8 = "You can report a case on the victim’s behalf.";
  String _text9 = "Necessary action will be taken as applicable to the case submitted. If required, the Social Worker might report a case to Binta‘s partner handling such cases to seek further support and help for the victim.";
  String _text10 = "Providing information necessary to support and educate the victim or guide them through the healing process and lead them to gain justice.";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: colorWhite,
          iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
          centerTitle: true,
          title: Text('F.A.Q', style: TextStyle(color: colorPrimaryPurple),)
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Opacity(
              opacity: 0.1,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('lib/shared/assets/images/binta_logo_full.png'),
              ),
            ),
            _body(),
          ],
        ),
      ),
    );
  }


  Widget _body (){
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_title1, style: TextStyle(fontSize: 18.0, color: colorBrown, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text1, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title2, style: TextStyle(fontSize: 18.0, color: colorBrown, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text2, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title3, style: TextStyle(fontSize: 18.0, color: colorBrown, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text3, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title4, style: TextStyle(fontSize: 18.0, color: colorBrown, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text4, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title5, style: TextStyle(fontSize: 18.0, color: colorBrown, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text5, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title6, style: TextStyle(fontSize: 18.0, color: colorBrown, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text6, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title7, style: TextStyle(fontSize: 18.0, color: colorBrown, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text7, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title8, style: TextStyle(fontSize: 18.0, color: colorBrown, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text8, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title9, style: TextStyle(fontSize: 18.0, color: colorBrown, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text9, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title10, style: TextStyle(fontSize: 18.0, color: colorBrown, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text10, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 10.0,),
          ],
        ),
      ],
    );
  }
}
