require 'rails_helper'


RSpec.describe EventsController do
  # describe 'Create a new post in route POST /events' do
  #   before do
  #     @payload =
  #       {
  #         issue: {
  #           url: 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/22',
  #           repository_url: 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat'
  #         },
  #         action: 'opened',
  #         sender: {
  #           login: 'Mateus-Bittencourt',
  #           id: 95_507_217
  #         },
  #         repository: {
  #           id: 522_059_537,
  #           node_id: 'R_kgDOHx3_EQ'
  #         },
  #         number: 24
  #       }
  #     @count = Event.all.size
  #     post :create, params: @payload
  #   end

  #   it 'returns http 201 created' do
  #     # expect(response.status).to eq(201)
  #     expect(response).to have_http_status(:created)
  #   end

  #   it 'event is really created' do
  #     expect(Event.all.size).to eq(@count + 1)
  #   end

  #   it 'check if the action is correct' do
  #     expect(Event.last["action"]).to eq(@payload[:action])
  #   end

  #   # it 'check if the issue is correct' do
  #   #   expect(Event.last["issue"]).to eq(@payload[:issue])
  #   # end
  # end

  describe 'return a list of events by issue number in route GET /issues/:number/events' do
    before do
      @payload_body = '
      {
        "id": 6,
        "issue": {
            "id": 1335990052,
            "url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/24",
            "body": "testais loreais manuais",
            "user": {

            },
            "state": "open",
            "title": "lorem testus ipsus",
            "labels": [],
            "locked": false,
            "number": 24,
            "node_id": "I_kwDOHx3_Ec5PoZck",
            "assignee": null,
            "comments": 0,
            "html_url": "https://github.com/Mateus-Bittencourt/rails-action-cable-chat/issues/24",
            "assignees": [],
            "closed_at": null,
            "milestone": null,
            "reactions": {

            },
            "created_at": "2022-08-11T13:49:06Z",
            "events_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/24/events",
            "labels_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/24/labels{/name}",
            "updated_at": "2022-08-11T13:49:06Z",
            "comments_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/24/comments",
            "state_reason": null,
            "timeline_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/24/timeline",
            "repository_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat",
            "active_lock_reason": null,
            "author_association": "OWNER",
            "performed_via_github_app": null
        },
        "action": "opened",
        "sender": {
            "id": 95507217,
            "url": "https://api.github.com/users/Mateus-Bittencourt",
            "type": "User",
            "login": "Mateus-Bittencourt",
            "node_id": "U_kgDOBbFTEQ",
            "html_url": "https://github.com/Mateus-Bittencourt",
            "gists_url": "https://api.github.com/users/Mateus-Bittencourt/gists{/gist_id}",
            "repos_url": "https://api.github.com/users/Mateus-Bittencourt/repos",
            "avatar_url": "https://avatars.githubusercontent.com/u/95507217?v=4",
            "events_url": "https://api.github.com/users/Mateus-Bittencourt/events{/privacy}",
            "site_admin": false,
            "gravatar_id": "",
            "starred_url": "https://api.github.com/users/Mateus-Bittencourt/starred{/owner}{/repo}",
            "followers_url": "https://api.github.com/users/Mateus-Bittencourt/followers",
            "following_url": "https://api.github.com/users/Mateus-Bittencourt/following{/other_user}",
            "organizations_url": "https://api.github.com/users/Mateus-Bittencourt/orgs",
            "subscriptions_url": "https://api.github.com/users/Mateus-Bittencourt/subscriptions",
            "received_events_url": "https://api.github.com/users/Mateus-Bittencourt/received_events"
        },
        "repository": {
            "id": 522059537,
            "url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat",
            "fork": false,
            "name": "rails-action-cable-chat",
            "size": 67,
            "forks": 0,
            "owner": {

            },
            "topics": [],
            "git_url": "git://github.com/Mateus-Bittencourt/rails-action-cable-chat.git",
            "license": null,
            "node_id": "R_kgDOHx3_EQ",
            "private": false,
            "ssh_url": "git@github.com:Mateus-Bittencourt/rails-action-cable-chat.git",
            "svn_url": "https://github.com/Mateus-Bittencourt/rails-action-cable-chat",
            "archived": false,
            "disabled": false,
            "has_wiki": true,
            "homepage": null,
            "html_url": "https://github.com/Mateus-Bittencourt/rails-action-cable-chat",
            "keys_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/keys{/key_id}",
            "language": "Ruby",
            "tags_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/tags",
            "watchers": 0,
            "blobs_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/blobs{/sha}",
            "clone_url": "https://github.com/Mateus-Bittencourt/rails-action-cable-chat.git",
            "forks_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/forks",
            "full_name": "Mateus-Bittencourt/rails-action-cable-chat",
            "has_pages": false,
            "hooks_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/hooks",
            "pulls_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/pulls{/number}",
            "pushed_at": "2022-08-06T21:49:02Z",
            "teams_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/teams",
            "trees_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/trees{/sha}",
            "created_at": "2022-08-06T21:41:24Z",
            "events_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/events",
            "has_issues": true,
            "issues_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues{/number}",
            "labels_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/labels{/name}",
            "merges_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/merges",
            "mirror_url": null,
            "updated_at": "2022-08-06T21:41:51Z",
            "visibility": "public",
            "archive_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/{archive_format}{/ref}",
            "commits_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/commits{/sha}",
            "compare_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/compare/{base}...{head}",
            "description": null,
            "forks_count": 0,
            "is_template": false,
            "open_issues": 4,
            "branches_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/branches{/branch}",
            "comments_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/comments{/number}",
            "contents_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/contents/{+path}",
            "git_refs_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/refs{/sha}",
            "git_tags_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/tags{/sha}",
            "has_projects": true,
            "releases_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/releases{/id}",
            "statuses_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/statuses/{sha}",
            "allow_forking": true,
            "assignees_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/assignees{/user}",
            "downloads_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/downloads",
            "has_downloads": true,
            "languages_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/languages",
            "default_branch": "master",
            "milestones_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/milestones{/number}",
            "stargazers_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/stargazers",
            "watchers_count": 0,
            "deployments_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/deployments",
            "git_commits_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/commits{/sha}",
            "subscribers_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/subscribers",
            "contributors_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/contributors",
            "issue_events_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/events{/number}",
            "stargazers_count": 0,
            "subscription_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/subscription",
            "collaborators_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/collaborators{/collaborator}",
            "issue_comment_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/comments{/number}",
            "notifications_url": "https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/notifications{?since,all,participating}",
            "open_issues_count": 4,
            "web_commit_signoff_required": false
        },
        "number": 24,
        "created_at": "2022-08-11T13:49:09.854Z",
        "updated_at": "2022-08-11T13:49:09.854Z"
    }
  '

      @payload_body = JSON.parse(@payload_body)
      @payload = {
        issue: @payload_body['issue'],
        action: @payload_body['action'],
        sender: @payload_body['sender'],
        repository: @payload_body['repository'],
        number: @payload_body['issue']['number'].to_i
      }
      @event = Event.new(@payload)
      @event.save
      get :events_by_number, params: { number: @event.number }
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'returns in json format' do
      expect(response.content_type).to eq 'application/json; charset=utf-8'
    end

    it 'JSON body responses an Array type' do
      json_response = JSON.parse(response.body)
      expect(json_response.class).to eq Array
    end

    it 'JSON body response contains expected event attributes' do
      json_response = JSON.parse(response.body)
      expect(json_response[0].keys).to match_array(%w[id issue action sender repository number
                                                      created_at updated_at])
    end

    it 'returns the correct event issue' do
      json_response = JSON.parse(response.body)
      expect(json_response[0]['issue']).to eq(@payload_body['issue'])
    end
  end
end
