curl --include --request PATCH http://localhost:4741/spots/1 \
  --header "Content-Type: application/json" \
  --data '{
      "spot": {
        "name": "Boston Public Garden",
        "address": "4 Charles St",
        "city": "Boston",
        "state": "MA",
        "zip": "02116",
        "description": "The Public Garden is a large park located in the heart of Boston, MA, adjacent to the Boston Common."
      }
    }'
