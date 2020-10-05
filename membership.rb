# the code isn't done

require 'rspec/autorun'

class Membership
  def initialize(user, group, admin = false)
    @user = user
    @group = group
    @admin = admin
  end

  def promote_to_admin
    @admin = true
  end

  def admin?
    promote_to_admin ? true : false
  end
end

# use before(:each) to run this code before every test
# https://thoughtbot.com/upcase/videos/telling-a-story-with-your-tests

describe Membership do
  before(:each) do
    chocolate_membership.promote_to_admin
  end

  let(:user) { User.new('Bill Wonka') }
  let(:chocolate_group) { Group.new('Chocolate Factory') }
  let(:peach_group) { Group.new('Peach Factory') }
  let(:chocolate_membership) { Membership.new(user: user, group: chocolate_group, admin: false) }
  let(:peach_membership) { Membership.new(user: user, group: peach_group, admin: false) }

  describe '#promote_to_admin' do
    it 'makes a regular membership promoted to admin'

    membership.promote_to_admin

    expect(membership.admin?).to eq(true)
  end
end
