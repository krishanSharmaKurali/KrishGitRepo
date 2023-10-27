public class HttpCalloutExample {

    public void makeHttpCallout() {
        String endpoint = 'https://postman-echo.com/get?foo1=bar1&foo2=bar2';

        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET'); 

        HttpResponse response = new HttpResponse();

        Http http = new Http();

        response = http.send(request);

        if (response.getStatusCode() == 200) {
            System.debug('HTTP Response Body: ' + response.getBody());
        } else {
            System.debug('HTTP Request failed with status code: ' + response.getStatusCode());
        }
    }
}