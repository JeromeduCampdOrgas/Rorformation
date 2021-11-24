require "test_helper"

class ContactMailerTest < ActionMailer::TestCase
   def contact
        mail(to: 'contact@test.fr', subject: 'Sujet de test')
    end
end
