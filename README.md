# Terraform Read Remote State Data

Terraform sample to show how to read data from an existing remote state.

## Pre Requisites
Make sure token for TFE account is stored in the ```.terraformrc``` file.

```
credentials "app.terraform.io" {
  token = "xxxxxx.atlasv1.zzzzzzzzzzzzz"
}
```

First remote data needs to be pushed into TFE.

Perform the following to push data to TFE

```
$ cd push-data-to-remote
$ terraform init
$ terraform apply
$ cd ..
```
The above should keep the state in TFE which will be used to query the data.

## Usage

```
$ terraform init
$ terraform apply
```

The random pet name from the remote state should be displayed on the screen.


