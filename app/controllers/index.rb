get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/see_cars' do
  @cars = Car.all
  erb :see_cars
end

get '/cars/:id' do
  @car = Car.find(params[:id])
  erb :show_car
end

get '/create_car_form' do
  erb :create_car_form
end

post '/create_car' do
  Car.create(price: params[:price], make: params[:make], model: params[:model], owner_id: '1')
  redirect to 'see_cars'
end

get 'car/:id/edit' do
  @car = Car.find(params[:id])
  erb :edit_car
end

get '/car/:id/delete' do
  @car = Car.find(params[:id])
  @car.destroy
  redirect :see_cars
end

get '/see_lawnmowers' do
  @lawnmowers = Lawnmower.all
  erb :see_lawnmowers
end

get '/lawnmowers/:id' do
  @lawnmower = Lawnmower.find(params[:id])
  erb :show_lawnmower
end

get '/create_lawnmower_form' do
  erb :create_lawnmower_form
end

post '/create_lawnmower' do
  Lawnmower.create(price: params[:price], make: params[:make], model: params[:model], owner_id: '1')
  redirect to 'see_lawnmowers'
end

get '/lawnmower/:id/delete' do
  @lawnmower = Lawnmower.find(params[:id])
  @lawnmower.destroy
  redirect :see_lawnmowers
end