defmodule NanoPlannerWeb.PlanItemsController do
  use NanoPlannerWeb, :controller
  import Ecto.Query
  alias NanoPlanner.Repo
  alias NanoPlanner.Schedule
  alias NanoPlanner.Schedule.PlanItem

  def index(conn, _params) do
    plan_items = Schedule.list_plan_items
    render(conn, "index.html", plan_items: plan_items)
  end

  def show(conn, params) do
    plan_item =
      PlanItem
      |> Repo.get!(params["id"])
      |> Schedule.convert_datetime()

    render(conn, "show.html", plan_item: plan_item)
  end
end
