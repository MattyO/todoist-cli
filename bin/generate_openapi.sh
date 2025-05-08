docker run \
  -v $(pwd)/openapi.json:/working/openapi.json \
  -v $(pwd)/vendor/bundle/todoist:/generated \
  openapitools/openapi-generator-cli \
  generate \
  -i /working/openapi.json \
  -g ruby \
  -o /generated \
  --additional-properties moduleName=Todoist,useAutoload=true \
  --library faraday
