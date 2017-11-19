import grails001.Car
import org.grails.plugins.restawesome.renderer.ApiCollectionRendererJson
import org.grails.plugins.restawesome.renderer.ApiRendererJson
// Place your Spring DSL code here
beans = {

    carRenderer(ApiRendererJson, Car) {
        label = "car"
    }

    carCollectionRenderer(ApiCollectionRendererJson, Car) {
        label = "cars"
    }
}


