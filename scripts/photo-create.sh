#!/bin/bash

curl --include --request POST http://localhost:3000/photos \
  --header "Content-Type: application/json" \
  --data '{
      "photo": {
        "file_name": "example photo"
      }
    }'

  curl -v http://localhost:4741/photos \
    -H 'Content-Type: multipart/form-data' \
    -H 'Accept: application/json' \
    -F "photo[file_name]=new photo" \
    -F "photo[photo_upload]=@otter.jpg;type=image/jpg"
