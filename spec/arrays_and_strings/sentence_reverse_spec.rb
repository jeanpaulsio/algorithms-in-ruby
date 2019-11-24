# frozen_string_literal: true

require_relative '../spec_helper'
require_relative '../../lib/arrays_and_strings/sentence_reverse'

describe SentenceReverse do
  it 'works with nil input' do
    actual = SentenceReverse.run(nil)
    expect(actual).must_be_nil
  end

  it 'works with an empty string' do
    actual = SentenceReverse.run('')
    expect(actual).must_be_nil
  end

  it 'works with a single space' do
    actual = SentenceReverse.run(' ')
    expect(actual).must_be_nil
  end

  it 'works with a single letter' do
    actual = SentenceReverse.run('a')
    expect(actual).must_equal('a')
  end

  it 'works with a single word' do
    actual = SentenceReverse.run('abc')
    expect(actual).must_equal('abc')
  end

  it 'works with word starting in space' do
    actual = SentenceReverse.run(' abc')
    expect(actual).must_equal('abc')
  end

  it 'works with word ending in space' do
    actual = SentenceReverse.run('abc ')
    expect(actual).must_equal('abc')
  end

  it 'works with two words' do
    actual = SentenceReverse.run('hello world')
    expect(actual).must_equal('world hello')
  end

  it 'works with a sentence' do
    actual = SentenceReverse.run('hello world i am jp')
    expect(actual).must_equal('jp am i world hello')
  end
end
