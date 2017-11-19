package grails001

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "/index")
        "500"(view: '/error')
        "404"(view: '/notFound')

        "/kyungjoon"(view: "/kyungjoon")

        /*"/$id?" {
            controller = "proverb"
            action = "getOne"
        }*/

     /*   "/proverb/getOne/$id?"
        "/proverb/getOneByName/$id?"
        "/proverb/getTwo/$id?"*/



        /*"/proverbJson/$id?"( controller:"proverbJson", action:"getOne" )*/

        "/proverbJson/"( controller:"proverbJson", action:"index" )

        "/proverbJson/byName/$id?"( controller:"proverbJson", action:"getOneByName" )


        "/cars"(resources:"car")
    }
}
