class NotificationMailer < ApplicationMailer
    default from: "no-reply@nomsterapp.com"

    def comment_added
        mail(to: 'tobiaspasquale@gmail.com',
                subject: "A comment was added to your place!")
    end

end
