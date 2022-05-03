# stylegan2-ada-pytorch-custom

* Execute `dev-build.sh` to build
* Execute `dev-run.sh` to start container

## Generate

```
$ cd /app
$ git clone git@github.com:NVlabs/stylegan2-ada-pytorch.git
$ cd /app/stylegan2-ada-pytorch/
$ python3.7 generate.py --network ../pretrained/2020-01-11-skylion-stylegan2-animeportraits-networksnapshot-024664.pkl --outdir ../output/ --seeds 1,2,3,4,5
```