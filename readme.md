## A template for AWS Lambda Layers

This package includes a setup for writing aws Lambda Layers.

### Configuration

* Set AWS parameters in `aws.dev.env` and `aws.prod.env`
* AWS_PROFILE is set in ~/.aws/credentials
  * Find credentials from AWS by clicking on profile icon, then Security credentials
  * Set Get Access Key ID and Access Key Secret.  Only two pairs are allowed at one time
* From the `nodejs` folder npm install --save <package> to include the package in the Lambda Layer

### How-to
- clone the template and install modules (`npm install`)
- change package name in `package.json`
- set AWS lambda settings in `aws.dev.env` and `aws.prod.env`. If you do not have
  aws profile, you need to create one as described here https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html you'll need
  separate profiles for development and production environments

### Requirements
- node v.12
- nvm installed globally

### Deploy
- run `deploy:dev` or `deploy:prod`

### References

Adapted from (`https://github.com/pavvell/lambda-templates/tree/master/lambda-typescript`)

See the reference article at `https://tltr.medium.com/aws-lambda-and-typescript-minimal-setup-c945c2cdd70a`

