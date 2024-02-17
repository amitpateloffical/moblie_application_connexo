import 'package:connexo/base/base.dart';
import 'package:connexo/res/assets_res.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Records'),
        actions: const [
          CircleAvatar(
            foregroundImage: AssetImage(AssetsRes.AMIT_GURU),
            backgroundColor: Colors.red,
          )
        ],
      ),
      body: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GridTile(
                child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Record: 0001',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          'Open',
                          style: TextStyle(
                              color: context.theme.colorScheme.primary,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Table(
                      children: const [
                        TableRow(children: [
                          Text('Division:',
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.w600)),
                          Text('KSA', style: TextStyle(fontSize: 12.0)),
                        ]),
                        TableRow(children: [
                          Text('Process:',
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.w600)),
                          Text('Capa', style: TextStyle(fontSize: 12.0)),
                        ]),
                        TableRow(children: [
                          Text('Opened:',
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.w600)),
                          Text('05-02-2024', style: TextStyle(fontSize: 12.0)),
                        ]),
                        TableRow(children: [
                          Text('Due Date:',
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.w600)),
                          Text('07-02-2024', style: TextStyle(fontSize: 12.0)),
                        ]),
                      ],
                    ),
                    const Gap(05),
                    const Text(
                      'Description:',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w600),
                    ),
                    const Gap(05),
                    const Text(
                      'This is test description. There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            ));
          }),
    );
  }
}
