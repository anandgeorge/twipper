# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Twipper.Repo.insert!(%Twipper.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Twipper.Repo
alias Twipper.Timeline.Post

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@BTC P@68000 E@69000 S@64000",
  likes_count: 200,
  reposts_count: 1000
})

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@BTC P@68000 E@69000 S@64000",
  likes_count: 200,
  reposts_count: 1000
})

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@BTC P@68002 E@69000 S@64000",
  likes_count: 200,
  reposts_count: 1000
})

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@BNB P@545 E@580 S@520",
  likes_count: 200,
  reposts_count: 1000
})

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@BTC P@68200 E@69000 S@64000",
  likes_count: 200,
  reposts_count: 1000
})

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@ADA P@2.3 E@2.5 S@2.1",
  likes_count: 200,
  reposts_count: 1000
})

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@BTC P@67200 E@69000 S@64000",
  likes_count: 200,
  reposts_count: 1000
})

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@BTC P@67100 E@69000 S@64000",
  likes_count: 200,
  reposts_count: 1000
})

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@BNB P@585 E@615 S@550",
  likes_count: 200,
  reposts_count: 1000
})

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@BTC P@67000 E@69000 S@64000",
  likes_count: 200,
  reposts_count: 1000
})

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@ADA P@2.5 E@2.8 S@2.2",
  likes_count: 200,
  reposts_count: 1000
})

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@BTC P@67000 E@69000 S@64000",
  likes_count: 200,
  reposts_count: 1000
})

Repo.insert!(%Post{
  username: "anandgeor",
  body: "B@BTC P@67000 E@69000 S@64000",
  likes_count: 200,
  reposts_count: 1000
})
