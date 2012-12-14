package garagecenter

/**
 * GeocoderService
 * 
 * Encapsula o Google Geocoder para transformar endereços em longitude / latitude
 */
class GeocoderService {

    static transactional = false

    def locate(Location address) {
    	
		base = 'http://maps.google.com/maps/api/geocode/xml?'
		params = [
					sensor:false,
			       	address:[location.street,location.city,location.state,location.country].collect { 
			        	URLEncoder.encode(it,'UTF-8') 
			        }.join(',+')
		        ]
		url = base + params.collect { k,v -> "$k=$v" }.join('&')

		response = new XmlSlurper().parse(url)

		location.latitude  = response.result.geometry.location.lat
		location.longitude = response.result.geometry.location.lng
    }
}
