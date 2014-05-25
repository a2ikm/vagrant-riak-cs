name "riak_cs"
run_list *%w(riak-cs::package riak-cs-prepare riak riak-cs riak-cs::stanchion)
default_attributes({
  "riak" => {
    "config" => {
      "riak_core" => {
        "default_bucket_props" => {
          "allow_mult" => true
        }
      },
      "riak_kv" => {
        "storage_backend" => "riak_cs_kv_multi_backend"
      }
    }
  },
  "riak_cs" => {
    "config" => {
      "riak_cs" => {
        "anonymous_user_creation" => true
      }
    },
    "limits" => {
      "config_limits" => true
    }
  },
  "stanchion" => {
    "limits" => {
      "config_limits" => true
    }
  },
})
