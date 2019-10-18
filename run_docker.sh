docker run -it --rm --runtime=nvidia \
    --shm-size 16G \
    --name DeLF-PT \
    -u 0 \
    -v /home/tung/playground:/home/tung/playground \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -p 9096:6016 -p 5016:5016 \
    -e NVIDIA_VISIBLE_DEVICES=7 -e CUDA_DEVICE_ORDER=PCI_BUS_ID \
    pytorch/pytorch:0.4.1-cuda9-cudnn7-devel
