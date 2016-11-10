#!/bin/bash

curl --include --request POST http://localhost:3000/uploads \
  --header "Content-Type: application/json" \
  --data '{
      "photo": {
        "file_name": "example photo"
      }
    }'

# otter

  curl -v http://localhost:4741/uploads \
    -H 'Content-Type: multipart/form-data' \
    -H 'Accept: application/json' \
    -F "upload[user_id]=4" \
    -F "upload[image]=@sloth.jpg;type=image/jpg"

# sloth

      curl -v http://localhost:4741/photos \
        -H 'Content-Type: multipart/form-data' \
        -H 'Accept: application/json' \
        -F "photo[file_name]=new photo" \
        -F "photo[photo_upload]=@sloth.jpg;type=image/jpg"

# kitten

      curl -v http://localhost:4741/photos \
        -H 'Content-Type: multipart/form-data' \
        -H 'Accept: application/json' \
        -F "photo[file_name]=new photo" \
        -F "photo[photo_upload]=@kitten.jpg;type=image/jpg"
