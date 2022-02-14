require 'rails_helper'

describe NewRegistrationService do
  subject(:registration_service) { described_class }

  describe 'create and accounts' do
    context 'from form input' do
      let(:account) { build(:account) }
      let(:bad_account) { build(:account, { name: nil }) }
      let(:user) { build(:user) }

      before do
        allow(Slack::Notifier).to receive_message_chain(:new, :ping) { nil }
      end

      it 'creates an account' do
        expect{
          registration_service
          .new(account: account, user: user)
          .process_registration
      }.to change(Account, :count).by(1)
      end

      it 'does not create an account on invalid object' do
        expect{
          registration_service
          .new(account: bad_account, user: user)
          .process_registration
        }.to change(Account, :count).by(0)
      end

      it 'creates a user' do
        expect_any_instance_of(
          described_class
        ).to receive(:send_welcome_email).once
        registration_service
        .new(account: account, user: user)
        .process_registration
      end

      it 'sends a message to be passed to slack method' do
        expect_any_instance_of(
          described_class
        ).to receive(:notify_slack).once
        registration_service
        .new(account: account, user: user)
        .process_registration
      end
    end
  end
end
