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
resource "aws_s3_bucket" "adult_ceng" {
  bucket = "adult_ceng"
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
  bucket = "${aws_s3_bucket.adult_ceng.bucket}"
  key    = "videos/"
  source = "objects/videos"
}

resource "aws_s3_bucket_object" "pictures" {
  bucket = "${aws_s3_bucket.adult_ceng.bucket}"
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
resource "aws_s3_bucket" "applications_ceng" {
  bucket = "applications_ceng"
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

## Android ##
resource "aws_s3_bucket_object" "android" {
  bucket = "${aws_s3_bucket.applications_ceng.bucket}"
  key    = "android/"
  source = "objects/android"
}

## Linux ##
resource "aws_s3_bucket_object" "linux" {
  bucket = "${aws_s3_bucket.applications_ceng.bucket}"
  key    = "linux/"
  source = "objects/linux"
}

## Nintendo ##
resource "aws_s3_bucket_object" "nintendo" {
  bucket = "${aws_s3_bucket.applications_ceng.bucket}"
  key    = "nintendo/"
  source = "objects/nintendo"
}

## Playstation ##
resource "aws_s3_bucket_object" "playstation" {
  bucket = "${aws_s3_bucket.applications_ceng.bucket}"
  key    = "playstation/"
  source = "objects/playstation"
}

## OSX ##
resource "aws_s3_bucket_object" "osx" {
  bucket = "${aws_s3_bucket.applications_ceng.bucket}"
  key    = "osx/"
  source = "objects/osx"
}

## Other ##
resource "aws_s3_bucket_object" "other" {
  bucket = "${aws_s3_bucket.applications_ceng.bucket}"
  key    = "other/"
  source = "objects/other"
}

## Windows ##
resource "aws_s3_bucket_object" "windows" {
  bucket = "${aws_s3_bucket.applications_ceng.bucket}"
  key    = "windows/"
  source = "objects/windows"
}

#-----------------------------------------#
# Books                                   #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 1 Day -> Glacier             #
#-----------------------------------------#
resource "aws_s3_bucket" "books_ceng" {
  bucket = "books_ceng"
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
# Comics                                  #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 1 Day -> Glacier             #
#-----------------------------------------#
resource "aws_s3_bucket" "comics_ceng" {
  bucket = "comics_ceng"
  acl    = "private"

  versioning {
    enabled = false
  }

  lifecycle_rule {
    id      = "comics"
    prefix  = ""
    enabled = true

    transition {
      days          = 1
      storage_class = "GLACIER"
    }
  }
}

resource "aws_s3_bucket_object" "marvel" {
  bucket = "${aws_s3_bucket.media_ceng.bucket}"
  key    = "marvel/"
  source = "objects/marvel"
}

resource "aws_s3_bucket_object" "dc" {
  bucket = "${aws_s3_bucket.media_ceng.bucket}"
  key    = "dc/"
  source = "objects/dc"
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
resource "aws_s3_bucket" "documents_ceng" {
  bucket = "documents_ceng"
  acl    = "private"

  versioning {
    enabled = false
  }
}

#-----------------------------------------#
# Media                                   #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 1 Day -> Glacier             #
#-----------------------------------------#
resource "aws_s3_bucket" "media_ceng" {
  bucket = "media_ceng"
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
  bucket = "${aws_s3_bucket.media_ceng.bucket}"
  key    = "movies/"
  source = "objects/movies"
}

resource "aws_s3_bucket_object" "tv-shows" {
  bucket = "${aws_s3_bucket.media_ceng.bucket}"
  key    = "tv-shows/"
  source = "objects/tv-shows"
}

resource "aws_s3_bucket_object" "clips" {
  bucket = "${aws_s3_bucket.media_ceng.bucket}"
  key    = "clips/"
  source = "objects/clips"
}

resource "aws_s3_bucket_object" "tech" {
  bucket = "${aws_s3_bucket.media_ceng.bucket}"
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
resource "aws_s3_bucket" "music_ceng" {
  bucket = "music_ceng"
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
  bucket = "${aws_s3_bucket.music_ceng.bucket}"
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
resource "aws_s3_bucket" "pictures_ceng" {
  bucket = "pictures_ceng"
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
resource "aws_s3_bucket" "projects_ceng" {
  bucket = "projects_ceng"
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
