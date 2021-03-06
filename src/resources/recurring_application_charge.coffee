Base = require './base'

class RecurringApplicationCharge extends Base
  slug: "recurring_application_charge"
  prefix: "/recurring_application_charges"

  constructor: (site) ->
    super(site)

  activate: (id, fields, callback) ->
    url = @resource.queryString "#{@prefix}/#{id}/activate"
    @resource.post url, @slug, fields, callback

module.exports = RecurringApplicationCharge
