defmodule TwipperWeb.ChartLive.Index do
  use TwipperWeb, :live_view

  alias Contex.{LinePlot, Dataset, Plot}

  def mount(_params, _session, socket) do
    weather_data = [
      %{
        price: 63000,
        inserted_at: ~N[2021-01-27 17:00:01],
        volume: 15
      },
      %{
        price: 63250,
        inserted_at: ~N[2021-01-27 17:05:01],
        volume: 100
      },
      %{
        price: 63500,
        inserted_at: ~N[2021-01-27 17:10:01],
        volume: 500
      },
      %{
        price: 63800,
        inserted_at: ~N[2021-01-27 17:15:01],
        volume: 1400
      },
      %{
        price: 64200,
        inserted_at: ~N[2021-01-27 17:20:01],
        volume: 2600
      },
      %{
        price: 64800,
        inserted_at: ~N[2021-01-27 17:25:01],
        volume: 4000
      },
      %{
        price: 64800,
        inserted_at: ~N[2021-01-27 17:30:01],
        volume: 6200
      },
      %{
        price: 64850,
        inserted_at: ~N[2021-01-27 17:35:01],
        volume: 8300
      }
    ]

    plot_options = %{
      top_margin: 5,
      right_margin: 5,
      bottom_margin: 5,
      left_margin: 5,
      show_x_axis: true,
      show_y_axis: true
    }

    weather_chart =
      weather_data
      # Flatten the map into a list of lists
      |> Enum.map(fn %{inserted_at: timestamp, price: price, volume: volume} ->
        [timestamp, price, volume]
      end)
      # Assign legend titles using list indices
      |> Dataset.new(["Time", "Price", "Volume"])
      # Specify plot type (LinePlot), SVG dimensions, column mapping, title, label and legend
      |> Plot.new(
        LinePlot,
        600,
        300,
        mapping: %{x_col: "Time", y_cols: ["Price", "Volume"]},
        plot_options: plot_options,
        title: "Price / Volume",
        x_label: "Time",
        legend_setting: :legend_right
      )
      # Generate SVG
      |> Plot.to_svg()

    {:ok, assign(socket, :weather_chart, weather_chart)}
  end

  def render(assigns) do
    ~L"""
    <div class="min-h-screen px-5 py-5 mt-5 mb-5 ml-5 mr-5 min-w-screen">
      <%= @weather_chart %>
    </div>
    """
  end
end
