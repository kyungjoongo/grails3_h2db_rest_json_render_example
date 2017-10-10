package grails001

import antlr.StringUtils
import grails.converters.JSON
import groovy.json.JsonSlurper

class ProverbController {

    static scaffold = Proverb



    def _index() {

        def arrList = Proverb.getAll();

        println ("sdflksdlkfsdlfk--->"+ arrList.toString())

        ['arrList': arrList]
    }

    def listToJson (){

        def arrList = Proverb.getAll();

        render arrList as JSON

    }

    def getOne(){

        Proverb result = Proverb.findById(params.id)

        println ('result-->'+ result.getContent()+"\n"+  result.getAuthor() );

        render result as JSON
    }


    def getOneByName(){

        println (params.id);

        Proverb result = Proverb.findByAuthor(params.id)


        println ('result-->'+ result.getContent()+"\n"+  result.getAuthor() );
        render result as JSON



    }

    def getTwo(){

        Proverb result = Proverb.findById(params.id)
        print("param--->"+ params.id+ "\n");

        render ( "고경준 천재님잇비니sdlfksdlfkdsf")
    }
}
