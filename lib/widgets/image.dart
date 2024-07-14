import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: /*Center(
        child: Container(
          height: 300,
          width: 250,
          child: CachedNetworkImage(
            imageUrl:
                'https://media.gettyimages.com/id/534265316/photo/ravana.jpg?s=612x612&w=0&k=20&c=oWjdiC7YAKU3WCLij7ierrR9vzQ94r_ykSy3HIvgBis=',
            placeholder: (context, url) => CupertinoActivityIndicator(
              radius: 25,
              animating: true,
              color: Theme.of(context).primaryColor,
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),*/
          Center(
        child: Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Lankadishwara.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black,
                spreadRadius: 5,
              ),
            ],
          ),
        ),
      ),
      /*Center(
        child: Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://imgs.search.brave.com/Uc1qAnUVdFd4FdPCHVxef3g3lNRKmUgQ6HP4-abg7kU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/Z29vZG1vcm5pbmdo/ZGxvdmVpbWFnZXMu/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDIxLzExL0xhbmth/cGF0aS1SYXZhbi1P/cmlnaW5hbC1QaG90/by5qcGc"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black,
                spreadRadius: 5,
              ),
            ],
          ),
        ),
      ),*/
      /*Center(
        child: Container(
          height: 300,
          width: 250,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.network(
            "https://imgs.search.brave.com/Uc1qAnUVdFd4FdPCHVxef3g3lNRKmUgQ6HP4-abg7kU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/Z29vZG1vcm5pbmdo/ZGxvdmVpbWFnZXMu/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDIxLzExL0xhbmth/cGF0aS1SYXZhbi1P/cmlnaW5hbC1QaG90/by5qcGc",
            fit: BoxFit.cover,
          ),
        ),
      ),*/
    );
  }
}
