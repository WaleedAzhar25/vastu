import 'package:flutter/material.dart';
import 'package:vastu/utils/auth_input_text_field.dart';
import 'package:vastu/utils/constants.dart';
import 'package:vastu/utils/size-config.dart';
class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
           Container(
             height: 200,
          color: AppColors.primaryColor.withOpacity(0.3),
          child: Center(
            child:
            const Text('Welcome to Vastu',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
          ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 20),
            child: Column(
              children: [
                const Text('What are you looking for?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                const SizedBox(height: 20,),
                const Text('Choose an option below. You can change later too.',style: TextStyle(fontSize: 12,color: Colors.black54),),
                const SizedBox(height: 10,),

                Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
                      child: Row(
                        children: [
                          Icon(Icons.home_outlined,color: Colors.purpleAccent,),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Home search',style: TextStyle(fontWeight: FontWeight.w600),),
                              SizedBox(height: 10,),
                              Text('Buy, Rent,P.G./Co-Living',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black45),),


                            ],
                          )

                        ],
                      ),
                    )
                ),

                SizedBox(height: SizeConfig.heightMultiplier*2,),
                Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
                      child: Row(
                        children: [
                          Icon(Icons.account_balance_wallet_rounded,color: Colors.teal,),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Pay on Credit',style: TextStyle(fontWeight: FontWeight.w600),),
                              SizedBox(height: 10,),
                              Text('Buy, Rent,P.G./Co-Living',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black45),),


                            ],
                          )

                        ],
                      ),
                    )
                ),

                SizedBox(height: SizeConfig.heightMultiplier*2,),

                Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
                      child: Row(
                        children: [
                          Icon(Icons.houseboat_sharp,color: Colors.orange,),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Post your property',style: TextStyle(fontWeight: FontWeight.w600),),
                              SizedBox(height: 10,),
                              Text('Sell or Rent out your home',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black45),),


                            ],
                          )

                        ],
                      ),
                    )
                ),

                SizedBox(height: SizeConfig.heightMultiplier*2,),
                Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
                      child: Row(
                        children: [
                          Icon(Icons.clean_hands_outlined,color: Colors.indigo,),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Instant Loans',style: TextStyle(fontWeight: FontWeight.w600),),
                              SizedBox(height: 10,),
                              SizedBox(
                                  width: 250,
                                  child: Text('Muti-purpose high loan amount with no restrictions on usage',style: TextStyle(wordSpacing: 3,fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black45),)),


                            ],
                          )

                        ],
                      ),
                    )
                ),

                SizedBox(height: SizeConfig.heightMultiplier*2,),
              ],
            ),
          )

        ],
      ),
    );
  }
}
