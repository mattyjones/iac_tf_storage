# List of all S3 buckets used for storage, the class dictates if it is S3 or glacier
#
#

#-----------------------------------------#
# Adult                                   #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 1 Day -> Glacier             #
#-----------------------------------------#
resource "aws_s3_bucket" "ceng-adult" {
  bucket = "ceng-adult"
  acl    = "private"

  versioning {
    enabled = false
  }

  lifecycle_rule {
    id      = "adult-glacier"
    prefix  = ""
    enabled = true

    transition {
      days          = 1
      storage_class = "GLACIER"
    }
  }
}

resource "aws_s3_bucket_object" "videos" {
  bucket = "${aws_s3_bucket.ceng-adult.bucket}"
  key    = "videos/"
  source = "objects/videos"
}

resource "aws_s3_bucket_object" "pictures" {
  bucket = "${aws_s3_bucket.ceng-adult.bucket}"
  key    = "pictures/"
  source = "objects/pictures"
}

#-----------------------------------------#
# Applications                            #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 1 Day -> Glacier             #
#-----------------------------------------#
resource "aws_s3_bucket" "ceng-applications" {
  bucket = "ceng-applications"
  acl    = "private"

  versioning {
    enabled = false
  }

  lifecycle_rule {
    id      = "apps"
    prefix  = ""
    enabled = true

    transition {
      days          = 1
      storage_class = "GLACIER"
    }
  }
}

## Linux ##
resource "aws_s3_bucket_object" "linux" {
  bucket = "${aws_s3_bucket.ceng-applications.bucket}"
  key    = "linux/"
  source = "objects/linux"
}

## OSX ##
resource "aws_s3_bucket_object" "osx" {
  bucket = "${aws_s3_bucket.ceng-applications.bucket}"
  key    = "osx/"
  source = "objects/osx"
}

## Other ##
resource "aws_s3_bucket_object" "other" {
  bucket = "${aws_s3_bucket.ceng-applications.bucket}"
  key    = "other/"
  source = "objects/other"
}

## Win7 ##
resource "aws_s3_bucket_object" "win7" {
  bucket = "${aws_s3_bucket.ceng-applications.bucket}"
  key    = "win7/"
  source = "objects/win7"
}

#-----------------------------------------#
# Books                                   #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 1 Day -> Glacier             #
#-----------------------------------------#
resource "aws_s3_bucket" "ceng-books" {
  bucket = "ceng-books"
  acl    = "private"

  versioning {
    enabled = false
  }

  lifecycle_rule {
    id      = "books"
    prefix  = ""
    enabled = true

    transition {
      days          = 1
      storage_class = "GLACIER"
    }
  }
}

#-----------------------------------------#
# Documents                               #
# Usage: Backup                           #
# Class: Infrequent Access                #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 1 Day -> Infrequent Access   #
# Lifecycle: 30 Days -> Glacier           #
#-----------------------------------------#
resource "aws_s3_bucket" "ceng-documents" {
  bucket = "ceng-documents"
  acl    = "private"

  versioning {
    enabled = false
  }

  lifecycle_rule {
    id      = "docs"
    prefix  = ""
    enabled = true

    transition {
      days          = 30
      storage_class = "GLACIER"
    }
  }
}

#-----------------------------------------#
# Media                                   #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 1 Day -> Glacier             #
#-----------------------------------------#
resource "aws_s3_bucket" "ceng-media" {
  bucket = "ceng-media"
  acl    = "private"

  versioning {
    enabled = false
  }

  lifecycle_rule {
    id      = "media"
    prefix  = ""
    enabled = true

    transition {
      days          = 1
      storage_class = "GLACIER"
    }
  }
}

resource "aws_s3_bucket_object" "movies" {
  bucket = "${aws_s3_bucket.ceng-media.bucket}"
  key    = "movies/"
  source = "objects/movies"
}

resource "aws_s3_bucket_object" "tv-shows" {
  bucket = "${aws_s3_bucket.ceng-media.bucket}"
  key    = "tv-shows/"
  source = "objects/tv-shows"
}

resource "aws_s3_bucket_object" "clips" {
  bucket = "${aws_s3_bucket.ceng-media.bucket}"
  key    = "clips/"
  source = "objects/clips"
}

resource "aws_s3_bucket_object" "tech" {
  bucket = "${aws_s3_bucket.ceng-media.bucket}"
  key    = "tech/"
  source = "objects/tech"
}

#-----------------------------------------#
# Music                                   #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 1 Day -> Glacier             #
#-----------------------------------------#
resource "aws_s3_bucket" "ceng-music" {
  bucket = "ceng-music"
  acl    = "private"

  versioning {
    enabled = false
  }

  lifecycle_rule {
    id      = "music"
    prefix  = ""
    enabled = true

    transition {
      days          = 1
      storage_class = "GLACIER"
    }
  }
}

resource "aws_s3_bucket_object" "artists" {
  bucket = "${aws_s3_bucket.ceng-music.bucket}"
  key    = "artists/"
  source = "objects/artists"
}

#-----------------------------------------#
# Pictures                                #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 1 Day -> Glacier             #
#-----------------------------------------#
resource "aws_s3_bucket" "ceng-pictures" {
  bucket = "ceng-pictures"
  acl    = "private"

  versioning {
    enabled = false
  }

  lifecycle_rule {
    id      = "pictures"
    prefix  = ""
    enabled = true

    transition {
      days          = 1
      storage_class = "GLACIER"
    }
  }
}

#-----------------------------------------#
# Projects                                #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: False                        #
# Lifecycle: 1 Day -> Glacier             #
#-----------------------------------------#
resource "aws_s3_bucket" "ceng-projects" {
  bucket = "ceng-projects"
  acl    = "private"

  versioning {
    enabled = false
  }

  lifecycle_rule {
    id      = "projects"
    prefix  = ""
    enabled = true

    transition {
      days          = 1
      storage_class = "GLACIER"
    }
  }
}
