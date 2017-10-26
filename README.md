# Skipio Rails

## Development

- Install Ruby 2.4.2 and Rails 5.1.4

- Install dependencies
```bash
gem install bundle
bundle
```
- Create .env at the root of the project file and add Skipio API Token
```bash
vim .env
```
```bash
/.env

SKIPIO_API_TOKEN=XXXXXXXXXXXXXXXXX
```
- Start Puma server
```bash
rails s
```
- Open browser to localhost:3000