Beanstalk deployment configuration for devpi-server
---------------------------------------------------

.. image:: https://badges.gitter.im/InnovativeTravel/devpi-beanstalk.svg
   :alt: Join the chat at https://gitter.im/InnovativeTravel/devpi-beanstalk
   :target: https://gitter.im/InnovativeTravel/devpi-beanstalk?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge

devpi-server_ deployment made easy with Amazon Elastic Beanstalk.

.. _devpi-server: http://doc.devpi.net/latest


Deployment
----------

You will need to install and configure elastic beanstalk `CLI <http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html>`_


If it's a first time deployment with this clone, initialize an environment:

::

    eb init --profile=<your aws profile> <your application name>


It's as easy as:

::

    make deploy AWS_PROFILE=<your aws profile> EB_ENVIRONMENT=<your elastic beanstalk environment>

You will need to create and configure elastic beanstalk environment prior to the deployment command.


Configuration
-------------

You will need to set up such environment variables for your elastic beanstalk environment:

* AWS_ACCESS_KEY_ID
    AWS access key for S3 bucket access for file storage
* AWS_SECRET_ACCESS_KEY
    AWS secret access key for S3 bucket access for file storage
* S3_PATH
    S3 path in form `<bucket name>/<folder>`
* DEVPI_PASSWORD
    password for `root` user for your devpi-server_ instance


License
-------

This software is licensed under the `MIT license <http://en.wikipedia.org/wiki/MIT_License>`_.

© 2016 Innovative Travel Ltd
