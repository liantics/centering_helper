# CenteringHelper
A bit of css and a view helper to make it easy to center content in a view with
just two lines of code.

## Installation

Add this line to your application's Gemfile:

    gem 'centering_helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install centering-helper

## Usage
Once the gem is installed, it's super simple.

### Include the CSS file
Add the following to your app/stylesheets/application.css:

    *= require centering_helper

... somewhere above:

    *= require tree .

### Add Two Lines of Code to Your View
In the view code, find the content you want to center. For example, if you want
to center an image:

    <%= image_tag  @project.image_url(:standard_size) %>

Wrap the content with the centering commands:

    <% start_centering %>
      <%= image_tag  @project.image_url(:standard_size) %>
    <% end_centering %>

That's it!

This will automatically wrap the content with divs that will center the content.


#### Caveat
The content will be centered within whatever contains it.

##### What this means:

Let's say you have a page with 2 columns of non-centered data:

    |Col 1| |Col 2|
    |     | |     |
    | .   | |     |
    |     | |     |
    |     | |     |

And you place the start and end commands inside the div tags for the left hand
column - this will center the data within that enclosing div:

    |Col 1| |Col 2|
    |     | |     |
    |  .  | |     |
    |     | |     |
    |     | |     |

It will not center the data within the page:

    |Col 1| |Col 2|
    |     | |     |
    |     |.|     |
    |     | |     |
    |     | |     |

So if the content ends up centered someplace other than you expected, take a
look at the enclosing divs or any divs in between the commands. You may want to
move the <% start_centering %> and <% end_centering %> commands to outside the
enclosing divs, or to inside nested divs, etc.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/centering-helper/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
