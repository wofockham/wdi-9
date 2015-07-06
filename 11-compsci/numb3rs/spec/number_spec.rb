require_relative '../number'

describe Number do

  describe '.bin2dec' do
    it 'converts binary to decimal' do
      expect(Number.bin2dec('1101')).to eq 13
      expect(Number.bin2dec('0000')).to eq 0
      expect(Number.bin2dec('1111')).to eq 15
      expect(Number.bin2dec('11111111')).to eq 255
    end
  end

  describe '.dec2bin' do
    it 'converts decimal to binary' do
      expect(Number.dec2bin(13)).to eq '1101'
    end
  end

  describe '.bin2hex' do
    it 'converts binary to hexadecimal' do
      expect(Number.bin2hex('11111111')).to eq 'ff'
    end
  end

  describe '.hex2bin' do
    it 'converts hexadecimal to binary' do
      expect(Number.hex2bin('ff')).to eq '11111111'
    end
  end

end









