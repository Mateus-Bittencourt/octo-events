require 'rails_helper'
require 'json'

RSpec.describe Event, type: :model do
  it 'an event must have a number, an action, an issue, a repository and a sender' do
    payload =
      {
        issue: {
          "url": 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/22',
          "repository_url": 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat'
        },
        action: 'opened',
        sender: {
          "login": 'Mateus-Bittencourt',
          "id": 95_507_217
        },
        repository: {
          "id": 522_059_537,
          "node_id": 'R_kgDOHx3_EQ'
        },
        number: 24
      }

    event = Event.create!(payload)
    expect(event.number).to eq(24)
    expect(event.action).to eq('opened')
    expect(event.issue).to eq({
                                'url' => 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat/issues/22',
                                'repository_url' => 'https://api.github.com/repos/Mateus-Bittencourt/rails-action-cable-chat'
                              })
    expect(event.repository).to eq({
                                     'id' => 522_059_537,
                                     'node_id' => 'R_kgDOHx3_EQ'
                                   })
    expect(event.sender).to eq({

                                 'login' => 'Mateus-Bittencourt',
                                 'id' => 95_507_217

                               })
  end
end
