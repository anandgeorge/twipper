defmodule TwipperWeb.PostLive.PostComponent do
  use TwipperWeb, :live_component

  def render(assigns) do
    ~L"""
    <div id="post-<%= @post.id %>" class="w-full p-5 mx-auto mt-4 mb-4 text-gray-800 bg-white rounded-lg shadow post" style="max-width: 400px">
      <div class="flex w-full mt-2 mb-2">
        <div class="w-12 h-12 overflow-hidden rounded-full">
            <img src="https://uifaces.co/our-content/donated/1H_7AxP0.jpg" alt="">
        </div>
        <div class="flex-grow pl-3">
            <h6 class="font-bold text-md">Anand George</h6>
            <p class="text-xs text-gray-600">@<%= @post.username %></p>
            <p class="text-xs text-gray-500">Oct 15th 8:33pm</p>
        </div>
        <div class="w-12 text-right">
            <i class="text-3xl text-blue-400 mdi mdi-twitter"></i>
        </div>
      </div>
      <div class="mb-4">
        <p class="text-base md:text-lg"><%= @post.body %></p>
      </div>
      <div class="flex mt-3 text-gray-500 dark:text-gray-400">
        <div class="flex items-center mr-6" phx-click="like" phx-target="<%= @myself %>">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
            </svg>
            <span class="ml-3"><%= @post.likes_count %></span>
        </div>
        <div class="flex items-center mr-6" phx-click="repost" phx-target="<%= @myself %>">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
            </svg>
            <span class="ml-3"><%= @post.reposts_count %></span>
        </div>
      </div>
    </div>
    """
  end

  def handle_event("like", _, socket) do
    Twipper.Timeline.inc_likes(socket.assigns.post)
    {:noreply, socket}
  end

  def handle_event("repost", _, socket) do
    Twipper.Timeline.inc_reposts(socket.assigns.post)
    {:noreply, socket}
  end
end
