# 宿題アプリケーション

# １ 概要
* ユーザー登録
* 問題一覧表示機能
* 問題解答機能
* 答え合わせ
* 成績保存
* 成績表示

### DEMO
#### ユーザー登録
![image](https://user-images.githubusercontent.com/75596850/109808614-b2054700-7c6a-11eb-8c4a-166b04a610be.png)
#### 問題一覧表示機能
![image](https://user-images.githubusercontent.com/75596850/109808445-779baa00-7c6a-11eb-96b4-184974891cda.png)
#### 問題解答機能
![image](https://user-images.githubusercontent.com/75596850/109809007-263fea80-7c6b-11eb-94c4-8a21cc17420c.png)
#### 答え合わせ
![image](https://user-images.githubusercontent.com/75596850/109809842-1ecd1100-7c6c-11eb-95d2-bdccc2d51c3e.png)
#### 成績表示
![image](https://user-images.githubusercontent.com/75596850/109810118-779ca980-7c6c-11eb-92fe-a344a9a86b5e.png)












# 2 本番環境

## デプロイ先
 https://homework33051.herokuapp.com/



## テストアカウント

### アドレス



### パスワード



# 3 制作の意図
rubyの勉強で、クラスやインスタンス、メソッドの作成などを行ったが、railsを用いたアプリケーションの開発と、その勉強とが今一つリンクしなかった。そこで、以前塾の講師をしていたこともあり、問題作成メソッドを定義し、それを用いた宿題用の簡単な計算問題アプリの開発を目指した。



# 4 工夫した点


# 5 使用技術(開発環境)

* フロントエンド：Html,CSS,javascript
* バックエンド：Ruby on Rails 6.0.3
* DB：mysql2 0.5.3
* テスト:RSpec/factory_bot


# 6 課題や今後実装したい機能



# 7 テーブル設計
## usersテーブル

| Colum           | Type       | Options                        |
|-----------------|------------|--------------------------------|
| email           | string     | null: false                    |
| nickname        | string     | null: false                    |
| password        | string     | null: false                    |


### Association

- has_many :questions


## questionsテーブル

| Colum          | Type        | Options                        |
|----------------|-------------|--------------------------------|
| question_index | string      | null: false                    |
| score          | integer     | null: false                    |
| user_id        | references  | null: false, foreign_key: true |

### Association

- belongs_to :user


