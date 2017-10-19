package grails001

import grails.converters.JSON

import java.awt.print.Book
import java.util.logging.Logger

class ProverbJsonController {


    Logger logger = Logger.getLogger("");

    /**
     *
     * @return
     */
    def index(){
        def arrList = Proverb.getAll();
        logger.info ("I am a test info log")
        render arrList as JSON

    }

    /**
     * 페이징 리스트 컨트롤러
     * @return
     */
    def list(){

        def page =  params.page
        int pageSize = 20;
        int offset = (Integer.parseInt(page) -1) * pageSize;
        List arrList = Proverb.listOrderById(max: pageSize, offset: offset, order: "desc")
        List newArrList =new ArrayList()

        for (Proverb proverbOne :arrList){
            String content = proverbOne.getContent();
            if ( content.contains("\$1")){
                content = content.replace("\$1", "");

            }
            proverbOne.setContent(content)

            newArrList.add(proverbOne);
        }




        render newArrList as JSON

    }


    def getOne(){

        Proverb result = Proverb.findById(params.id)

        println ('result-->'+ result.getContent());

        render result as JSON
    }


    def getOneByName(){

        println (params.id);
        Proverb result = Proverb.findByAuthor(params.id)
        println ('result-->'+ result.getContent()+"\n"+  result.getAuthor() );
        render result as JSON

    }

  /*  def getTwo(){

        Proverb result = Proverb.findById(params.id)
        print("param--->"+ params.id+ "\n");

        render ( "고경준 천재님잇비니sdlfksdlfkdsf")
    }*/
}
