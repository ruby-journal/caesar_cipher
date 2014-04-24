# Caesar's Cipher

A simple Ruby implementation of [Casar's Cipher](http://en.wikipedia.org/wiki/Caesar_cipher)
This is mainly intended for exercising Ruby, designed for students who's undertaking Ruby course.

## Usage

    require 'caesar_cipher'

    # Encrypt
    CaesarCipher.encrypt(string, shift_key: 3)

    # Decrypt
    CaesarCipher.decrypt(encrypted_string, shift_key: 3)

## Source Code

    git clone http://github.com/ruby-journal/caesar_cipher.git

## Testing

    bundle exec rake test

## LICENSE

see [LICENSE](LICENSE)
