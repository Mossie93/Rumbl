defmodule Rumbl.VideoViewTest do
  use Rumbl.ConnCase, async: true
  import Phoenix.View

  test "renders index.html", %{conn: conn} do
    videos = [
      %Rumbl.Video{id: 1, title: "Dogs", description: "Sweet puppies"},
      %Rumbl.Video{id: 2, title: "Husky", description: "Super guard dog"}
    ]

    content = render_to_string(Rumbl.VideoView, "index.html", conn: conn, videos: videos)

    assert String.contains?(content, "Listing videos")
    for video <- videos do
      assert String.contains?(content, video.title)
    end
  end
end
