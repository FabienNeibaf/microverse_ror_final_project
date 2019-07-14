# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Friendship, type: :model do
  let(:friendship) { build(:friendship) }

  it 'has status equal to 0 by default' do
    expect(friendship.status).to eq('pending')
  end

  it 'allows status to be changed with valid entry' do
<<<<<<< HEAD
    friendship.accepted!
    expect(friendship.status).to eq('accepted')
=======
    friendship.update(status: 1)
    expect(friendship.status).to be(1)
>>>>>>> Apply review suggestions
  end

  it 'creates valid friendship' do
    expect(friendship.save).to be(true)
  end

  context 'is not saved because it' do
<<<<<<< HEAD
    it 'forbid status not in [0, 1, 2]' do
      should validate_presence_of(:status)
      friendship.update(status: 3)
    rescue ArgumentError => e
      expect(e).to be_present
=======
    it 'forbids status not in [0, 1]' do
      friendship.update(status: '')
      expect(friendship.errors[:status]).to be_present
>>>>>>> Apply review suggestions
    end

    it 'requires acceptor user' do
      friendship.acceptor = nil
      friendship.save
      expect(friendship.errors[:acceptor]).to be_present
    end

    it 'requires requestor user' do
      friendship.requestor = nil
      friendship.save
      expect(friendship.errors[:requestor]).to be_present
    end
  end
end
