require 'simplecov'
SimpleCov.start
require 'muzyka'

RSpec.describe 'muzyka.rb' do
  before :each do
    @muzyka = Muzyka.new :id, :title, :author, :yop
  end
  describe '#id' do
    it 'returns the correct id' do
      expect(@muzyka.id).to eq(:id)
    end
  end
  describe '#tytul' do
    it 'returns the correct title' do
      expect(@muzyka.title).to eq(:title)
    end
  end
  describe '#autor' do
    it 'returns the correct autor' do
      expect(@muzyka.author).to eq(:author)
    end
  end
  describe '#rok_wydania' do
    it 'returns the correct year of production' do
      expect(@muzyka.yop).to eq(:yop)
    end
  end
  describe '#new' do
    it 'when creates new object' do
      expect(@muzyka).to be_an_instance_of(Muzyka)
    end
  end
end
