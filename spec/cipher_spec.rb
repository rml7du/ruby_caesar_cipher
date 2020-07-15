require '/Users/robertlee/TOP/ruby_caesar_cipher/caesar_cipher.rb'

describe "#shift_letters" do
  it 'returns letters shifted by a number' do
    expect(encrypt('Aaa', 1)).to eql('Bbb')
  end

  it 'returns letters shifted by a number' do
    expect(encrypt('Bbb', 1)).to eql('Ccc')
  end

  it 'wraps' do
    expect(encrypt('Zz', 1)).to eql('Aa')
  end

  it 'returns shifted letters without shifting non-letters' do
    expect(encrypt('Love you Tilda!', 5)).to eql('Qtaj dtz Ynqif!')
  end

  it 'shifts letters for large numbers' do
    expect(encrypt('Love you Tilda!', 75)).to eql('Ilsb vlr Qfiax!')
  end

  it 'skips numbers when shifting' do
    expect(encrypt('My birhday is on the 17th!', 75)).to eql('Jv yfoeaxv fp lk qeb 17qe!')
  end

  it 'preserves space when shifting' do
    expect(encrypt('My     birhday is on  the 17th!', 7)).to eql('Tf     ipyokhf pz vu  aol 17ao!')
  end
end