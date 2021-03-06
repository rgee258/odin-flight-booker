# Flight Booker

This repo is used to host a simulated one-way flight booker using Rails.

A user will go through the process of selecting available flights according to their
preferred airport and date of travel. Once decided upon, they will be able to provide
their personal information and properly book their flight.

This application contains more advanced form concepts in Rails, such as nested forms
and usage of helpers such as select_tag. It was created for the purpose of learning
about them and putting them to practical use.

The latest update to this application added a mailer, which can be used and viewed
when booking in a development environment.

This project is done following The Odin Project, which this project in particular can
be found [here](https://www.theodinproject.com/courses/ruby-on-rails/lessons/building-advanced-forms).

## Usage Instructions

Download this repo to the location of your choosing and then start up a rails server
using your localhost.

On the root page, search for a flight using available airport codes and confirmed
flight dates, results will appear if there are available flights. The passenger count
that you choose will be between 1 - 4 people.

After selecting your flight, the booking confirmation page will appear where you
enter each passenger's name and email to confirm your flight booking.

If your booking is successful, you will be sent to the information page containing
your booking details and have successfully booked a flight. If not you will be 
redirected to the root page again. Try your flight choice again and ensure all
passenger info is correctly entered.

This application contains mailers used for sending out "Thank You" emails whenever
a booking is completed to the supplied emails for its passengers. This is currently
performed only in the development environment through the usage of the 
[Letter Opener gem](https://github.com/ryanb/letter_opener). When a booking is
submitted in development, Letter Opener will open up a browser view of the expected
emails. Should this application be used in an actual production setting, the production
config will need to be accordingly changed to support the sending of emails.