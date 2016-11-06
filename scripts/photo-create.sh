#!/bin/bash

curl --include --request POST http://localhost:3000/photos \
  --header "Content-Type: application/json" \
  --data '{
      "photo": {
        "file_name": "third photo"
      }
    }'

  curl -v http://localhost:3000/photos \
    -H 'Content-Type: multipart/form-data' \
    -H 'Accept: application/json' \
    -F "photo[file_name]=ExamplePhoto" \
    -F "photo[photo_upload]=@otter.jpg;type=image/jpg"



  curl -v -H 'Content-Type: multipart/form-data' \
  -H 'Accept: application/json' \
  -F "photo[file_name]=exmaple" \
  -F "photo[photo_upload]=@otter.jpg" http://localhost:3000/photos
