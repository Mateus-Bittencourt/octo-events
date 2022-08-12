require 'json'

payload = '
      {
        "action":"opened",
        "issue": { "number": 24 },
        "repository": {},
        "sender": {}
      }
      '

      puts JSON.parse(payload, {:symbolize_names => true})
