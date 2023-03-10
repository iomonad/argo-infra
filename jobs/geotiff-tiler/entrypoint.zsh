#!/bin/zsh

set -eux

echo "INPUT_PATH is ${INPUT_PATH}"
echo "OUTPUT_FOLDER is ${OUTPUT_FOLDER}"
echo "OUPUT_NAME is ${OUTPUT_NAME}"

echo "GDAL_PROFILE is ${GDAL_PROFILE}"
echo "GDAL_MIN_ZOOM is ${GDAL_MIN_ZOOM}"
echo "GDAL_MAX_ZOOM is ${GDAL_MAX_ZOOM}"

echo "====================================="

gdalinfo ${INPUT_PATH}

echo "====================================="

gdal2tiles --profile=${GDAL_PROFILE} \
	   -z ${GDAL_MIN_ZOOM}-${GDAL_MAX_ZOOM} \
	   ${INPUT_PATH} \
	   ${OUPUT_FOLDER}/${OUTPUT_NAME}
