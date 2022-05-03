#!/bin/bash
docker run -it --gpus=all -v $(pwd)/:/app --name=stylegan2_ada stylegan2-ada bash