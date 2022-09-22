# Hello World Rails => Back-End

This Hello World project implements an API endpoint on Ruby on rails that will be connect to the React fron-end through the two repos aprroach for web development.

### Prerequisites
 - First of all make sure you have `PSQL`, `Ruby` & `Rails` installed in your machine

- You should have ruby installed in your machine, you can follow the steps given by the [official documentation](https://www.ruby-lang.org/en/documentation/installation/)

- After you installed Ruby, now you can install `Rails` with this simple command: ```gem install rails```.

- You should have a postgres user with superuser permissions. you can refer to the official [postgres documentation](https://www.postgresql.org/docs/current/role-attributes.html#:~:text=To%20create%20a%20new%20database,that%20is%20already%20a%20superuser.&text=A%20role%20must%20be%20explicitly,use%20CREATE%20ROLE%20name%20CREATEDB%20.) to create or update a role.

### Install

 - clone the project with the following command line : 
```
$ git clone git@github.com:fabianofrank/hello-rails-backend.git
```
 - Then go to the folder
```
$ cd hello-rails-backend
```

## Getting Started

This repository includes files with Ruby that can be used to test the created main classes from the app

Clone this link into your local device.

To run test make sure that rspec-rails and capybara libraries are installed in your project

To double check please run:
```
bundle install
yarn install
```
This will install both gems if they were missing in your environment.

Run the server:
```
./bin/dev
```

or

Build manually and run the server with rails:

```
yarn build
```

 - Finaly run `rails s` and visit http://localhost:3000 in your browser!
 - If you want to checkout the API endpoints go to: http://localhost:3000/api/greetings


## Built With

 - Ruby on RAils  <img src="https://cdn.emojidex.com/emoji/seal/Ruby.png" width=15px>
 - PostgreSQL <img src="https://user-images.githubusercontent.com/80895497/142954032-f7072df9-3586-48f9-a9e0-7fdd284eb833.png" width=15px>
 - React
 - Webpack
</br>

## Author

👤 **Fabiano Frank**

- GitHub: [@fabianofrank](https://github.com/fabianofrank)
- Twitter: [@fabianofrankk](https://twitter.com/fabianofrankk)
- LinkedIn: [@fabianofrank](https://www.linkedin.com/in/fabianofrank/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/fabianofrank/rails-blog-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Inspiration 💘
- Microverse program ⚡
- My standup team 😍
- My family's support 🙌
- MicroBros 😜

## 📝 License

This project is [MIT](https://github.com/fabianofrank/rails-blog-app/blob/develop/LICENSE.md) licensed.
