# HepaticVesseSegmentation-UNETR
 An implementation of MONAI's UNETR model on Medical Decathlon's Task 8 - Hepatic Vessel and Tumor Segmentation

## Task:
Hepatic vessel segmentation is quite a tricky task since vessels are structurally microscopic and scarce, particularly in the liver. Their uneven distribution in the liver makes segmentation tasks tedious, since there is now a need for dynamically allocated weights for the vessel and background classes. This procedure however, is crucial for surgical planning and much research is being done on improving and automating the technology being used in the same.

## Data:
This model was trained on data obtained from the Medical Decathlon Challenge and contains CT Scans of patients with a variety of primary and metastatic liver tumors. Additional information about the data can be found at [Arxiv](https://arxiv.org/pdf/1902.09063).

## Training:
The training algorithm was written in ipython and based closely off of MONAI's tutorial on [multi-organ segmentation](https://github.com/Project-MONAI/tutorials/blob/main/3d_segmentation/unetr_btcv_segmentation_3d.ipynb) (BTCV Challenge). Below is an overview of some of the hyper-parameters:  
**Model**: UNETR (MONAI)  
**Loss function**: DiceCELoss (MONAI)  
**Evaluation Metric**: DiceMetric  
**Epoch count**: 100  
**Transforms**:
 - SpatialPad
 - Resize
 - RandomRotate
 - RandomFlip
 - RandomIntensityShift

## Results

## Usage
Reconstruct [model pickle](/best_metric_model/) using [7-zip](https://www.7-zip.org/) or similar software to use current train sequence's resultant model  
Modify and run [this](/HepaticVesselSegmentation3.ipynb) to begin training  
View [this](/savefile.json) to see raw results  
Run [this]() for viewing plotted results and model prediction examples
