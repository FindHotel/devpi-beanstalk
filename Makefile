# deploy to given elastic beanstalk environment
deploy:
	eb deploy --profile=$(AWS_PROFILE) $(EB_ENVIRONMENT) --staged

# run local instance
local-run:
	htpasswd -c -b deployment/etc/nginx/conf.d/htpasswd admin password
	eb local run --profile=$(AWS_PROFILE) --envvars HTTP_USERNAME=admin,HTTP_PASSWORD=password,AWS_ACCESS_KEY_ID=$(AWS_ACCESS_KEY_ID),AWS_SECRET_ACCESS_KEY=$(AWS_SECRET_ACCESS_KEY),S3_PATH=$(S3_PATH)
