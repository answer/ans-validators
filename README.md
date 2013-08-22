# Ans::Validators

バリデーションクラスを提供

* confirmation_of : confirmation というバリデーションは用意されているが、それでは満足できない人向け

注) この gem のクラスは Ans::Validators モジュールではなく、トップレベルにクラスを定義しています  
バリデーション指定時にめんどくさいから  
アプリケーションに同じクラスが存在する場合、この gem のクラスが優先されてしまうので、 config の設定でそのクラスを無効にしてください

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

## 設定

以下のようにすることで、特定の validator クラスを読み込まなくします

    # config/initializers/ans-validators.rb
    Ans::Validators.configure do |config|

      # confirmation_of を無効化
      config.validators[:confirmation_of] = false

    end

アプリケーションに同じ名前のクラスがある場合にこの gem のクラスを無効にする設定です

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
