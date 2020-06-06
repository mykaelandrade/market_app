import 'package:flutter/material.dart';
import 'package:marketapp/src/productdetail.dart';

class ListItem extends StatelessWidget {

  final String tag;

  const ListItem({Key key, this.tag = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Item'),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductDetail(
            tag: tag,
          ),
        ));
      },
      subtitle: Text('R\$ 2.500,00'),
      leading: Hero(
        child: Image.network(
            'https://gizmodo.uol.com.br/wp-content/blogs.dir/8/files/2019/11/macbookpro-16-2.jpg'),
        tag: tag,
      ),
      trailing: IconButton(
        icon: Icon(Icons.shopping_basket),
        color: Theme.of(context).accentColor,
        onPressed: () {},
      ),
    );
  }
}
