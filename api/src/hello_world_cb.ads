-- This package specification declares the interface for the Hello_World_CB package.
-- It is designed to be used with the Ada Web Server (AWS) for handling HTTP requests.
-- The package provides a declaration for a callback function that will be called by AWS
-- to process incoming HTTP requests and generate appropriate HTTP responses.

with AWS.Response; -- Import the AWS.Response package for constructing HTTP responses.
with AWS.Status;   -- Import the AWS.Status package for accessing HTTP request data.

package Hello_World_CB is
   -- Declaration of the HW_CB function.
   -- This function serves as a callback to handle HTTP requests received by the AWS server.
   -- It takes a single parameter, Request, which contains the data of the incoming HTTP request.
   -- The function returns an AWS.Response.Data object, representing the HTTP response to be sent back to the client.
   
   function HW_CB (Request: AWS.Status.Data) return AWS.Response.Data;
   
end Hello_World_CB;
