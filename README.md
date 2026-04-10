# RailsTodoApp

Rails 製の Todo 管理アプリケーションです。

## 動作環境

- Ruby 4.0.2
- Rails 8.1.3
- PostgreSQL 17
- Docker / Docker Compose

## 環境構築

### 1. リポジトリのクローン

```bash
git clone https://github.com/river3570/RailsTodoApp.git
cd RailsTodoApp
```

### 2. Docker コンテナの起動

```bash
docker compose up --build
```

初回起動時にイメージのビルドと `bundle install` が自動で実行されます。

### 3. データベースの作成とマイグレーション

```bash
docker compose exec web rails db:create db:migrate
```

### 4. アクセス

ブラウザで [http://localhost:3000](http://localhost:3000) を開いてください。

---

### コンテナの停止

```bash
docker compose down
```

データベースのデータも削除する場合：

```bash
docker compose down -v
```
