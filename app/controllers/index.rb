get '/' do
  erb :index
end

post '/signup' do
  puts "#{params}"
  user = User.create(params[:user])
  @message = "Signed up. You may now login."
  erb :index
end

<h2>Login</h2>
  <form method=post action=/login>
    <input type=text placeholder="Email" name="user[email]"><br>
    <input type=password placeholder="Password" name="user[password]"></br>
    <input type=submit value="Login">
  </form>