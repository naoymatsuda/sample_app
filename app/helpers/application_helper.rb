module ApplicationHelper
  # def full_title(page_title = '')
  #   base_title = "Ruby on Rails Tutorial Sample App"
  #   if page_title.empty?
  #     base_title
  #   else
  #     page_title + " | " + base_title
  #   end
  # end
  
  def full_title(page_title = '')                     # メソッド定義とオプション引数
    base_title = "Ruby on Rails Tutorial Sample App"  # 変数への代入
    if page_title.empty?                              # 論理値テスト
      base_title                                      # 暗黙の戻り値
    else 
      page_title + " | " + base_title                 # 文字列の結合
    end
  end
  
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
