require 'rails_helper'

RSpec.describe Image do
  it 'exists with attributes' do
    data = {
      "id": "yJ2SHIpNb9M",
      "created_at": "2018-10-27T03:32:26Z",
      "updated_at": "2023-03-08T01:05:00Z",
      "promoted_at": null,
      "width": 3888,
      "height": 2184,
      "color": "#f3d9c0",
      "blur_hash": "LnGSx=%KaKoJ~pxZodoL#Qaet7j[",
      "description": "The picture taken in Laos, 06:00, from hot baloon",
      "alt_description": "time lapse photography of flying hot air balloon",
      "urls": {
          "raw": "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3",
          "full": "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3&q=80",
          "regular": "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3&q=80&w=1080",
          "small": "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3&q=80&w=400",
          "thumb": "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3&q=80&w=200",
          "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1540611025311-01df3cef54b5"
      },
      "links": {
          "self": "https://api.unsplash.com/photos/yJ2SHIpNb9M",
          "html": "https://unsplash.com/photos/yJ2SHIpNb9M",
          "download": "https://unsplash.com/photos/yJ2SHIpNb9M/download?ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw",
          "download_location": "https://api.unsplash.com/photos/yJ2SHIpNb9M/download?ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw"
      },
      "likes": 88,
      "liked_by_user": false,
      "current_user_collections": [],
      "sponsorship": null,
      "topic_submissions": {},
      "user": {
          "id": "ZQPn47Cdz4Y",
          "updated_at": "2023-03-07T21:01:38Z",
          "username": "ybitran",
          "name": "Yosi Bitran",
          "first_name": "Yosi",
          "last_name": "Bitran",
          "twitter_username": null,
          "portfolio_url": null,
          "bio": null,
          "location": null,
          "links": {
              "self": "https://api.unsplash.com/users/ybitran",
              "html": "https://unsplash.com/@ybitran",
              "photos": "https://api.unsplash.com/users/ybitran/photos",
              "likes": "https://api.unsplash.com/users/ybitran/likes",
              "portfolio": "https://api.unsplash.com/users/ybitran/portfolio",
              "following": "https://api.unsplash.com/users/ybitran/following",
              "followers": "https://api.unsplash.com/users/ybitran/followers"
          },
          "profile_image": {
              "small": "https://images.unsplash.com/profile-fb-1540610405-4740e7320e76.jpg?ixlib=rb-4.0.3&crop=faces&fit=crop&w=32&h=32",
              "medium": "https://images.unsplash.com/profile-fb-1540610405-4740e7320e76.jpg?ixlib=rb-4.0.3&crop=faces&fit=crop&w=64&h=64",
              "large": "https://images.unsplash.com/profile-fb-1540610405-4740e7320e76.jpg?ixlib=rb-4.0.3&crop=faces&fit=crop&w=128&h=128"
          },
          "instagram_username": null,
          "total_collections": 0,
          "total_likes": 7,
          "total_photos": 27,
          "accepted_tos": true,
          "for_hire": false,
          "social": {
              "instagram_username": null,
              "portfolio_url": null,
              "twitter_username": null,
              "paypal_email": null
          }
      },
      "tags": [
          {
              "type": "search",
              "title": "vang vieng"
          },
          {
              "type": "search",
              "title": "laos"
          },
          {
              "type": "landing_page",
              "title": "blue",
              "source": {
                  "ancestry": {
                      "type": {
                          "slug": "wallpapers",
                          "pretty_slug": "HD Wallpapers"
                      },
                      "category": {
                          "slug": "colors",
                          "pretty_slug": "Color"
                      },
                      "subcategory": {
                          "slug": "blue",
                          "pretty_slug": "Blue"
                      }
                  },
                  "title": "Hd blue wallpapers",
                  "subtitle": "Download free blue wallpapers",
                  "description": "Choose from a curated selection of blue wallpapers for your mobile and desktop screens. Always free on Unsplash.",
                  "meta_title": "Blue Wallpapers: Free HD Download [500+ HQ] | Unsplash",
                  "meta_description": "Choose from hundreds of free blue wallpapers. Download HD wallpapers for free on Unsplash.",
                  "cover_photo": {
                      "id": "DbwYNr8RPbg",
                      "created_at": "2018-03-30T20:31:32Z",
                      "updated_at": "2023-03-06T11:03:32Z",
                      "promoted_at": "2018-04-01T02:25:27Z",
                      "width": 4433,
                      "height": 7880,
                      "color": "#0c8ca6",
                      "blur_hash": "LrErCEM|R*WC~VNGWBWV-pWCWVj[",
                      "description": "AQUA",
                      "alt_description": "white clouds and blue skies",
                      "urls": {
                          "raw": "https://images.unsplash.com/photo-1522441815192-d9f04eb0615c?ixlib=rb-4.0.3",
                          "full": "https://images.unsplash.com/photo-1522441815192-d9f04eb0615c?ixlib=rb-4.0.3&q=80&cs=tinysrgb&fm=jpg&crop=entropy",
                          "regular": "https://images.unsplash.com/photo-1522441815192-d9f04eb0615c?ixlib=rb-4.0.3&w=1080&fit=max&q=80&fm=jpg&crop=entropy&cs=tinysrgb",
                          "small": "https://images.unsplash.com/photo-1522441815192-d9f04eb0615c?ixlib=rb-4.0.3&w=400&fit=max&q=80&fm=jpg&crop=entropy&cs=tinysrgb",
                          "thumb": "https://images.unsplash.com/photo-1522441815192-d9f04eb0615c?ixlib=rb-4.0.3&w=200&fit=max&q=80&fm=jpg&crop=entropy&cs=tinysrgb",
                          "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1522441815192-d9f04eb0615c"
                      },
                      "links": {
                          "self": "https://api.unsplash.com/photos/DbwYNr8RPbg",
                          "html": "https://unsplash.com/photos/DbwYNr8RPbg",
                          "download": "https://unsplash.com/photos/DbwYNr8RPbg/download",
                          "download_location": "https://api.unsplash.com/photos/DbwYNr8RPbg/download"
                      },
                      "likes": 6365,
                      "liked_by_user": false,
                      "current_user_collections": [],
                      "sponsorship": null,
                      "topic_submissions": {
                          "textures-patterns": {
                              "status": "approved",
                              "approved_on": "2020-06-12T13:12:52Z"
                          }
                      },
                      "premium": false,
                      "user": {
                          "id": "BrQR9ZNLFVg",
                          "updated_at": "2023-03-06T21:05:05Z",
                          "username": "resul",
                          "name": "Resul Mentes 🇹🇷",
                          "first_name": "Resul",
                          "last_name": "Mentes 🇹🇷",
                          "twitter_username": "resulmentess",
                          "portfolio_url": "http://resulmentes.com",
                          "bio": ".",
                          "location": "Sakarya,Türkiye",
                          "links": {
                              "self": "https://api.unsplash.com/users/resul",
                              "html": "https://unsplash.com/@resul",
                              "photos": "https://api.unsplash.com/users/resul/photos",
                              "likes": "https://api.unsplash.com/users/resul/likes",
                              "portfolio": "https://api.unsplash.com/users/resul/portfolio",
                              "following": "https://api.unsplash.com/users/resul/following",
                              "followers": "https://api.unsplash.com/users/resul/followers"
                          },
                          "profile_image": {
                              "small": "https://images.unsplash.com/profile-1579609671436-8ac276f87e50image?ixlib=rb-4.0.3&crop=faces&fit=crop&w=32&h=32",
                              "medium": "https://images.unsplash.com/profile-1579609671436-8ac276f87e50image?ixlib=rb-4.0.3&crop=faces&fit=crop&w=64&h=64",
                              "large": "https://images.unsplash.com/profile-1579609671436-8ac276f87e50image?ixlib=rb-4.0.3&crop=faces&fit=crop&w=128&h=128"
                          },
                          "instagram_username": "resulmentess",
                          "total_collections": 2,
                          "total_likes": 33,
                          "total_photos": 55,
                          "accepted_tos": true,
                          "for_hire": true,
                          "social": {
                              "instagram_username": "resulmentess",
                              "portfolio_url": "http://resulmentes.com",
                              "twitter_username": "resulmentess",
                              "paypal_email": null
                          }
                      }
                  }
              }
          }
      ]
    }

    image = Image.new(data)

    expect(image).to be_an(Image)
    expect(image.alt_tag).to eq('time lapse photography of flying hot air balloon')
    expect(image.url).to eq('https://images.unsplash.com/photo-1540611025311-01df3cef54b5?ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3')
  end
end