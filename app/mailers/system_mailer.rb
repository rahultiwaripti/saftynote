class SystemMailer < ActionMailer::Base
  default from: "Contact@SafetyNotice.com <contact@safetynotice.com>"
  @@which_message = 0
  def track_email(employee, lovedone, follower, sponsor)
        @employee = employee
        @lovedone = lovedone
        #@sponsors = Sponsor.all
        @sponser = sponsor
        @which_message = @@which_message
        if @which_message < 2
            @@which_message = @which_message + 1
        else
            @@which_message = 0
        end 
        mail(to: follower.user.email, subject: 'Update to your loved one.')


        #BELOW IS ALL COMMENTED
=begin        
        approved_followers = @employee.lovedone.followers.approved_followers
        approved_followers.each do |follower|
            puts "INSIDE FOLLOWER "    
            #puts "FOUND FOLLOWER " + follower.user.email
            #create a notification object
            mail(to: follower.user.email, subject: 'Update to your loved one.')

            begin
                notification = Notification.create(employee: @employee, lovedone: @employee.lovedone, follower: follower,primary_contact: nil, status: @employee.service_status , notification_type: "email")
            rescue => ex
              logger.error ex.message            
            end    
            #automatically rotates
            @sponser = Sponsor.next(@@sponser.id)
            if !@@sponser
                @@sponser = Sponsor.previous(0)
            end            
            @@sponser = @sponser
        end      
        #also send notification to primary contact 
        primary_contact = PrimaryContact.find_by_lovedone_id(@employee.lovedone)
        if primary_contact
            puts "GOT PRIMARY CONTACT"
            if primary_contact.user
            mail(to: primary_contact.user.email, subject: 'Update to your loved one.')

            begin
                notification = Notification.create(employee: @employee, lovedone: @employee.lovedone, 
                    follower: nil,primary_contact: primary_contact, status: @employee.service_status , notification_type: "email")
            rescue => ex
              logger.error ex.message            
            end    
            #automatically rotates
            @sponser = Sponsor.next(@sponser.id)
            if !@@sponser
                @@sponser = Sponsor.previous(0)
            end            
            @@sponser = @sponser                
            end    
        else
            puts "NO PRIMARY CONTACT"
        end     
=end      
  end      

  def invite_email(to, primary_contact_name, lovedone_name, invitation_id)
    @primary_contact_name = primary_contact_name
    @lovedone_name = lovedone_name
    @invitation_id = invitation_id
    mail(to: to, subject: 'Saftey Notice Family Member Enrollment Invitation')
  end

  def receiveapp_email(to)
    mail(to: to, subject: 'SafetyNotice.com notification email')
  end

  def approveapp_email(to)
    mail(to: to, subject: 'SafetyNotice.com notification email')
  end

  def invoice_email(invoice, sender)

    @sender = sender

    @to = invoice.sponsor.email
    @title = invoice.title
    @amount = invoice.amount
    @start_date = invoice.start_date
    @end_date = invoice.end_date
    @message_count = invoice.message_count

    mail(to: @to, subject: @title)
  end
end
