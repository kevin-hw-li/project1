# WHAT YOU ARE BUILDING - FEATURES

#### => a facebook/twitter like web app

#### => groups of users

#### => users must sign up / sign in to access additional features such as:
-> upload images and videos or link them from other sources <br>
-> Cloudinary -> <%= form_for(@something, :html => {:multipart => true}) do |f| %> <br>
-> Cloudinary -> <%= f.label "Image:" %> <br>
-> Cloudinary -> <%= f.cl_image_upload :image %> <br>

-> create events <br>
-> send and accept friend requests

-> edit and delete posts as a user
-> comment inside posts (will need an additional table 'comment' which belongs_to 'post' and 'user')
-> search for a user
-> display posts of a user (like a profile page on fb)

#### => (maybe) guest users can still make text comments without the need to sign up / sign in


# MODELS REQUIRED
#### User
-> has_many :friendships <br>
-> has_many :friends, :through => :friendships <br>
-> has_many :posts (to show who made a post)

###### => COLUMNS
-> name: string <br>
-> email: string <br>
-> password_digest: string


#### Friendship
-> belongs_to :user <br>
-> belongs_to :friend, :class_name => "User"

###### => COLUMNS
-> user_id: integer <br>
-> friend_id: integer


#### Post
###### => COLUMNS
-> message: text <br>
-> image: string <br>
-> video: string <br>
-> user_id: integer (to show who made a post)



# PAGES REQUIRED





## ROUTES REQUIRED
