defmodule HackathonAppWeb.OrganizationView do
  use HackathonAppWeb, :view
  alias HackathonAppWeb.OrganizationView

  def render("index.json", %{organizations: organizations}) do
    %{data: render_many(organizations, OrganizationView, "organization.json")}
  end

  def render("show.json", %{organization: organization}) do
    %{data: render_one(organization, OrganizationView, "organization.json")}
  end

  def render("organization.json", %{organization: organization}) do
    %{id: organization.id,
      name: organization.name,
      type: organization.type,
      nip: organization.nip}
  end
end
