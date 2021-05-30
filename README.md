# waifu2x-converter-cpp
Dockerfile for [DeadSix27/waifu2x-converter-cpp](https://github.com/DeadSix27/waifu2x-converter-cpp).

Essentially this is a CLI version of [waifu2x.me](https://waifu2x.me) that doesn't require a GPU either.
Make sure your VM is allowed to spread to as many CPUs as possible!

## Usage:
```
$ docker run --rm -i waifu2x-converter-cpp -j 4 -m noise-scale < input.png > output.png

(go grab a coffee, it takes a while and produces no output)

$ docker run --rm -i --entrypoint=/usr/local/bin/waifu2x-converter-cpp waifu2x-converter-cpp --help
USAGE:

   /usr/local/bin/waifu2x-converter-cpp  [--list-opencv-formats] [-l] [-f
                                        <png,jpg,webp,...>] [-c <0-9>] [-q
                                        <integer>] [--block-size <integer>]
                                        [--disable-gpu] [--force-OpenCL]
                                        [-p <integer>] [-j <integer>]
                                        [--model-dir <string>]
                                        [--scale-ratio <double>]
                                        [--noise-level <0|1|2|3>] [-m
                                        <noise|scale|noise-scale>] [-s] [-r
                                        <bool>] [-o <string>] -i <string>
                                        [--] [--version] [-h]


Where:

   --list-opencv-formats
     dump opencv supported format list

   -l,  --list-processor
     dump processor list

   -f <png,jpg,webp,...>,  --output-format <png,jpg,webp,...>
     The format used when running in recursive/folder mode

     See --list-opencv-formats for a list of supported formats/extensions.

   -c <0-9>,  --png-compression <0-9>
     Set PNG compression level (0-9), 9 = Max compression (slowest &
     smallest)

   -q <integer>,  --image-quality <integer>
     Define JPEG and WebP compression quality (0-100)

   --block-size <integer>
     block size

   --disable-gpu
     disable GPU

   --force-OpenCL
     force to use OpenCL on Intel Platform

   -p <integer>,  --processor <integer>
     set target processor

   -j <integer>,  --jobs <integer>
     number of threads launching at the same time

   --model-dir <string>
     path to custom model directory (don't append last / )

   --scale-ratio <double>
     custom scale ratio

   --noise-level <0|1|2|3>
     noise reduction level

   -m <noise|scale|noise-scale>,  --mode <noise|scale|noise-scale>
     image processing mode

   -s,  --silent
     Enable silent mode.

   -r <bool>,  --recursive-directory <bool>
     Search recursively through directories to find more images to
     process.

     If this is set to 0 it will only check in the directory specified if
     the input is a directory instead of an image.

     You mustn't supply this argument with something other than 0 or 1.

   -o <string>,  --output <string>
     path to output image file or directory  (you should use the full path)

   -i <string>,  --input <string>
     (required)  path to input image file or directory (you should use the
     full path)

   --,  --ignore_rest
     Ignores the rest of the labeled arguments following this flag.

   --version
     Displays version information and exits.

   -h,  --help
     Displays usage information and exits.


   waifu2x OpenCV Fork - https://github.com/DeadSix27/waifu2x-converter-cpp
```
