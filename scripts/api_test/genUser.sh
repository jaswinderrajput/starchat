#!/usr/bin/env bash

PORT=${1:-8888}
PASSWORD=${2:-"plain text password"}
curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/user_gen/test_user -d "{
        \"password\": \"${PASSWORD}\",
	\"permissions\": {
		\"index_english_0\": [\"read\"],
		\"index_1\": [\"read\", \"write\"]
	}
}"

