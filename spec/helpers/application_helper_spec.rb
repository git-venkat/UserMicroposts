require 'spec_helper'
describe 'ApplicationHelper' do
	describe 'full_title' do
		it 'should include the page title' do
			expect(full_title("foo")).to match(/foo/)
		end
		it 'should have the base title' do
			expect(full_title('foo')).to match(/^Ruby on Rails Tutorial Sample App/)
		end
		it 'should not include bar for the home page' do
			expect(full_title('')).not_to match(/\|/)
		end
	end
end