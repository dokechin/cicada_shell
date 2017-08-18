# Classify cicadas by shell  

1300 cicada speces is distributed aroud the world.
I wanted to classify the speces by its shell image using AI::MxNet library.

## Gather cicada image and store politic folder

gather cicada images. and store to politic folder

## Make rec file

To classify MxNet formal data format is rec file.

```sh
perl make_ctrl.pl
make_rec.sh
```

## Classfy cicada

```sh
perl test.pl
```

