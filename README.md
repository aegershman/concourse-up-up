# concourse-up-up

A concourse-based encapsulation of [concourse-up](https://github.com/EngineerBetter/concourse-up) to run [concourse-up](https://github.com/EngineerBetter/concourse-up)... on concourse.

![pipeline](assets/pipeline.png)

## you probably don't need this

But it's a nice quick way to get a `ci.<some-org>.<tld>` up and running quick.

## why aren't all the params defined

I'm taking out certain params like `tls_cert` and `tls_key` since I don't plan on supplying them (since they'll be provided for me). If you're using this project and need those params, feel free to create an issue.

## docker-quickstart

I personally like to run concourse on my local machine using the `docker-compose` concourse quickstart. You can `fly` up this pipeline on a local instance, which can be used to create (or destroy) a concourse instance on AWS.
