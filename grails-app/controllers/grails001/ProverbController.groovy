package grails001

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

        def result = Proverb.findById(params.id)

        render result as JSON
    }
}
