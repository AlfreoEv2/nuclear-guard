-- This Ada program sets up a basic web server using the Ada Web Server (AWS) framework.
-- It responds with "Hello, World" to HTTP requests.

with Ada.Text_IO; use Ada.Text_IO; 
with AWS.Default;                  
with AWS.Server;                   
-- Import the callback procedure for handling HTTP requests.
with Hello_World_CB;                      

procedure Server is
   WS : AWS.Server.HTTP;                              -- Declare an HTTP server object.
   Port : Positive := AWS.Default.Server_Port;        -- Set the server port to AWS default (usually 8080).
begin
   Put_Line("Call me on port"
              & Positive'Image(Port));
   
   -- Start the HTTP server with specific configurations:
   -- 1. The server object 'WS'.
   -- 2. A greeting message "Hello, World".
   -- 3. Maximum number of concurrent connections set to 1 (for simplicity in this example).
   -- 4. Listening port.
   -- 5. Callback procedure to handle incoming HTTP requests.
   AWS.Server.Start(WS, "Hello, World",
                    Max_Connection => 1,
                    Port => Port,
                    Callback => Hello_World_CB.HW_CB'Access);

   -- This keeps the server running indefinitely until the Docker container is stopped manually.
   loop
      null; -- This is a placeholder to ensure the loop does nothing but keeps running.
   end loop;
   
   -- The server shutdown command is commented out because, in a Docker environment, stopping the container will effectively shut down the server.
   -- AWS.Server.Shutdown(WS);
end Server;
