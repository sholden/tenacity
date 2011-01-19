class CouchRestObject < CouchRest::ExtendedDocument
  include Tenacity
  use_database COUCH_DB

  t_has_one :active_record_has_one_target
  t_has_one :couch_rest_has_one_target
  t_has_one :data_mapper_has_one_target
  t_has_one :mongo_mapper_has_one_target
  require_mongoid { t_has_one :mongoid_has_one_target }
  t_has_one :sequel_has_one_target

  t_has_many :active_record_has_many_targets
  t_has_many :couch_rest_has_many_targets
  t_has_many :data_mapper_has_many_targets
  t_has_many :mongo_mapper_has_many_targets
  require_mongoid { t_has_many :mongoid_has_many_targets }
  t_has_many :sequel_has_many_targets
end
