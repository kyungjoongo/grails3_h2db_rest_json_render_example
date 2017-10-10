package grails001

class InventoryController {

    def index() {


        render 'sldkflsdkflskdflksdflk';
    }

    def edit(){

        def productNanme = '고경준 천재님72384782374823748327487'
        def sku ='BB01';

        [product:productNanme, sku:sku]

    }

    def remove(){
        render '고경준 천재님이십니다sdlfksldkflsd______sldkflsdkflkkflk';
    }

    def list(){

        def allProduct = Product.list()

    }
}
