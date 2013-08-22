# Ans::Validators

バリデーションクラスを提供

* confirmation_of : confirmation というバリデーションは用意されているが、それでは満足できない人向け

## Installation

Add this line to your application's Gemfile:

    gem 'ans-validators'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ans-validators

## Usage

### confirmation_of

    validates :email_confirmation, confirmation_of: true

confirmation というバリデーションは用意されています

    validates :email, confirmation: true

`confirmation` は `email` に対するバリデーションであるのに対して、 `confirmation_of` は、 `email_confirmation` カラムに対するバリデーションです

なにがうれしいのか？ → errors で `email_confirmation` がエラーになります  
`email_confirmation` がエラーであること、つまり「同じ内容を入力してください」の表示が簡単にできます

メッセージが指定できるのでは？ → フォームごとにエラーを表示したかったので。  
confirmation バリデーションのエラーだと、メッセージの内容で表示する位置を変えなければなりません

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
