class UsersController < ApplicationController
  before_action :authenticate_user,{only:[:index,:show,:edit,:update]}
  before_action :forbid_login_user,{only: [:new,:create,:login_form,:login]}
  before_action :ensure_correct_user,{only: [:edit,:update]}

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "飼い主になったニャ！"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    if @user.save
      flash[:notice] = "やりなおしたニャ！"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end

  def icon_update
    @user = User.find_by(id: params[:id])
    @user.image_name = params[:image_name]
    if @user.save
      flash[:notice] = "アイコンを変更したにゃ！"
      redirect_to("/users/#{@user.id}/edit")
    else
      render("users/edit")
    end
  end

 def icon_destroy
   @user=User.find_by(id:params[:id])
   @user.image_name = nil
   @user.save
   flash[:notice]="アイコンを削除したニャ！"
   redirect_to("/users/#{@user.id}/edit")
 end

 def login_form
 end

 def login
   @user=User.find_by(email: params[:email])
   if @user && @user.authenticate(params[:password])
     session[:user_id] = @user.id
     flash[:notice]="ログインしたニャ！"
     redirect_to("/posts/index")
   else
     @error_message="メールアドレスまたはパスワードが間違っています"
     @email=params[:email]
     @password=params[:password]
     render("users/login_form")
   end
 end

 def logout
   session[:user_id] = nil
   flash[:notice]="ログアウトしたニャ！"
   redirect_to("/login")
 end

 def likes
   @user=User.find_by(id:params[:id])
   @likes=Like.where(user_id:@user.id)
 end

 def ensure_correct_user
   if @current_user.id != params[:id].to_i
       flash[:notice] ="別の飼い主だニャ！"
       redirect_to("/posts/index")
   end
 end

end
