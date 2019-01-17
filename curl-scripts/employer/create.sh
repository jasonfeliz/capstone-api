#!/bin/bash

curl "http://localhost:4741/employers" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "employer": {
      "user_id": "'"${UI}"'",
      "company_name": "'"${CN}"'",
      "company_description": "'"${CD}"'",
      "company_link": "'"${CL}"'"
    }
  }'

echo
