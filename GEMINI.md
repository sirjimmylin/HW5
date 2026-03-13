# DATA1500 | Assignment 5: One Great Chart

## Project Overview
This project focuses on creating a single, high-quality, polished visualization using the `blooddonor.csv` dataset. The workflow involves generating an initial visualization using code (e.g., R or Python) and then refining it in Adobe Illustrator for final submission.

## Dataset: `blooddonor.csv`
The dataset contains laboratory values of blood donors and Hepatitis C patients, including demographic data.

- **Target Variable (`Category`):**
  - `0=Blood Donor`
  - `0s=suspect Blood Donor`
  - `1=Hepatitis`
  - `2=Fibrosis`
  - `3=Cirrhosis`
- **Demographics:** `Age`, `Sex`
- **Laboratory Values:**
  - `ALB` (Albumin)
  - `ALP` (Alkaline Phosphatase)
  - `ALT` (Alanine Aminotransferase)
  - `AST` (Aspartate Aminotransferase)
  - `BIL` (Bilirubin)
  - `CHE` (Cholinesterase)
  - `CHOL` (Cholesterol)
  - `CREA` (Creatinine)
  - `GGT` (Gamma-Glutamyl Transferase)
  - `PROT` (Total Protein)

## Assignment Requirements
- **Goal:** Create one "great" visualization that stands on its own.
- **Workflow:** Code (R/Python) -> Adobe Illustrator.
- **Submission:** Image file (double pixel resolution), due by **4:00 PM on March 19th**. Code and additional documentation are not required for submission but should be maintained for transparency.
- **Complexity:** Should be more than a simple bar chart but does not need to be overly complex.

## Design Guidelines (Class 8 Principles)
- **Accurate:** Ensure data, analysis, labeling (no typos/grammar errors), and encoding are precise.
- **Transparent:** Clearly note data sources, filtering decisions, and caveats. Preserve original observations if trend lines are drawn.
- **Decluttered:**
    - **Remove:** Unnecessary elements like boxes, minor gridlines, and tick marks.
    - **Minimize:** Less important elements to create a clear visual hierarchy.
    - **Align:** Ensure everything lines up with something (especially labels and annotations).
    - **Simplify:** Group categories to reduce clutter and use appropriate aggregation or smoothing.
- **Focused:**
    - **Visual Cues:** Direct focus using strong headlines/subheads, highlights, and annotations.
    - **Hierarchy:** Use color, stack order, and size/weight to emphasize key findings.
    - **Pattern Breakers:** Use distinct colors or shapes to highlight specific outliers or trends.
    - **Shallow/Deep:** Design for a "fast takeaway" while rewarding deeper inspection with sub-stories.
- **Memorable:** Create a polished design that stands on its own and tells a compelling data story.

### Technical Implementation Tips
- **Fonts:** Pick one sans-serif font and stick with it. Use a maximum of 2-3 weight/font combinations. Avoid rotated or vertical text.
- **Colors:** Use fewer colors; prefer shades (intensity) over different hues to show hierarchy.
- **Whitespace:** Give elements "breathing room" to reduce cognitive load, but avoid excessive gaps in bars.
- **Heuristics:** Aim for "minimum legible pixels" and ensure every element is "doing work."

## Scoring Rubric
1. **Interesting Finding (5 pts):** Is the trend interesting? Is the analysis accurate and transparent?
2. **Chartform Selection (5 pts):** Is the chosen chart type appropriate for the data?
3. **Design & Focus (10 pts):** Is the chart decluttered and focused, following the design lessons from Class 8?

## TODOs
- [ ] Explore `blooddonor.csv` for interesting trends (e.g., correlation between markers like AST/ALT and liver disease stages).
- [ ] Generate a draft visualization in R/Python.
- [ ] Export to a format compatible with Adobe Illustrator (e.g., PDF or SVG).
- [ ] Refine, declutter, and annotate in Adobe Illustrator.
- [ ] Export as a high-resolution image for submission.
