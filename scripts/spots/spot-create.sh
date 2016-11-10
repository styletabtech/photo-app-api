curl --include --request POST http://localhost:4741/spots \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVmMzRlM2Y1ZTE1YmNiMjVlMTI3OWU5ZTU1ZDU0YjEwZgY6BkVG--80ce60a1037183b219cd82408c3be979a48de93f" \
  --data '{
      "spot": {
        "name": "Sample Spot",
        "address": "111 example st",
        "city": "Boston",
        "state": "MA",
        "zip": "02116",
        "description": "This is an example spot."
      }
    }'


    curl --include --request POST http://localhost:3000/sign-up \
      --header "Content-Type: application/json" \
      --data '{
        "credentials": {
          "email": "another@example.email",
          "password": "an example password",
          "password_confirmation": "an example password"
        }
      }'
