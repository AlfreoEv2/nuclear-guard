-- This package body defines the behavior for the Hello_World_CB package.
-- It includes the implementation of a callback function to handle HTTP requests
-- and generate HTTP responses with a simple "Hello World" message in HTML format.

package body Hello_World_CB is

   -- Function HW_CB defines the callback that will be invoked by the AWS server
   -- when an HTTP request is received. It takes a request object as input
   -- and returns an HTTP response object.
   function HW_CB(Request : AWS.Status.Data) return AWS.Response.Data is
   begin
      -- The function builds and returns an HTTP response. The response content type
      -- is set to "text/html", and the body contains a simple HTML paragraph
      -- with the text "Hello World".
      return AWS.Response.Build("text/html", "<p>Hello World</p>");
   end HW_CB;

end Hello_World_CB;
