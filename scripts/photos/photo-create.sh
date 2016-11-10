curl --include --request POST http://localhost:4741/photos \
  --header "Content-Type: application/json" \
  --data '{
      "photo": {
        "upload_id": "18",
        "spot_id": "1"
      }
    }'
