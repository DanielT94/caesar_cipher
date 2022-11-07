# frozen_string_literal: true

require './lib/caesar_cipher'

describe CaesarCipher do
  subject { CaesarCipher.new }

  describe '#shift' do
    it 'works with small positive shift' do
      expect(subject.shift('Gg', 3)).to eql('Jj')
    end

    it 'works with a small negative shift' do
      expect(subject.shift('Jj', -3)).to eql('Gg')
    end

    it 'works with large positive shift' do
      expect(subject.shift('Gg', 45)).to eql('Zz')
    end

    it 'works with large negative shift' do
      expect(subject.shift('Zz', -20)).to eql('Ff')
    end

    it 'works with punctuation and spaces' do
      expect(subject.shift('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end
  end
end
