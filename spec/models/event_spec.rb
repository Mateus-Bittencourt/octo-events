require 'rails_helper'
require 'json'

RSpec.describe Event, type: :model do
  it 'Have a payload and a number' do
    payload_body =   { 'issue' =>
      { 'id' => 1_334_113_732,
        'url' => 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/17',
        'body' => 'ipsum lirem rubis',
        'user' =>
        { 'id' => 95_507_217,
          'url' => 'https://api.github.com/users/Mateus-Bittencourt',
          'type' => 'User',
          'login' => 'Mateus-Bittencourt',
          'node_id' => 'U_kgDOBbFTEQ',
          'html_url' => 'https://github.com/Mateus-Bittencourt',
          'gists_url' => 'https://api.github.com/users/Mateus-Bittencourt/gists{/gist_id}',
          'repos_url' => 'https://api.github.com/users/Mateus-Bittencourt/repos',
          'avatar_url' => 'https://avatars.githubusercontent.com/u/95507217?v=4',
          'events_url' => 'https://api.github.com/users/Mateus-Bittencourt/events{/privacy}',
          'site_admin' => false,
          'gravatar_id' => '',
          'starred_url' => 'https://api.github.com/users/Mateus-Bittencourt/starred{/owner}{/repo}',
          'followers_url' => 'https://api.github.com/users/Mateus-Bittencourt/followers',
          'following_url' => 'https://api.github.com/users/Mateus-Bittencourt/following{/other_user}',
          'organizations_url' => 'https://api.github.com/users/Mateus-Bittencourt/orgs',
          'subscriptions_url' => 'https://api.github.com/users/Mateus-Bittencourt/subscriptions',
          'received_events_url' => 'https://api.github.com/users/Mateus-Bittencourt/received_events' },
        'state' => 'closed',
        'title' => 'lorem',
        'labels' => [],
        'locked' => false,
        'number' => 17,
        'node_id' => 'I_kwDOHx3_Ec5PhPXE',
        'assignee' => nil,
        'comments' => 0,
        'html_url' => 'https://github.com/Mateus-Bittencourt/rails-action-cable-chat/issues/17',
        'assignees' => [],
        'closed_at' => '2022-08-10T06:40:18Z',
        'milestone' => nil,
        'reactions' =>
        { '+1' => 0,
          '-1' => 0,
          'url' =>
          'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/17/reactions',
          'eyes' => 0,
          'heart' => 0,
          'laugh' => 0,
          'hooray' => 0,
          'rocket' => 0,
          'confused' => 0,
          'total_count' => 0 },
        'created_at' => '2022-08-10T06:01:31Z',
        'events_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/17/events',
        'labels_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/17/labels{/name}',
        'updated_at' => '2022-08-10T06:40:19Z',
        'comments_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/17/comments',
        'state_reason' => 'completed',
        'timeline_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/17/timeline',
        'repository_url' => 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat',
        'active_lock_reason' => nil,
        'author_association' => 'OWNER',
        'performed_via_github_app' => nil },
                       'action' => 'closed',
                       'sender' =>
      { 'id' => 95_507_217,
        'url' => 'https://api.github.com/users/Mateus-Bittencourt',
        'type' => 'User',
        'login' => 'Mateus-Bittencourt',
        'node_id' => 'U_kgDOBbFTEQ',
        'html_url' => 'https://github.com/Mateus-Bittencourt',
        'gists_url' => 'https://api.github.com/users/Mateus-Bittencourt/gists{/gist_id}',
        'repos_url' => 'https://api.github.com/users/Mateus-Bittencourt/repos',
        'avatar_url' => 'https://avatars.githubusercontent.com/u/95507217?v=4',
        'events_url' => 'https://api.github.com/users/Mateus-Bittencourt/events{/privacy}',
        'site_admin' => false,
        'gravatar_id' => '',
        'starred_url' => 'https://api.github.com/users/Mateus-Bittencourt/starred{/owner}{/repo}',
        'followers_url' => 'https://api.github.com/users/Mateus-Bittencourt/followers',
        'following_url' => 'https://api.github.com/users/Mateus-Bittencourt/following{/other_user}',
        'organizations_url' => 'https://api.github.com/users/Mateus-Bittencourt/orgs',
        'subscriptions_url' => 'https://api.github.com/users/Mateus-Bittencourt/subscriptions',
        'received_events_url' => 'https://api.github.com/users/Mateus-Bittencourt/received_events' },
                       'repository' =>
      { 'id' => 522_059_537,
        'url' => 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat',
        'fork' => false,
        'name' => 'rails-action-cable-chat',
        'size' => 67,
        'forks' => 0,
        'owner' =>
        { 'id' => 95_507_217,
          'url' => 'https://api.github.com/users/Mateus-Bittencourt',
          'type' => 'User',
          'login' => 'Mateus-Bittencourt',
          'node_id' => 'U_kgDOBbFTEQ',
          'html_url' => 'https://github.com/Mateus-Bittencourt',
          'gists_url' => 'https://api.github.com/users/Mateus-Bittencourt/gists{/gist_id}',
          'repos_url' => 'https://api.github.com/users/Mateus-Bittencourt/repos',
          'avatar_url' => 'https://avatars.githubusercontent.com/u/95507217?v=4',
          'events_url' => 'https://api.github.com/users/Mateus-Bittencourt/events{/privacy}',
          'site_admin' => false,
          'gravatar_id' => '',
          'starred_url' => 'https://api.github.com/users/Mateus-Bittencourt/starred{/owner}{/repo}',
          'followers_url' => 'https://api.github.com/users/Mateus-Bittencourt/followers',
          'following_url' => 'https://api.github.com/users/Mateus-Bittencourt/following{/other_user}',
          'organizations_url' => 'https://api.github.com/users/Mateus-Bittencourt/orgs',
          'subscriptions_url' => 'https://api.github.com/users/Mateus-Bittencourt/subscriptions',
          'received_events_url' => 'https://api.github.com/users/Mateus-Bittencourt/received_events' },
        'topics' => [],
        'git_url' => 'git://github.com/Mateus-Bittencourt/rails-action-cable-chat.git',
        'license' => nil,
        'node_id' => 'R_kgDOHx3_EQ',
        'private' => false,
        'ssh_url' => 'git@github.com:Mateus-Bittencourt/rails-action-cable-chat.git',
        'svn_url' => 'https://github.com/Mateus-Bittencourt/rails-action-cable-chat',
        'archived' => false,
        'disabled' => false,
        'has_wiki' => true,
        'homepage' => nil,
        'html_url' => 'https://github.com/Mateus-Bittencourt/rails-action-cable-chat',
        'keys_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/keys{/key_id}',
        'language' => 'Ruby',
        'tags_url' => 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/tags',
        'watchers' => 0,
        'blobs_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/blobs{/sha}',
        'clone_url' => 'https://github.com/Mateus-Bittencourt/rails-action-cable-chat.git',
        'forks_url' => 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/forks',
        'full_name' => 'Mateus-Bittencourt/rails-action-cable-chat',
        'has_pages' => false,
        'hooks_url' => 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/hooks',
        'pulls_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/pulls{/number}',
        'pushed_at' => '2022-08-06T21:49:02Z',
        'teams_url' => 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/teams',
        'trees_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/trees{/sha}',
        'created_at' => '2022-08-06T21:41:24Z',
        'events_url' => 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/events',
        'has_issues' => true,
        'issues_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues{/number}',
        'labels_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/labels{/name}',
        'merges_url' => 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/merges',
        'mirror_url' => nil,
        'updated_at' => '2022-08-06T21:41:51Z',
        'visibility' => 'public',
        'archive_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/{archive_format}{/ref}',
        'commits_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/commits{/sha}',
        'compare_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/compare/{base}...{head}',
        'description' => nil,
        'forks_count' => 0,
        'is_template' => false,
        'open_issues' => 2,
        'branches_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/branches{/branch}',
        'comments_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/comments{/number}',
        'contents_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/contents/{+path}',
        'git_refs_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/refs{/sha}',
        'git_tags_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/tags{/sha}',
        'has_projects' => true,
        'releases_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/releases{/id}',
        'statuses_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/statuses/{sha}',
        'allow_forking' => true,
        'assignees_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/assignees{/user}',
        'downloads_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/downloads',
        'has_downloads' => true,
        'languages_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/languages',
        'default_branch' => 'master',
        'milestones_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/milestones{/number}',
        'stargazers_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/stargazers',
        'watchers_count' => 0,
        'deployments_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/deployments',
        'git_commits_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/commits{/sha}',
        'subscribers_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/subscribers',
        'contributors_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/contributors',
        'issue_events_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/events{/number}',
        'stargazers_count' => 0,
        'subscription_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/subscription',
        'collaborators_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/collaborators{/collaborator}',
        'issue_comment_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/comments{/number}',
        'notifications_url' =>
        'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/notifications{?since,all,participating}',
        'open_issues_count' => 2,
        'web_commit_signoff_required' => false } }.to_json

    event = Event.create!(number: 17, payload: payload_body)
    expect(event.number).to eq(17)
    expect(event.payload).to eq('{"issue":{"id":1334113732,"url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/17","body":"ipsum lirem rubis","user":{"id":95507217,"url":"https://api.github.com/users/Mateus-Bittencourt","type":"User","login":"Mateus-Bittencourt","node_id":"U_kgDOBbFTEQ","html_url":"https://github.com/Mateus-Bittencourt","gists_url":"https://api.github.com/users/Mateus-Bittencourt/gists{/gist_id}","repos_url":"https://api.github.com/users/Mateus-Bittencourt/repos","avatar_url":"https://avatars.githubusercontent.com/u/95507217?v=4","events_url":"https://api.github.com/users/Mateus-Bittencourt/events{/privacy}","site_admin":false,"gravatar_id":"","starred_url":"https://api.github.com/users/Mateus-Bittencourt/starred{/owner}{/repo}","followers_url":"https://api.github.com/users/Mateus-Bittencourt/followers","following_url":"https://api.github.com/users/Mateus-Bittencourt/following{/other_user}","organizations_url":"https://api.github.com/users/Mateus-Bittencourt/orgs","subscriptions_url":"https://api.github.com/users/Mateus-Bittencourt/subscriptions","received_events_url":"https://api.github.com/users/Mateus-Bittencourt/received_events"},"state":"closed","title":"lorem","labels":[],"locked":false,"number":17,"node_id":"I_kwDOHx3_Ec5PhPXE","assignee":null,"comments":0,"html_url":"https://github.com/Mateus-Bittencourt/rails-action-cable-chat/issues/17","assignees":[],"closed_at":"2022-08-10T06:40:18Z","milestone":null,"reactions":{"+1":0,"-1":0,"url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/17/reactions","eyes":0,"heart":0,"laugh":0,"hooray":0,"rocket":0,"confused":0,"total_count":0},"created_at":"2022-08-10T06:01:31Z","events_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/17/events","labels_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/17/labels{/name}","updated_at":"2022-08-10T06:40:19Z","comments_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/17/comments","state_reason":"completed","timeline_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/17/timeline","repository_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat","active_lock_reason":null,"author_association":"OWNER","performed_via_github_app":null},"action":"closed","sender":{"id":95507217,"url":"https://api.github.com/users/Mateus-Bittencourt","type":"User","login":"Mateus-Bittencourt","node_id":"U_kgDOBbFTEQ","html_url":"https://github.com/Mateus-Bittencourt","gists_url":"https://api.github.com/users/Mateus-Bittencourt/gists{/gist_id}","repos_url":"https://api.github.com/users/Mateus-Bittencourt/repos","avatar_url":"https://avatars.githubusercontent.com/u/95507217?v=4","events_url":"https://api.github.com/users/Mateus-Bittencourt/events{/privacy}","site_admin":false,"gravatar_id":"","starred_url":"https://api.github.com/users/Mateus-Bittencourt/starred{/owner}{/repo}","followers_url":"https://api.github.com/users/Mateus-Bittencourt/followers","following_url":"https://api.github.com/users/Mateus-Bittencourt/following{/other_user}","organizations_url":"https://api.github.com/users/Mateus-Bittencourt/orgs","subscriptions_url":"https://api.github.com/users/Mateus-Bittencourt/subscriptions","received_events_url":"https://api.github.com/users/Mateus-Bittencourt/received_events"},"repository":{"id":522059537,"url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat","fork":false,"name":"rails-action-cable-chat","size":67,"forks":0,"owner":{"id":95507217,"url":"https://api.github.com/users/Mateus-Bittencourt","type":"User","login":"Mateus-Bittencourt","node_id":"U_kgDOBbFTEQ","html_url":"https://github.com/Mateus-Bittencourt","gists_url":"https://api.github.com/users/Mateus-Bittencourt/gists{/gist_id}","repos_url":"https://api.github.com/users/Mateus-Bittencourt/repos","avatar_url":"https://avatars.githubusercontent.com/u/95507217?v=4","events_url":"https://api.github.com/users/Mateus-Bittencourt/events{/privacy}","site_admin":false,"gravatar_id":"","starred_url":"https://api.github.com/users/Mateus-Bittencourt/starred{/owner}{/repo}","followers_url":"https://api.github.com/users/Mateus-Bittencourt/followers","following_url":"https://api.github.com/users/Mateus-Bittencourt/following{/other_user}","organizations_url":"https://api.github.com/users/Mateus-Bittencourt/orgs","subscriptions_url":"https://api.github.com/users/Mateus-Bittencourt/subscriptions","received_events_url":"https://api.github.com/users/Mateus-Bittencourt/received_events"},"topics":[],"git_url":"git://github.com/Mateus-Bittencourt/rails-action-cable-chat.git","license":null,"node_id":"R_kgDOHx3_EQ","private":false,"ssh_url":"git@github.com:Mateus-Bittencourt/rails-action-cable-chat.git","svn_url":"https://github.com/Mateus-Bittencourt/rails-action-cable-chat","archived":false,"disabled":false,"has_wiki":true,"homepage":null,"html_url":"https://github.com/Mateus-Bittencourt/rails-action-cable-chat","keys_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/keys{/key_id}","language":"Ruby","tags_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/tags","watchers":0,"blobs_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/blobs{/sha}","clone_url":"https://github.com/Mateus-Bittencourt/rails-action-cable-chat.git","forks_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/forks","full_name":"Mateus-Bittencourt/rails-action-cable-chat","has_pages":false,"hooks_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/hooks","pulls_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/pulls{/number}","pushed_at":"2022-08-06T21:49:02Z","teams_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/teams","trees_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/trees{/sha}","created_at":"2022-08-06T21:41:24Z","events_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/events","has_issues":true,"issues_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues{/number}","labels_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/labels{/name}","merges_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/merges","mirror_url":null,"updated_at":"2022-08-06T21:41:51Z","visibility":"public","archive_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/{archive_format}{/ref}","commits_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/commits{/sha}","compare_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/compare/{base}...{head}","description":null,"forks_count":0,"is_template":false,"open_issues":2,"branches_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/branches{/branch}","comments_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/comments{/number}","contents_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/contents/{+path}","git_refs_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/refs{/sha}","git_tags_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/tags{/sha}","has_projects":true,"releases_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/releases{/id}","statuses_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/statuses/{sha}","allow_forking":true,"assignees_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/assignees{/user}","downloads_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/downloads","has_downloads":true,"languages_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/languages","default_branch":"master","milestones_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/milestones{/number}","stargazers_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/stargazers","watchers_count":0,"deployments_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/deployments","git_commits_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/git/commits{/sha}","subscribers_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/subscribers","contributors_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/contributors","issue_events_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/events{/number}","stargazers_count":0,"subscription_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/subscription","collaborators_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/collaborators{/collaborator}","issue_comment_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/comments{/number}","notifications_url":"https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/notifications{?since,all,participating}","open_issues_count":2,"web_commit_signoff_required":false}}')
  end
end
