# set basic auth username and password
passwd:
	aws s3 cp --profile=$(AWS_PROFILE) htpasswd $(HTTPASSWD_FILE)

# deploy to given elastic beanstalk environment
deploy:
	eb deploy --profile=$(AWS_PROFILE) $(EB_ENVIRONMENT) --staged

# run local instance
local-run:
	eb local run --profile=$(AWS_PROFILE) --envvars AWS_ACCESS_KEY_ID=$(AWS_ACCESS_KEY_ID),AWS_SECRET_ACCESS_KEY=$(AWS_SECRET_ACCESS_KEY),S3_PATH=$(S3_PATH)
