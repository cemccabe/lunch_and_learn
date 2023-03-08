require 'rails_helper'

RSpec.describe LearningResource do
  it 'exists with attributes' do
    video_data = {
      "kind": "youtube#searchResult",
      "etag": "g_AANaDO0PP_y9-nAEiKyK7DquE",
      "id": {
          "kind": "youtube#video",
          "videoId": "uw8hjVqxMXw"
      },
      "snippet": {
          "publishedAt": "2021-08-29T10:13:10Z",
          "channelId": "UCluQ5yInbeAkkeCndNnUhpw",
          "title": "A Super Quick History of Laos",
          "description": "Audio Requiring Attribution: LukeIRL: https://freesound.org/people/LukeIRL/sounds/176134/ RTB45: ...",
          "thumbnails": {
              "default": {
                  "url": "https://i.ytimg.com/vi/uw8hjVqxMXw/default.jpg",
                  "width": 120,
                  "height": 90
              },
              "medium": {
                  "url": "https://i.ytimg.com/vi/uw8hjVqxMXw/mqdefault.jpg",
                  "width": 320,
                  "height": 180
              },
              "high": {
                  "url": "https://i.ytimg.com/vi/uw8hjVqxMXw/hqdefault.jpg",
                  "width": 480,
                  "height": 360
              }
          },
          "channelTitle": "Mr History",
          "liveBroadcastContent": "none",
          "publishTime": "2021-08-29T10:13:10Z"
      }
    }

    image_data = [
      Image.new({
        "id": "yJ2SHIpNb9M",
        "created_at": "2018-10-27T03:32:26Z",
        "updated_at": "2023-03-08T01:05:00Z",
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
          } 
      }),
      Image.new({
        "id": "9r2yeRccyls",
        "created_at": "2019-10-06T12:57:05Z",
        "updated_at": "2023-03-08T05:10:21Z",
        "promoted_at": "2019-10-07T11:10:05Z",
        "width": 5464,
        "height": 3640,
        "color": "#264026",
        "blur_hash": "LCEC%1~jN14;9O9HthoI0hf+M+%0",
        "description": "Sapa rice fields",
        "alt_description": "aerial view of city at daytime",
        "urls": {
            "raw": "https://images.unsplash.com/photo-1570366583862-f91883984fde?ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwyfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3",
            "full": "https://images.unsplash.com/photo-1570366583862-f91883984fde?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwyfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3&q=80",
            "regular": "https://images.unsplash.com/photo-1570366583862-f91883984fde?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwyfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3&q=80&w=1080",
            "small": "https://images.unsplash.com/photo-1570366583862-f91883984fde?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwyfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3&q=80&w=400",
            "thumb": "https://images.unsplash.com/photo-1570366583862-f91883984fde?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwyfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3&q=80&w=200",
            "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1570366583862-f91883984fde"
          }
      })
    ]

    country = 'Laos'
    video = Video.new(video_data)

    learning_resource = LearningResource.new(country, video, image_data)

    expect(learning_resource).to be_a(LearningResource)
    expect(learning_resource.video).to be_a(Hash)
    expect(learning_resource.video).to eq(
      {
        title: 'A Super Quick History of Laos',
        youtube_video_id: 'uw8hjVqxMXw'
      }
    )

    expect(learning_resource.images).to be_an(Array)
    expect(learning_resource.images).to eq(
      [
        {
          alt_tag: 'time lapse photography of flying hot air balloon',
          url: 'https://images.unsplash.com/photo-1540611025311-01df3cef54b5?ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3'
        },
        {
          alt_tag: 'aerial view of city at daytime',
          url: 'https://images.unsplash.com/photo-1570366583862-f91883984fde?ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwyfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3'
        }
      ]
    )
  end
end