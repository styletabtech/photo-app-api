curl --include --request POST http://localhost:4741/spots \
  --header "Content-Type: application/json" \
  --data '{
      "spot": {
        "name": "Sample Spot",
        "address": "111 example st",
        "city": "Boston",
        "state": "MA",
        "zip": "02116",
        "description": "This is an example spot.",
        "tag":
      }
    }'
