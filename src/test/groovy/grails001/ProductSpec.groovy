package grails001

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class ProductSpec extends Specification implements DomainUnitTest<Product> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
        false == false
    }
}
