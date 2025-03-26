/**
* @File Name : AnimalsHttpCalloutMock.cls
* @Description :
* @Author : Mamadou Lamine CAMARA
* @Last Modified By :
* @Last Modified On : March 23, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | March 23, 2025 | Mamadou Lamine CAMARA  | Initial Version
**/

@isTest
global class AnimalsHttpCalloutMock implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}');
        response.setStatusCode(200);
        return response;
    }
}