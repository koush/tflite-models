for f in tf2_ssd_mobilenet_v2_coco17_ptq ssdlite_mobiledet_coco_qat_postprocess efficientdet_lite0_320_ptq efficientdet_lite1_384_ptq efficientdet_lite2_448_ptq efficientdet_lite3_512_ptq efficientdet_lite3x_640_ptq
do
    mkdir -p $f
    pushd $f
    BASE=https://raw.githubusercontent.com/google-coral/test_data/master/$f
    curl -O -L $BASE.tflite
    curl -O -L "$BASE"_edgetpu.tflite
    popd
done
