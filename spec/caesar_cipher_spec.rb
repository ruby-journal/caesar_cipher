require 'spec_helper'

describe CaesarCipher do
  let(:message) { 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' }

  let(:encrypted_message_by_shift_key_3) { 'XYZABCDEFGHIJKLMNOPQRSTUVW' }
  let(:encrypted_message_by_shift_key_1) { 'ZABCDEFGHIJKLMNOPQRSTUVWXY' }

  describe '.encrypt' do
    it 'encrypts message' do
      CaesarCipher.encrypt(message, shift_key: 3).must_equal(encrypted_message_by_shift_key_3)
      CaesarCipher.encrypt(message, shift_key: 1).must_equal(encrypted_message_by_shift_key_1)
    end
  end

  describe '.decrypt' do
    it 'decrypts message' do
      CaesarCipher.encrypt(encrypted_message_by_shift_key_3, shift_key: 3).must_equal(message)
      CaesarCipher.encrypt(encrypted_message_by_shift_key_1, shift_key: 1).must_equal(message)
    end
  end
end
