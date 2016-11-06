#!/bin/bash

curl --include --request POST http://localhost:3000/photos \
  --header "Content-Type: application/json" \
  --data '{
      "photo": {
        "file_name": "example photo"
      }
    }'

  curl -v http://localhost:3000/photos \
    -H 'Content-Type: multipart/form-data' \
    -H 'Accept: application/json' \
    -F "photo[file_name]=new photo" \
    -F "photo[photo_upload]=@otter.jpg;type=image/jpg"


    curl -v http://localhost:3000/photos \
      -H 'Content-Type: multipart/form-data' \
      -H 'Accept: application/json' \
      -F "photo[file_name]=example" \
      -F "photo[photo_upload]=@otter.jpg;type=image/jpg"

      curl -v http://localhost:4741/patterns \
        -H 'Content-Type: multipart/form-data' \
        -H 'Accept: application/json' \
        -F "pattern[quilt_size]=queen" \
        -F "pattern[pattern_image]=@demo.png;type=image/png"
