# DATA1500 | Assignment 5: Elementary EDA for liver markers
# Author: Gemini CLI

# Load necessary libraries
# Ensure you have these installed: install.packages(c("ggplot2", "dplyr", "tidyr", "corrplot"))
library(ggplot2)
library(dplyr)
library(tidyr)

# 1. Load the data
# The first column is an index, let's skip it
df <- read.csv("blooddonor.csv", row.names = 1)

# Basic cleaning
df$Category <- as.factor(df$Category)
df$Sex <- as.factor(df$Sex)

# Print a summary of the data
print("Summary of blood donor data:")
summary(df)

# 2. Distribution of categories
# This helps us see the class imbalance (many donors, few cirrhosis cases)
category_dist <- ggplot(df, aes(x = Category, fill = Category)) +
  geom_bar() +
  labs(title = "Distribution of Patients by Category",
       subtitle = "Notice the heavy imbalance towards Blood Donors",
       x = "Category",
       y = "Count") +
  theme_minimal() +
  theme(legend.position = "none")

category_dist
print("Generating Category Distribution plot...")
# To save: ggsave("plots/category_dist.pdf", plot = category_dist)

# 3. Relationship between AST and ALT
# AST and ALT are primary liver enzymes that spike with damage
# Using a log scale because values vary widely across disease stages
ast_alt_scatter <- ggplot(df, aes(x = ALT, y = AST, color = Category)) +
  geom_point(alpha = 0.6) +
  scale_x_log10() +
  scale_y_log10() +
  labs(title = "AST vs. ALT (Log Scale)",
       subtitle = "Hepatitis and Cirrhosis cases tend to have significantly higher levels",
       x = "ALT (Alanine Aminotransferase)",
       y = "AST (Aspartate Aminotransferase)") +
  theme_minimal()

ast_alt_scatter
print("Generating AST vs ALT scatter plot...")
# To save: ggsave("plots/ast_alt_scatter.pdf", plot = ast_alt_scatter)

# 4. Boxplots for specific markers (e.g., BIL - Bilirubin)
# Bilirubin levels are often much higher in advanced cirrhosis
bil_boxplot <- ggplot(df, aes(x = Category, y = BIL, fill = Category)) +
  geom_boxplot() +
  scale_y_log10() +
  labs(title = "Bilirubin Levels by Disease Category",
       subtitle = "Advanced stages (Cirrhosis) show dramatic increases",
       x = "Category",
       y = "Bilirubin (Log scale)") +
  theme_minimal() +
  theme(legend.position = "none")

print("Generating Bilirubin boxplot...")
bil_boxplot
# To save: ggsave("plots/bil_boxplot.pdf", plot = bil_boxplot)

# 5. Correlation between markers (Numerical values only)
# This could be a good 'complex' chart if visualized well
num_df <- df %>% select_if(is.numeric) %>% drop_na()
cor_matrix <- cor(num_df)
cor_matrix

# For a quick peek in R:
# corrplot::corrplot(cor_matrix, method = "circle")

# 6. Combined marker view: Age vs. AST, faceted by Category
age_ast_facet <- ggplot(df, aes(x = Age, y = AST, color = Sex)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", se = FALSE) +
  facet_wrap(~Category) +
  scale_y_log10() +
  labs(title = "AST Levels across Age and Sex, by Category",
       subtitle = "Exploration for demographic trends in liver markers",
       x = "Age",
       y = "AST (Log Scale)") +
  theme_light()

print("Generating Age vs AST faceted plot...")
age_ast_facet
# To view plots in RStudio, just call the objects:
category_dist
ast_alt_scatter
bil_boxplot
age_ast_facet
