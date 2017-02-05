# List of all S3 buckets used for storage, the class dictates if it is S3 or glacier
#
#

#-----------------------------------------#
# Adult                                   #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 0 Days -> Glacier            #
#-----------------------------------------#
resource "aws_s3_bucket" "ceng-adult" {
  bucket = "ceng-adult"
  acl    = "private"

  versioning {
    enabled = false
  }

  lifecycle_rule {
    id      = "adult"
    prefix  = ""
    enabled = true

    transition {
      days          = 0
      storage_class = "GLACIER"
    }
  }

  resource "aws_s3_bucket_object" "videos" {
    bucket = "ceng-adult"
    key    = "videos/"
    source = "objects/videos"
  }

  resource "aws_s3_bucket_object" "pictures" {
    bucket = "ceng-adult"
    key    = "pictures/"
    source = "objects/pictures"
  }
}

#-----------------------------------------#
# Applications                            #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 0 Days -> Glacier            #
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
      days          = 0
      storage_class = "GLACIER"
    }
  }

  ## Linux ##
  resource "aws_s3_bucket_object" "linux" {
    bucket = "ceng-applications"
    key    = "linux/"
    source = "objects/linux"
  }

  ## OSX ##
  resource "aws_s3_bucket_object" "osx" {
    bucket = "ceng-applications"
    key    = "osx/"
    source = "objects/osx"
  }

  ## Other ##
  resource "aws_s3_bucket_object" "other" {
    bucket = "ceng-applications"
    key    = "other/"
    source = "objects/other"
  }

  ## Win7 ##
  resource "aws_s3_bucket_object" "win7" {
    bucket = "ceng-applications"
    key    = "win7/"
    source = "objects/win7"
  }
}

#-----------------------------------------#
# Books                                   #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 0 Days -> Glacier            #
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
      days          = 0
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
# Lifecycle: 0 Days -> Infrequent Access  #
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
      days          = 0
      storage_class = "STANDARD_IA"
    }

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
# Lifecycle: 0 Days -> Glacier            #
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
      days          = 0
      storage_class = "GLACIER"
    }
  }

  resource "aws_s3_bucket_object" "movies" {
    bucket = "ceng-media"
    key    = "movies/"
    source = "objects/movies"
  }

  resource "aws_s3_bucket_object" "tv-shows" {
    bucket = "ceng-media"
    key    = "tv-shows/"
    source = "objects/tv-shows"
  }

  resource "aws_s3_bucket_object" "clips" {
    bucket = "ceng-media"
    key    = "clips/"
    source = "objects/clips"
  }

  resource "aws_s3_bucket_object" "tech" {
    bucket = "ceng-media"
    key    = "tech/"
    source = "objects/tech"
  }
}

#-----------------------------------------#
# Music                                   #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 0 Days -> Glacier            #
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
      days          = 0
      storage_class = "GLACIER"
    }
  }

  resource "aws_s3_bucket_object" "artists" {
    bucket = "ceng-music"
    key    = "artists/"
    source = "objects/artists"
  }
}

#-----------------------------------------#
# Pictures                                #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: false                        #
# Lifecycle: 0 Days -> Glacier            #
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
      days          = 0
      storage_class = "GLACIER"
    }
  }
}

#-----------------------------------------#
# Projects                                #
# Usage: Backup                           #
# Class: Glacier                          #
# Versioned: False                        #
# Lifecycle: 0 Days -> Glacier            #
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
      days          = 0
      storage_class = "GLACIER"
    }
  }
}
