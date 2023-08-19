import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class TermsOfService extends StatelessWidget {

  String _title1 = "Intellectual Property Right";
  String _title2 = "Your Use of the Mobile App";
  String _title3 = "Disclaimer";
  String _title4 = "Limitation of Liability";
  String _title5 = "Feedback and Enquiry";

  String _text1 = "These terms and conditions govern your use of this Mobile App. The Mobile App is the property of Better Civic International Foundation (BCIF).\n"
      "\nBy using the Mobile App, you are agreeing to comply with and be bound by these terms of use. If you disagree with any part of these terms of use, do not use the Mobile App."
      " BCIF reserves the right to modify these terms of use at any time without prior notice. By continuing to access the Mobile App after such modifications have been published, you signify your agreement to be bound by such modified terms. ";
  String _text2 = "All text, graphics, images, photographs, sounds, music, animations, videos and computer code (collectively, the “Content”), including but not limited to the design, "
      "structure, visual interface and layout of such Content, contained on the Mobile App are the intellectual property of BCIF and they are owned by or licensed to BCIF Subject to "
      "the following terms of use, all these intellectual property rights are reserved.";
  String _text3 = "You may view, download for caching purpose the Mobile App for your personal, non-commercial informational purpose only.\n \nNo part of the Mobile App and Content may be republished, sold, rented, sub-licensed, copied, duplicated, "
      "reproduced, uploaded, posted, publicly displayed, translated, transmitted or distributed in any way to any other computer, server, Mobile App or any other medium for publication or distribution for commercial purposes, without BCIF’s express "
      "written consent.\n \nYou must not use the Mobile App in any way that causes, or may cause, damage to the Mobile App or impairment of the availability or accessibility of the Mobile App.\n \nYou must not use the Mobile App in any way which is unlawful,"
      " illegal, fraudulent or harmful, or in connection with any unlawful, illegal, fraudulent or harmful purpose or activity.";
  String _text4 = "Whilst Better Civic International Foundation (BCIF) endeavours to ensure that the Content on the Mobile App is correct, BCIF does not warrant its completeness or accuracy; nor does BCIF commits to ensuring that the Mobile App remains "
      "available or that the Content on the Mobile App is kept up-to-date. All Content provided on the Mobile App is subject to change, edit or removal without prior notice.";
  String _text5 = "BCIF will not be liable for any direct or indirect damages, liability or injuries caused by any failure of performance, error, omission, interruption, deletion, defect, delay in operation or transmission, computer virus, communication "
      "line failure, theft or destruction of or unauthorized access to, alteration of, or use, whether for breach of contract, tort, negligence or any other cause of action arising under these terms of use or in connection with the Mobile App.\n "
      "\nThe Mobile App may contain external links to other independent third-party Mobile Apps. These third-party Mobile Apps are not under BCIF's control. In providing these external links, BCIF is not responsible for and does not endorse the content "
      "of these third-party Mobile Apps. If you decide to leave the Mobile App and access the Third-Party WebApps, you should review the applicable terms and policies, including privacy and data gathering practices.";
  String _text6 = "We welcome any questions, comments or concerns you might have with regard to the use of the Mobile App. If you believe copyrighted work is available on the Mobile App in such a way that constitutes copyright infringement, or a breach of an agreed licence or contract, please notify us.";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 1,
            backgroundColor: colorWhite,
            iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
            centerTitle: true,
            title: Text('Terms of Service', style: TextStyle(color: colorPrimaryPurple),)
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
                  height: MediaQuery.of(context).size.height,
                  child: _body()
              )
            ],
          ),
        ));
  }


  Widget _body(){
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.0,),
            Text(_text1, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title1, style: TextStyle(fontSize: 18.0, color: colorBlack, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text2, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title2, style: TextStyle(fontSize: 18.0, color: colorBlack, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text3, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title3, style: TextStyle(fontSize: 18.0, color: colorBlack, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text4, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title4, style: TextStyle(fontSize: 18.0, color: colorBlack, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text5, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title5, style: TextStyle(fontSize: 18.0, color: colorBlack, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text6, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 20.0,),
          ],
        ),
      ],
    );
  }


}
