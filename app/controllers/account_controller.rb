class AccountController < ApplicationController
  #@Accounts = Account.order(id: :desc).all
    def index
     # @Account = Account.new
      
    end
  
    def new
      @Account = Account.new
    end
  
    def create
      @Account = Account.new(account_params)
  
      if @Account.save
        redirect_to [:account, @account], notice: 'Account created!'
      else
        render :new
      end
    end
  
    def destroy
      @Account = Account.find params[:id]
      @Account.destroy
      redirect_to [:account, :accounts], notice: 'Account deleted!'
    end
  
    private
  
    def account_params
      params.require(:account).permit(
        :Fname,
        :Lname,
        :email,
        :password
      )
    end
end
