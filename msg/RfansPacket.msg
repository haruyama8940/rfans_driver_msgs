# Raw Rfans LIDAR packet.
#Header        header         # standard ROS message header
builtin_interfaces/Time stamp              # packet timestamp
# float32 stamp              # packet timestamp
uint32 udpcount          # packet number
uint32 udpsize
uint8[] data      # packet contents 600 Block
