docker run -it --rm --runtime=nvidia \
    --shm-size 16G \
    --name DeLF-PT \
    -u 0 \
    -v /home/tung/playground:/home/tung/playground \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -p 9095:6015 -p 5011:5011 \
    -e NVIDIA_VISIBLE_DEVICES=7 -e CUDA_DEVICE_ORDER=PCI_BUS_ID \
    pytorch/pytorch:1.1.0-cuda10.0-cudnn7.5-devel 
