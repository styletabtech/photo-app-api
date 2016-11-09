curl --include --request POST http://localhost:4741/photos \
  --header "Content-Type: application/json" \
  --data '{
      "photo": {
        "upload_id": "5",
        "spot_id": "1"
      }
    }'
