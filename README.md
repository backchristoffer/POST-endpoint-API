Endpoints -\
'/' = Show added data\
'/POST' = POST data

Runs with debug=true\ 
Host is set to 0.0.0.0 to be compatible with container environment\
Port is set to 8080

Test with curl: curl -X POST -H "Content-Type: application/json" -d '{"name": "test", "lastname": "tester"}' URL
