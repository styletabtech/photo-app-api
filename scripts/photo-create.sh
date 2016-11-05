#!/bin/bash

curl --include --request POST http://localhost:3000/photos \
  --header "Content-Type: application/json" \
  --data '{
      "photo": {
        "file_name": "third photo"
      }
    }'
