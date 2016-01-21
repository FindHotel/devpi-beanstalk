# deploy to given elastic beanstalk environment
deploy: build-image
	eb deploy --profile=$(AWS_PROFILE) $(EB_ENVIRONMENT)

# run local instance
local-run:
	eb local run --profile=$(AWS_PROFILE)
