### How to deploy
$ oc new-project post-endpoint-api \
$ oc new-app https://github.com/backchristoffer/post_endpoint_api.git --allow-missing-images

### How to use
Endpoints -\
'/' = Show added data\
'/POST' = POST data

Test with curl: curl -X POST -H "Content-Type: application/json" -d '{"name": "test", "lastname": "tester"}' URL
