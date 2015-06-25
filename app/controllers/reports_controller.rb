class ReportsController < ApplicationController
  respond_to :html

  before_filter :require_login
  before_filter :require_admin, :only => [:destroy]

  def index
    report_hash = client_with_actor.get("reports/org/runs?rows=50&start=0&protocol-version=0.1.0")
    @reports = report_hash["run_history"]

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
    @report = client_with_actor.get("reports/org/runs/#{params[:id]}?protocol-version=0.1.0")

    respond_to do |format|
      format.html # show.html.erb
    end
  end

end
