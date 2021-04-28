/**
 * zip this file and node_modules containing axios up and upload it to your canary lambda function
 * this means you first need to npm install, there is a package.json in this directory containing a dependency on axios
 * an example zip command is
 *
 * zip -r node_modules canary.js
 *
 * an example command to upload this with the AWS CLI is
 *
 * aws lambda update-function-code --function-name canary --region us-east-1 --zip-file fileb://canary.zip
 *
 * this assumes you have the AWS CLI credentials configured, are in us-east-1 (North Virginia) region,
 * are pushing to a lambda named canary like in the example template called canary.yml,
 * and have zipped this file into a zip folder called canary.zip
 * this method is nothing new and an example with instructions can be found at
 * https://docs.aws.amazon.com/lambda/latest/dg/nodejs-package.html
 */

const axios = require('axios');

module.exports.handler = (event, context, callback) => {
  // I suggest replacing the URL with an environment variable
  const url = 'https://postman-echo.com/get?foo1=bar1&foo2=bar2';
  axios.get(url)
    .then((res) => {
      const { status } = res;
      if (status >= 200 && status <= 300) {
        console.log(`Successful status code: ${status}`);
      } else {
        console.error(`Bad status code: ${status}`);
      }
    })
    .catch((err) => {
      console.error('Caught an error');
      console.error(err);
    });

  callback(null);
};

module.exports.handler({}, {}, () => {})
