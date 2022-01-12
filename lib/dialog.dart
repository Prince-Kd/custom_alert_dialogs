import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      //insetPadding: const EdgeInsets.all(40),
      child: Stack(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 20, top: 55, right: 20, bottom: 20),
            margin: const EdgeInsets.only(top: 45),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Error',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'OK',
                            style: TextStyle(fontSize: 18),
                          )),
                    ),),
                    //SizedBox(width: 20,),
                    // Expanded(child: SizedBox(
                    //   width: 200,
                    //   child: ElevatedButton(
                    //       style: ElevatedButton.styleFrom(
                    //         primary: Colors.redAccent,
                    //           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    //       ),
                    //       onPressed: () {
                    //         Navigator.of(context).pop();
                    //       },
                    //       child: const Text(
                    //         'CANCEL',
                    //         style: TextStyle(fontSize: 18),
                    //       )),
                    // ),)
                  ],
                ),
                // Align(
                //   alignment: Alignment.center,
                //   child: SizedBox(
                //     width: 200,
                //     child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                //         onPressed: () {
                //           Navigator.of(context).pop();
                //         },
                //         child: const Text(
                //           'OK',
                //           style: TextStyle(fontSize: 18),
                //         )),
                //   ),
                // ),
              ],
            ),
          ),
          Positioned(
              right: 20,
              left: 20,
              child: Align(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 100,
                    )),
              )),
        ],
      ),
    );
  }
}
