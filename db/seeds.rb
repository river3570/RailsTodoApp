users_data = [
  { nickname: "sato", email: "sato@example.com", password: "password" },
  { nickname: "suzuki",   email: "suzuki@example.com",   password: "password" },
  { nickname: "abe", email: "abe@example.com", password: "password" }
]

todos_data = [
  [
    { title: "買い物リストを作る",   context: "日用品の購入リストを作成する",       completed: false },
    { title: "運動する",             context: "30分のジョギングをする",             completed: true  },
    { title: "本を読む",             context: "読みかけの小説を読み終える",          completed: false }
  ],
  [
    { title: "メールを返信する",     context: "未読メールをすべて返信する",          completed: false },
    { title: "レポートを提出する",   context: "週次レポートを上司に送る",            completed: true  },
    { title: "ミーティングの準備",   context: "明日の会議資料をまとめる",            completed: false }
  ],
  [
    { title: "部屋を掃除する",       context: "リビングとキッチンを掃除する",        completed: false },
    { title: "料理を作る",           context: "夕食に新しいレシピを試す",            completed: false },
    { title: "友人に連絡する",       context: "久しぶりに友人に近況報告する",        completed: true  }
  ]
]

users_data.each_with_index do |user_attrs, index|
  user = User.find_or_create_by!(email: user_attrs[:email]) do |u|
    u.nickname = user_attrs[:nickname]
    u.password = user_attrs[:password]
  end

  todos_data[index].each do |todo_attrs|
    user.todos.find_or_create_by!(title: todo_attrs[:title]) do |t|
      t.context   = todo_attrs[:context]
      t.completed = todo_attrs[:completed]
    end
  end
end
