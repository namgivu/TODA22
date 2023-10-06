--- the yml we tried
    build:
      #           .    is folder where composeup is run
      context:    .  # ie folder demo_custom_Dockerfile_yml_location/
      dockerfile: ./Dockerfile
      #           . CASE1 - this is folder containing this yml file
      #           . CASE2 - this is folder context_d above


--- we conclude 
SHOULD USE absolute path for context: / dockerfile:
