# Heimdall

https://hexdocs.pm/phoenix/up_and_running.html

Visit this link for instructions on how to install Phoenix, Elixir, and the hard deps (Erland, Postgres, Node etc...) and get it running.

OK, so we need this thing to generate a check digit so that our barcodes can work.
Suppose that you want to find the check digit of UPC-A number 72641217542.
From the right to the left, start with odd position, assign the odd/even position to each digit.
Sum all digits in odd position and multiply the result by 3: (7+6+1+1+5+2)*3=66
Sum all digits in even position: (2+4+2+7+4)=19
Sum the results of step three and four: 66+19=85
Divide the result of step four by 10. The check digit is the number which adds the remainder to 10.
In our case, divide 85 by 10 we get the remainder 5.
The check digit then is the result of >10-5=5.
If there is no remainder then the check digit equals zero.
http://www.azalea.com/white-papers/upc-barcode-check-digit/


















To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
