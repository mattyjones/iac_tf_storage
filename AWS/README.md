
## Pre-Reqs
- AWS account
- Terraform installed

## Usage
1. `terraform plan`
2. `terraform apply`
3. upload your files

In OSX the simplest was to get actual files into AWS is via [transmit][1]. The rest api or AWS console can also be used.

## Notes

The AWS credentials and default zone are read in as environment variables. To overwrite this functionality add them to the *provider.tf* file explicitly. Doing this though is bad form and care should be taken to not commit these back into source control.

The *objects* directory is a collection of blank files that are used to create a folder structure in S3. S3 by nature is a flat-file storage system. You can create the idea of folders using 0 byte files or by uploading a folder directly, in which case AWS will create a 0 byte file for you.

Using 0 byte files to create a directory structure will not result in any appreciable cost. AWS does not charge for empty buckets, only for the data stored in them.

[1]: https://panic.com/transmit/
