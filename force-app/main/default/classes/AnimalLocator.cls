/**
* @File Name : AnimalLocator.cls
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

public class AnimalLocator
{

  public static String getAnimalNameById(Integer id)
   {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        AnimalResult result = (AnimalResult) JSON.deserialize(response.getBody(), AnimalResult.class);
        return result.animal.name;
   }

}