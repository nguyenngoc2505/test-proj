# A small Lotus app demo
#### To start the server:

```
  bundle exec lotus server
```
Then you could browse the site with `0.0.0.0:2300`

- The admin page is /admin with username and password in `config/.env.development`
- The web client page is /
- THe API is /v1/api. You can do it with `curl` command: `curl -i -H "Accept: application/json" http://0.0.0.0:2300/api/v1/posts` or `curl -i -H "Accept: application/json" http://0.0.0.0:2300/api/v1/posts/:id` to show post
