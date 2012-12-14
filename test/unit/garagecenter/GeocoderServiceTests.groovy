package garagecenter



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(GeocoderService)
class GeocoderServiceTests {

    void testLocation() {
        def location = new Location(
        		street  : 'Av Rio Branco, 156',
        		city    : 'Rio de Janeiro',
        		state   : 'RJ',
        		country : 'Brasil'
        	)
        fail 'me implemente'
    }
}
