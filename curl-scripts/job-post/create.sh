#!/bin/bash

curl "http://localhost:4741/job_posts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "job_post": {
      "employer_id": "'"${ID}"'",
      "job_title": "'"${CN}"'",
      "job_description": "'"${CD}"'",
      "desired_skills": ["'"awesome"'", "'"php"'"]
    }
  }'

echo
