
# Week 5: Midterm + Dataset Collection & Preprocessing

**Project**: InfraScan – AI-Powered Structural Health Monitoring  
**Organized by**: DesCon Society, IIT Kanpur

---

## 🎯 Goals of Week 5
- Midterm evaluation of mentees' progress
- Learn how to gather and prepare infrared image datasets
- Understand and apply advanced preprocessing techniques
- Begin organizing annotated data for supervised learning models

---

## 🧪 Mid-Term Evaluation Guidelines

### 📊 Mentees must:
1. Demonstrate basic MATLAB proficiency (Week 1–2 concepts)
2. Present image processing tasks done on sample images
3. Submit a short presentation/report showing:
   - Processed images
   - Summary of learning
   - Explanation of each transformation

---

## 📦 1. Dataset Collection: Infrared Images

### 🔍 Where to Find Infrared Datasets:
- **Open Access IR Datasets**
  - [FLIR Thermal Dataset](https://www.flir.com/oem/adas/adas-dataset-form/)
  - [Kaggle Infrared Datasets](https://www.kaggle.com/search?q=infrared+thermal+images)
  - [ImageNet Subsets](https://www.image-net.org/)
  - [Roboflow Datasets](https://public.roboflow.com)
  - [NASA Thermal Infrared Data](https://pmm.nasa.gov/data-access)

### 📌 Dataset Criteria:
- Prefer `.png`, `.jpg`, `.bmp` formats
- Look for datasets with crack/moisture/thermal damage
- Download at least 15–20 images per category for testing

---

## 📝 2. Manual Image Annotation

Use the free online tool: [https://www.makesense.ai](https://www.makesense.ai)

### Steps:
1. Upload infrared image
2. Draw bounding boxes around regions (cracks, wet areas)
3. Export annotations in YOLO or VOC format (for future DL use)

---

## 🔧 3. Preprocessing Techniques (Advanced)

### Technique 1: Gaussian + Median Filtering

```matlab
img = imread('infrared_sample.png');
gray = rgb2gray(img);
gauss = imgaussfilt(gray, 2);
medianFiltered = medfilt2(gauss);

subplot(1,3,1), imshow(img), title('Original');
subplot(1,3,2), imshow(gauss), title('Gaussian Filter');
subplot(1,3,3), imshow(medianFiltered), title('Median + Gaussian');
```

---

### Technique 2: Histogram Equalization

```matlab
equalized = histeq(medianFiltered);
figure; imshow(equalized); title('Histogram Equalized');
```

---

### Technique 3: Adaptive Thresholding

```matlab
binary = imbinarize(equalized, 'adaptive', 'Sensitivity', 0.6);
figure; imshow(binary); title('Binarized Image');
```

---

### Technique 4: Image Normalization

```matlab
normImg = mat2gray(double(equalized));
imshow(normImg); title('Normalized Image');
```

---

## 🧩 Week 5 Assignment

### 🔧 Task:
- Choose 5 images (infrared or structural)
- Apply the following:
  - Grayscale conversion
  - Gaussian + Median filtering
  - Histogram equalization
  - Adaptive binarization
  - Save each output
- Annotate 2 images using makesense.ai

### 📄 Report:
- Include screenshots of preprocessing results
- List 3–5 observations (e.g., noise removed, defects highlighted, etc.)

---

## 📚 Resources

### Tools:
- [MakeSense AI Annotator](https://www.makesense.ai)
- [MATLAB Image Processing Toolbox Docs](https://www.mathworks.com/help/images/)
- [MATLAB Image Processing Onramp](https://matlabacademy.mathworks.com/details/image-processing-onramp/getting-started)

---

## 🧠 InfraScan Relevance

- Preprocessing is essential for better feature extraction
- Annotated images will be used for CNN training in later weeks
- Clean, normalized, and consistent data improves model accuracy

---

_End of Week 5 Resources_

