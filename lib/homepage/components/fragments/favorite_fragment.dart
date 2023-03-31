import 'package:flutter/material.dart';

class FavoriteDetail extends StatelessWidget {
  const FavoriteDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ProductItemList();
        },
      ),
    ));
  }
}

class ProductItemList extends StatelessWidget {
  const ProductItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
              height: 120,
              width: 120,
              'assets/images/image_1.jfif',
              fit: BoxFit.cover),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 4),
                Text(
                  'Title',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  'Vẻ đẹp của một người phụ nữ không phải là ở những bộ đồ mà cô ấy mặc, số tiền mà cô ấy có, hay cách cô ấy chải tóc. Vẻ đẹp của phụ nữ được nhìn thấy trong mắt cô ấy, bởi đó là cánh cửa trái tim cô, nơi mà tình yêu ngự trị. Vẻ đẹp thực sự luôn được phản ánh trong tâm hồn mỗi người phụ nữ.',
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
