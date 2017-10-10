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

        "/proverb/getOne/$id?"

/*        "/"( controller:"proverb", action:"getOneByName", param:"author" )*/

        "/proverb/getOneByName/$id?"


        "/proverb/getTwo/$id?"
    }
}
