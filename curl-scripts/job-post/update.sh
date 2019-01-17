curl "http://localhost:4741/job_posts/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "job_post": {
      "job_title": "'"${CN}"'"
    }
  }'

echo
