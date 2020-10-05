require 'rspec/autorun'

describe Membership do
  describe '#promote_to_admin' do
    it 'makes a regular membership promoted to admin'
    membership = Membership.new(admin: false)

    membership.promote_to_admin

    expect(membership.admin?).to eq(true)
  end
end
