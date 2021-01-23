require 'simplecov'
SimpleCov.start
require 'diary'

describe Diary do
  entry = Entry.new('title', 'body')
  diary =  Diary.new(Entry)
  
  it 'instantiates an entry when initialized' do
    expect(subject.entry).to eq Entry
  end

  it 'is empty when initialized' do
    expect(subject.entries).to eq []
  end

  describe '#add' do
    it 'adds a title and a body' do
      subject.add('title', 'body of the text')

      expect(subject.entries.length).to eq 1
    end
  end
end