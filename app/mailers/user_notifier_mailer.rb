class UserNotifierMailer < ApplicationMailer
    default :from => 'mliendo05@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
=begin     def send_signup_email(user)
        @user = user
        mail( :to => @user.email, :subject => 'Thanks for signing up for our disney app' )
    end =end
end
