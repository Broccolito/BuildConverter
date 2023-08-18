# BuildConverter

Welcome to the BuildConverter package tutorial! This package provides a simple and convenient way to convert genomic coordinates between different human genome assemblies (HG19 and HG38) using the `rtracklayer` and `dplyr` packages in R.



Genomic research and analysis play a pivotal role in understanding the intricate mechanisms underlying various biological processes and diseases. As advancements in technology and knowledge emerge, so do updates to reference genomes, resulting in different versions known as "builds." Each genome build reflects the most current and accurate representation of the human genome, incorporating improvements, corrections, and new information.

However, these evolving genome builds can lead to confusion and challenges when comparing or interpreting genomic data across different builds. Genomic coordinates, which specify the position of genes, regulatory elements, and variants, can vary between builds due to changes in assembly methods and annotations. This disparity hinders collaboration, research reproducibility, and the integration of diverse datasets.

**Introducing BuildConverter**

The BuildConverter package is a powerful tool designed to address the complexities arising from genomic build disparities. This R package facilitates the seamless conversion of genomic coordinates between different genome builds, particularly focusing on the commonly used human genome builds HG19 and HG38. By providing a user-friendly interface, BuildConverter empowers researchers, bioinformaticians, and clinicians to harmonize genomic data across different builds, enhancing cross-study comparability and facilitating accurate interpretation.

**Importance of BuildConverter**

1. **Data Consistency:** With the BuildConverter package, researchers can effortlessly translate genomic coordinates from one build to another. This functionality ensures consistent and standardized comparisons of genomic features across datasets and studies.
2. **Clinical Insights:** Genomic information plays a crucial role in clinical applications, such as identifying disease-causing mutations or designing personalized treatments. BuildConverter helps clinicians align patient data with the latest genome build, ensuring accurate diagnosis and informed decision-making.
3. **Data Integration:** Many genomic datasets are available in varying builds, hindering their integration and analysis. BuildConverter simplifies this process by enabling researchers to harmonize datasets, uncover hidden correlations, and gain deeper insights.
4. **Research Collaboration:** Collaborative research often involves sharing and combining diverse datasets. BuildConverter fosters effective collaboration by minimizing the discrepancies arising from different genome builds, streamlining data exchange and analysis.
5. **Future-Proofing:** As genome builds continue to evolve, having a tool like BuildConverter is invaluable. It ensures that historical data remains relevant and compatible with newer builds, safeguarding the integrity of long-term research efforts.

**Conclusion**

The BuildConverter package emerges as an indispensable asset for the genomics community. Its ability to bridge the gap between different genome builds promotes consistency, accuracy, and collaboration in genomic research. By tackling the complexities of genomic coordinate conversion, BuildConverter empowers researchers to leverage the full potential of diverse genomic datasets, ultimately driving advancements in our understanding of the human genome and its role in health and disease.



## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
  - [Input Excel File](#input-excel-file)
  - [Main Function](#main-function)
- [Examples](#examples)
- [Contributing](#contributing)
- [License](#license)

## Installation

To use the BuildConverter package, you need to have R installed on your system. You can download and install R from the [R Project website](https://www.r-project.org/).

Once you have R installed, you can install the required packages by running the following commands in your R console:

```r
if (!require("dplyr")) {
  install.packages("dplyr")
  library("dplyr")
}

if (!require("rtracklayer")) {
  if (!requireNamespace("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager")
  }
  BiocManager::install("rtracklayer")
  library("rtracklayer")
}
```

## Usage

### Input Excel File

Before you start using the BuildConverter package, you need to create an Excel file with genomic positions in the HG19 assembly. Make sure that the positions mentioned in the Excel file are in the HG19 assembly. The Excel file should follow the same format as the `example_input.xlsx` provided in the repository.

### Main Function

The main function of the BuildConverter package is `build_convert()`. This function allows you to convert genomic coordinates between different assemblies (HG38 to HG19 or HG19 to HG38). Here's how you can use the function:

```r
source("BuildConverter.R")

# Replace with your desired chromosome and position
chromosome <- 15
position <- 48481729
action <- "HG38TOHG19"  # Change to "HG19TOHG38" for reverse conversion

result <- build_convert(chromosome = chromosome, pos = position, action = action)
cat(result, "\n")
```

The `build_convert()` function takes three arguments:
- `chromosome`: The chromosome number (e.g., 15).
- `pos`: The genomic position on the specified chromosome.
- `action`: The conversion action. Use `"HG38TOHG19"` to convert from HG38 to HG19, or `"HG19TOHG38"` to convert from HG19 to HG38.

The function returns a result in the format `chrX:position`, where `X` is the chromosome and `position` is the converted genomic position.

## Examples

You can find example usage of the BuildConverter package in the `Run.R` file provided in the repository. This file demonstrates how to call the `build_convert()` function using the specified chromosome, position, and conversion action. Make sure to modify the chromosome and position according to your needs.

```r
setwd(get_directory())  # Replace with your working directory

source("BuildConverter.R")

# Replace with your desired chromosome and position
chromosome <- 15
position <- 48481729
action <- "HG38TOHG19"  # Change to "HG19TOHG38" for reverse conversion

converted_result <- build_convert(chromosome = chromosome, pos = position, action = action)
cat("Converted result:", converted_result, "\n")
```

## Contributing

Contributions to the BuildConverter package are welcome! If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request on the [GitHub repository](https://github.com/your-username/BuildConverter).

## License

The BuildConverter package is released under the [MIT License](https://opensource.org/licenses/MIT).

---

We hope this tutorial helps you understand and utilize the BuildConverter package for converting genomic coordinates between different human genome assemblies. If you have any questions or need further assistance, please don't hesitate to reach out to us. Happy coding!
