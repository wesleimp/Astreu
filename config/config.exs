import Config

# Our Logger general configuration
config :logger,
  backends: [:console],
  compile_time_purge_matching: [
    [level_lower_than: :debug]
  ]

config :protobuf, extensions: :enabled

# Our Console Backend-specific configuration
config :logger, :console,
  format: "$date $time [$node]:[$metadata]:[$level]:$levelpad$message\n",
  metadata: [:pid]

config :grpc, start_server: true

config :prometheus, GRPCPrometheus.ServerInterceptor, latency: :histogram

# Cluster configurations
config :libcluster,
  debug: false,
  topologies: [
    astreu_cluster: [
      strategy: Cluster.Strategy.Gossip
    ]
  ]

config :astreu, producer_adapter: Astreu.Producer.PubSubTransientAdapter
