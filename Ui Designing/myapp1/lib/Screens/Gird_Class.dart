import 'package:flutter/material.dart';
import 'package:myapp1/Screens/Detailes_Grid.dart';

class Gird_Screen_Builder extends StatefulWidget {
  const Gird_Screen_Builder({super.key});

  @override
  State<Gird_Screen_Builder> createState() => _Gird_Screen_BuilderState();
}

class _Gird_Screen_BuilderState extends State<Gird_Screen_Builder> {
  List images = ["https://plus.unsplash.com/premium_photo-1664392104299-cb8ace591863?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3RhY2t8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1531956759688-e71cc2586e34?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3RhY2t8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1563192504-36ac622196dd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c3RhY2t8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1533630160910-65f5a1718c65?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c3RhY2t8ZW58MHx8MHx8fDA%3D",
  ];
  List para = <String>["A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.",
  "A paragraph is a self-contained unit of discourse in writing dealing with a particular point or idea. Though not required by the orthographic conventions of any language with a writing system, paragraphs are a conventional means of organizing extended segments of prose. Wikipedia",
  "A paragraph is a group of related sentences that support one main idea. In general, paragraphs consist of three parts: the topic sentence, body sentences, and the concluding or the bridge sentence to the next paragraph or section. Paragraphs show where the subdivisions of a research paper begin and end and, thus, help the reader see the organization of the essay and grasp its main points.",
  "Most paragraphs in an essay parallel the general three-part structure of each section of a research paper and, by extension, the overall research paper, with an introduction, a body that includes facts and analysis, and a conclusion. You can see this structure in paragraphs whether they are narrating, describing, comparing, contrasting, or analyzing information. Each part of the paragraph plays an important role in communicating the meaning you intend to covey to the reader."
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,int index){
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Detailes(images: images[index],para: para[index],)));
          },
          child: Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(images[index]))
                    ),
                  ),
                ),
                Text("PLace $index")
              ],
            ),
          ),
        );
      }),
    );
  }
}