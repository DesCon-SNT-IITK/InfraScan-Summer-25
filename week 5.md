
# 📅 Week 5: Dataset Collection & Preprocessing

**Project**: InfraScan – AI-Powered Structural Health Monitoring  
**Organized by**: DesCon Society, IIT Kanpur

## 2️⃣ Dataset Collection

### 🌐 Suggested Sources:
- [FLIR Thermal Dataset](https://www.flir.com/oem/adas/adas-dataset-form/)
- [Kaggle: Crack Detection Datasets](https://www.kaggle.com/search?q=crack+infrared+image)
- [Roboflow Public Datasets](https://public.roboflow.com)
- [GitHub Search: Infrared Dataset](https://github.com/search?q=infrared+thermal+image+dataset)
- [ImageNet](https://image-net.org)

> Download at least **20–30 images** that include visible cracks, moisture damage, or structural defects.

---

## 3️⃣ Image Annotation

### ✅ Tool: [https://www.makesense.ai](https://www.makesense.ai)

### 🧭 Steps:
1. Go to the website and **“Get Started”**
2. Upload your selected infrared or crack images
3. Choose **Object Detection** as the task
4. Create labels: `crack`, `moisture`, `defect`, etc.
5. Draw bounding boxes around damage regions
6. Export annotations in **YOLO (TXT)** or **VOC (XML)** format

### 📁 Output Folder Example:
```
/annotations
  ├── image1.jpg
  ├── image1.txt (or image1.xml)
  ├── image2.jpg
  └── image2.txt
```

---

## 4️⃣ Advanced Preprocessing in MATLAB

### ▶️ Step A: Gaussian + Median Filtering

```matlab
img = imread('infrared_sample.jpg');
gray = rgb2gray(img);
gauss = imgaussfilt(gray, 2);
medianFiltered = medfilt2(gauss);

subplot(1,3,1), imshow(img), title('Original');
subplot(1,3,2), imshow(gauss), title('Gaussian Filter');
subplot(1,3,3), imshow(medianFiltered), title('Median + Gaussian');
```

---

### ▶️ Step B: Histogram Equalization

```matlab
equalized = histeq(medianFiltered);
imshow(equalized); title('Histogram Equalized Image');
```

---

### ▶️ Step C: Adaptive Binarization

```matlab
binary = imbinarize(equalized, 'adaptive', 'Sensitivity', 0.6);
imshow(binary); title('Binarized Image');
```

---

### ▶️ Step D: Normalization

```matlab
normImg = mat2gray(double(equalized));
imshow(normImg); title('Normalized Image');
```

---

## 5️⃣ Week 5 Assignment

### 🧪 Tasks:
- Choose **5 infrared or crack images**
- Apply:
  - Grayscale conversion
  - Gaussian + Median filtering
  - Histogram Equalization
  - Adaptive Thresholding
  - Normalization
- Annotate at least **2 images** using [makesense.ai](https://www.makesense.ai)

### 📄 Submit:
- MATLAB `.m` file
- Preprocessed output images
- Annotation files (`.txt` or `.xml`)
- Short report (150–200 words):
  - Steps used
  - Observations (contrast, noise reduction, etc.)

---

## 📚 Resources

- [MakeSense AI Annotator](https://www.makesense.ai)
- [MATLAB Image Processing Toolbox Docs](https://www.mathworks.com/help/images/)
- [Image Processing Onramp by MathWorks](https://matlabacademy.mathworks.com/details/image-processing-onramp/imageprocessing#module=4)

---

## 🧠 Why This Matters

- Preprocessing ensures cleaner and more usable data for AI
- Annotated images will help train your crack/moisture detection(CNN) model in Week 6
- Week 5 bridges your learning phase to actual project development

---

_End of Week 5 Resources_
