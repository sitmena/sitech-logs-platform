# Sitech Logger setup

### Project setup steps :

1. run make services to setup db.
2. run make image.
3. after make image finishes you can run make dev-run

## Testing the project.

1. Paste the below class into your django project.
   ```python
   import traceback
   import logging
   import requests
   from django.http import HttpResponseServerError
   from django.utils.deprecation import MiddlewareMixin
   
   
   class CustomErrorLoggingMiddleware(MiddlewareMixin):
       def __init__(self, get_response=None):
           self.get_response = get_response

       def __call__(self, request):
           try:
               response = self.get_response(request)
               return response
           except Exception as e:
               # Capture the full traceback
               tb = traceback.format_exc()
   
               # Send traceback to Sitech logger
               self.send_error_to_sitech_logger(str(e), tb)
   
               # Optionally, you can return a custom error response
               return HttpResponseServerError("An error occurred, and the team has been notified.")
   
       def send_error_to_sitech_logger(self, error_message, traceback_str):
           logger_url = 'http://172.18.0.9:8080/api/logs'
           payload = {
               'log': f"{error_message}\n{traceback_str}",
               'level': 'ERROR'
           }
           try:
               response = requests.post(logger_url, json=payload)
               response.raise_for_status()
           except requests.RequestException as e:
               logging.error(f"Failed to send log to Sitech logger: {e}")

2. Add the middleware class in your django settings.py file.
   ```python
   MIDDLEWARE = [
       ...
       'path.to.CustomErrorLoggingMiddleware',
       ...
   ]
   ```
3. Run docker inspect sitech-logs and get the IP address of the container.
4. Place the ip address of the container in the logger_url variable in the above class.
5. Make an excpetion on your django project and you should see it on the terminal of sitech logger.