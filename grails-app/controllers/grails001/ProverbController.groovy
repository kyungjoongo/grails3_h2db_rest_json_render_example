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


}
