# CLAUDE.md - NPRE 412 Repository Documentation

## Overview

This repository contains course materials for **NPRE 412: Nuclear Power 
Economics and Fuel Management**, taught by Prof. Kathryn Huff at the University 
of Illinois at Urbana-Champaign. The course was previously taught in Spring 
2025 and will be offered again in future semesters.

The repository serves as the primary source of lecture content, delivered 
through interactive Jupyter notebooks, along with supporting materials 
including LaTeX-generated syllabi, reading lists, and project specifications.

**Course Description:** NPRE 412 covers the economics and fuel cycle management 
of nuclear power systems, including reactor physics fundamentals, fuel cycle 
costs, levelized cost of electricity (LCOE), and comparative analysis of 
once-through and closed fuel cycle strategies.

**License:** Creative Commons Attribution 4.0 International (CC BY 4.0)

---

## Repository Structure

### Core Directories

#### `/introduction/` - Course Introduction
- **Purpose:** First-week materials including syllabus overview and nuclear fuel cycle introduction
- **Key Files:**
  - `00-intro-syllabus.ipynb` - Course policies, grading, and logistics
  - `01-power-overview.ipynb` - Overview of nuclear power generation
  - `02-nfc-overview.ipynb` - Nuclear fuel cycle overview
  - Supporting images: `once-through.png`, `recycle.png`
  - `save-the-nukes.pdf` - Reference material

#### `/syllabus/` - Course Syllabus
- **Purpose:** Official course syllabus and policies in LaTeX format
- **Key Files:**
  - `syllabus.tex` - Main syllabus document
  - `ief.tex` - Included content file
  - `bibliography.bib` - BibTeX references
  - `Makefile` - Build automation (see Build Commands section)
  - `syllabus.pdf` - Compiled syllabus (generated)
- **Course Details:**
  - Meeting time: TuTh 9:30am-10:50am
  - Room: 3018 CIF
  - Prerequisites: NPRE 402 or 247
  - Instructor email: kdhuff@illinois.edu
  - Office hours: By appointment at katyhuff.youcanbook.me

#### `/readings/` - Weekly Reading Assignments
- **Purpose:** Reading lists organized by week (wk00 through wk14)
- **Structure:** Each week has its own subdirectory containing:
  - `wkXX.tex` - LaTeX document listing required and recommended readings
  - `wkXX.bib` - BibTeX bibliography for that week
  - `wkXX.pdf` - Compiled reading list (generated)
- **Special subdirectory:** `/readings/report/` - Guidelines for book report assignment

#### Topic-Specific Lecture Directories

Each of these directories contains Jupyter notebooks with lecture content, supporting images, and data:

- **`/lcoe/`** - Levelized Cost of Electricity
  - Core concepts, LCOE calculations, comparative costs
  - Contains construction cost analysis and economic modeling

- **`/nuclear-power-economics/`** - Nuclear Power Economics
  - Economic fundamentals, capital costs, financial analysis

- **`/time-val-of-money/`** - Time Value of Money
  - Present/future value calculations, compound interest, financial fundamentals

- **`/reactor-physics/`** - Reactor Physics
  - Includes `reactor-physics.ipynb` and `depletion.ipynb`
  - Fundamental physics concepts needed for fuel management

- **`/mining-milling/`** - Mining and Milling
  - Front-end fuel cycle: uranium extraction and processing

- **`/conversion/`** - Conversion Processes
  - UF6 conversion processes in the fuel cycle

- **`/enrichment/`** - Uranium Enrichment
  - Enrichment technologies, SWU calculations, global capacity
  - Contains `world_enrichment_cap.png`, `neri_hyperfine_2002.png`

- **`/fuel-fabrication/`** - Fuel Fabrication
  - Manufacturing of nuclear fuel assemblies

- **`/in-core/`** - In-Core Fuel Management
  - Reactor operation, fuel loading patterns, burnup management

- **`/reprocessing/`** - Spent Fuel Reprocessing
  - Back-end fuel cycle, PUREX process, closed fuel cycles

- **`/high-level-waste/`** - High-Level Waste Management
  - SNF disposal, geological repositories, waste regulations

- **`/low-level-waste/`** - Low-Level Waste Management
  - LLW classification, disposal methods

- **`/environmental-effects/`** - Environmental Effects
  - Environmental impacts of nuclear power, lifecycle analysis

- **`/nonproliferation-and-safeguards/`** - Nonproliferation and Safeguards
  - Proliferation resistance, IAEA safeguards, security considerations

#### `/project/` - Course Projects
- **Purpose:** Final project specifications and rubrics
- **Key Files:**
  - `project.tex` - Project description and requirements
  - `rubric.tex` - Grading rubric
  - `project.pdf` - Compiled project specification (generated)

#### `/hw/` - Homework Assignments
- **Purpose:** Homework assignments (currently contains `/hw06/`)
- **Note:** Homework assignments may be distributed separately or via Canvas

---

## File Types and Purposes

### Jupyter Notebooks (`.ipynb`)
- **Count:** 21 notebooks across the repository
- **Purpose:** Interactive lecture content combining:
  - Explanatory text in Markdown cells
  - Mathematical equations (LaTeX formatting)
  - Python code for calculations and demonstrations
  - Visualizations using matplotlib
  - Interactive exercises for students

**Notebook Structure Pattern:**
1. Import statements (numpy, matplotlib, pandas, scipy)
2. Learning objectives section
3. Topic introduction with theory/background
4. Code demonstrations with equations
5. Visualizations and plots
6. Discussion questions
7. Key lessons summary
8. Preview of next topic

**Common Code Patterns:**
```python
%matplotlib notebook
%matplotlib inline
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
```

### LaTeX Documents (`.tex`)
- **Syllabi:** Professional course documentation with university formatting
- **Reading Lists:** Weekly assignments using the `exam` document class
- **Projects:** Detailed specifications using `article` class
- **Common packages:**
  - `geometry` for margins
  - `hyperref` for links
  - `amsmath`, `amssymb` for equations
  - `fancyhdr` for headers/footers
  - `splitbib` for categorized bibliographies (Required/Recommended)

### Bibliography Files (`.bib`)
- **Purpose:** BibTeX references for readings and citations
- **Format:** Standard BibTeX entries for books, articles, reports

### Images and Figures
- **Count:** 146 files (PNG, JPG, JPEG, PDF)
- **Purpose:**
  - Diagrams of fuel cycle processes
  - Data visualizations and charts
  - Historical figures and photos
  - Technical schematics
  - Reference material from external sources

### Supporting Files
- **`.gitignore`** - Excludes LaTeX auxiliary files (`.bbl`, `.aux`, `.out`, `.blg`, `.fls`, `*_latexmk`, `.log`)
- **`requirements.txt`** - Python dependencies
- **`LICENSE`** - CC BY 4.0 license text
- **`README.md`** - Student-facing getting started guide

---

## Build and Run Commands

### Running Jupyter Notebooks

#### Option 1: Online via Binder (Easiest)
```bash
# No installation required
# Visit: http://mybinder.org/repo/katyhuff/npre412
```
**Note:** Binder servers may be overloaded at times. Check status at http://mybinder.org/status

#### Option 2: Local Installation

**Prerequisites:**
- Python 3.x (via Anaconda recommended)
- Git (optional but recommended)

**Setup:**
```bash
# Clone the repository
git clone https://github.com/katyhuff/npre412.git
cd npre412

# Install Python dependencies
pip install -r requirements.txt
# Or using conda:
conda install numpy matplotlib pandas scipy
pip install mpld3

# Launch Jupyter
jupyter notebook
```
Your browser will open to `localhost:8888` where you can navigate to and run notebooks.

**Updating Content:**
```bash
# Pull latest changes (if using git)
git pull origin master
```
**Note:** If you've made local edits, you may need to commit or stash them first to avoid merge conflicts.

### Building LaTeX Documents

**General Pattern (used in `/syllabus/`):**
```bash
cd syllabus
make              # Builds PDF via pdflatex
make clean        # Removes auxiliary files
make realclean    # Removes all generated files including PDF
```

**Manual Build Process:**
```bash
pdflatex -halt-on-error -file-line-error syllabus.tex
bibtex syllabus.aux
pdflatex -halt-on-error -file-line-error syllabus.tex
pdflatex -halt-on-error -file-line-error syllabus.tex
```
**Note:** Multiple pdflatex runs are needed for cross-references and bibliography.

**Reading Lists:** Each weekly reading directory requires the same build process:
```bash
cd readings/wk02
pdflatex wk02.tex
bibtex wk02.aux
pdflatex wk02.tex
pdflatex wk02.tex
```

---

## Python Dependencies

**From `requirements.txt`:**
- `numpy` - Numerical computing, array operations
- `matplotlib` - Plotting and visualization
- `pandas` - Data structures and analysis (DataFrames for cost tables)
- `mpld3` - Interactive matplotlib plots in notebooks
- `scipy` - Scientific computing, optimization

**Usage Patterns:**
- **numpy:** Mathematical operations, equation implementations
- **matplotlib:** Cost curves, decay plots, comparison charts
- **pandas:** Organizing tabular data (capital costs, O&M expenses, fuel costs)
- **mpld3:** Interactive tooltips and enhanced notebook plots
- **scipy:** Advanced calculations and numerical methods

---

## Code Style and Conventions

### Jupyter Notebook Conventions

#### Cell Organization
1. **First cell:** Import statements and matplotlib magic commands
2. **Second cell (Markdown):** Title and learning objectives
3. **Body cells:** Alternating markdown (theory) and code (demonstration)
4. **Final cells:** Summary and next topic preview

#### Markdown Style
- **Headers:** Title (H1), Learning Objectives (H2), Sections (H2), Subsections (H3)
- **Discussion prompts:** Clearly labeled as "### Discussion: [Question]"
- **Images:** Embedded with markdown syntax, often with external URLs
- **Equations:** LaTeX math in `$$...$$` (display) or `$...$` (inline)

#### Python Code Style
- **Functions:** Clearly documented with docstrings
  ```python
  def late_grade(hours_late, grade=100, half_life=1):
      """This function describes how much credit you will get for late work"""
      lam = math.log(2)/half_life
      return grade*math.exp(-lam*hours_late)
  ```
- **Variable naming:** Descriptive names, often matching mathematical notation
- **Comments:** Explaining physical/economic significance of calculations
- **Plotting:** Consistent style with labeled axes, titles, and legends

#### Educational Features
- **Exercise blocks:** Marked with "**Exercise**" for in-class activities
- **Interactive plots:** Using mpld3 for tooltips and interactivity
- **Real-world data:** Historical construction costs, enrichment capacity, etc.
- **Pedagogical calculations:** Step-by-step derivations with intermediate results

### LaTeX Document Conventions

#### Syllabus Style
- **Document class:** `article[11pt, a4paper]`
- **Margins:** 1 inch all around
- **Headers:** Course info in header via `fancyhdr`
- **Structure:** Title, course info table, sections with clear headings
- **Commands:** Custom commands for course details (e.g., `\CourseTitle`, `\CourseInstructor`)

#### Reading Lists Style
- **Document class:** `exam[12pts]`
- **Bibliography categories:** Required vs. Recommended (via `splitbib` package)
- **Custom commands:** `\class`, `\term`, `\assignment`, `\duedate`
- **Minimalist:** Focus on bibliography entries, minimal additional text

#### Common Patterns
- **Hyperlinks:** Blue links for URLs, red for internal references
- **Color scheme:** Defined custom colors (darkblue, darkred, darkgreen)
- **Bibliography:** Unsorted style (`\bibliographystyle{unsrt}` or `plainurl`)

---

## Course Organization and Pedagogy

### Assessment Structure

**Undergraduate Grading:**
- Quizzes: 10%
- Homework: 40%
- Project Proposal: 10%
- Long Read (Book Report): 20%
- Final Project: 20%

**Graduate Grading:**
- Quizzes: 0% (not required)
- Homework: 30%
- Project Proposal: 20%
- Long Read: 20%
- Final Project: 30%

### Weekly Workflow

**Tuesday:**
- Reading assignment posted (due following Tuesday at 9:30am)
- Homework assigned (due following Tuesday at 9:30am)
- Quiz on previous week's reading (due Tuesday at 9:30am)

**Thursday:**
- Continued lecture on topic

**Philosophy:** Active learning approach - students study background material independently, class time focuses on discussion, demonstration, and application.

### Late Work Policy

Highly structured exponential decay policy:
- Half-life: 1 hour
- Formula: G(t) = G₀e^(-λt) where λ = ln(2)/1 hour
- Result: 1 hour late = 50% credit, 6 hours late = 1.56% credit, 24 hours late ≈ 0% credit
- **No negotiation** except with Dean of Students absence letter

### Projects

**Quantitative Research Project:**
- Multi-stage: Proposal → Research → Presentation
- Final presentations during exam period (7:00-10:00pm on scheduled final exam date)
- Graduate students have higher expectations

**Long Read Assignment:**
- In-depth critical analysis of relevant book
- Individual presentation and written report

---

## Key Topics Covered

The course follows the nuclear fuel cycle chronologically:

1. **Introduction** - Course overview, NFC basics
2. **Economics** - LCOE, time value of money, capital costs
3. **Reactor Physics** - Fundamentals, depletion, burnup
4. **Front End:**
   - Mining and milling
   - Conversion
   - Enrichment
   - Fuel fabrication
5. **In-Core** - Fuel management, loading patterns
6. **Back End:**
   - Reprocessing
   - High-level waste disposal
   - Low-level waste management
7. **Crosscutting:**
   - Environmental effects
   - Nonproliferation and safeguards

---

## Important Notes for Future Course Iterations

### For Updating Content

1. **Notebooks:**
   - Ensure all external image URLs are still valid
   - Test all code cells execute without errors
   - Update year references in introduction notebook
   - Verify mybinder.org compatibility

2. **Syllabus:**
   - Update `\CourseYear` and `\CourseSemester` in `syllabus.tex`
   - Update final exam date in Important Dates section
   - Update course room/building if changed
   - Rebuild PDF: `cd syllabus && make`

3. **Reading Lists:**
   - Review and update bibliography entries for currency
   - Add new relevant publications
   - Update due dates in `\duedate` command
   - Check that all cited works are available to students

4. **Projects:**
   - Review project topics for relevance
   - Update any date-specific references
   - Consider rotating project options

### Course Delivery Platforms

- **Canvas:** Quizzes, grade management, announcements
- **GitHub:** Primary content repository, version control
- **Binder:** Browser-based notebook execution (backup option)
- **Local Jupyter:** Recommended for students who want to save work

### Student Support Resources

**Installation Help:**
- Anaconda Python distribution: https://www.continuum.io/downloads
- Git installation: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
- Jupyter beginner guide: http://jupyter-notebook-beginner-guide.readthedocs.io/

**Communication Channels:**
- Office hours: katyhuff.youcanbook.me (24-hour advance booking required)
- Email: kdhuff@illinois.edu
- Collaboration with peers encouraged

---

## Common Tasks for TAs and Course Staff

### Updating Dependencies
```bash
# Check for outdated packages
pip list --outdated

# Update requirements.txt if needed
pip freeze > requirements.txt
```

### Testing Notebooks
```bash
# Quick test - ensure all notebooks can be opened
jupyter nbconvert --execute --to notebook *.ipynb

# Or manually:
jupyter notebook
# Run Kernel → Restart & Run All for each notebook
```

### Building All Reading Lists
```bash
cd readings
for dir in wk*/; do
    (cd "$dir" && pdflatex *.tex && bibtex *.aux && pdflatex *.tex && pdflatex *.tex)
done
```

### Cleaning Repository
```bash
# Remove all LaTeX auxiliary files
find . -name "*.aux" -o -name "*.log" -o -name "*.bbl" -o -name "*.blg" | xargs rm

# Remove Jupyter checkpoints
find . -name ".ipynb_checkpoints" -type d -exec rm -rf {} +
```

---

## External Resources and References

### Key Textbook
- Tsoulfanidis, N., & Lange, R. (2013). *Nuclear Energy: Selected Entries from the Encyclopedia of Sustainability Science and Technology*. Springer.

### Data Sources in Notebooks
- Lovering et al. (2016) - Historical construction costs: http://thebreakthrough.org/
- OpenEI Transparent Cost Database: http://en.openei.org/apps/TCDB/
- NEI Nuclear Statistics: http://www.nei.org/Knowledge-Center/Nuclear-Statistics/

### Regulatory and Policy References
- U.S. NRC regulations and guidance
- DOE pathways and reports
- IAEA safeguards documentation

---

## Repository Maintenance

### Version Control Best Practices
- Commit compiled PDFs only when significant updates are made
- Keep `.gitignore` current to avoid committing auxiliary files
- Tag releases for each semester (e.g., `spring-2025`, `spring-2026`)
- Use descriptive commit messages referencing specific lecture topics

### File Organization
- Keep related content together (notebook + images in same directory)
- Use descriptive filenames (topic-based, not date-based for lecture content)
- Maintain consistent naming: lowercase with hyphens (e.g., `high-level-waste/`)

### Accessibility
- All content under CC BY 4.0 - students can freely use and share
- Public GitHub repository - transparent and accessible
- Multiple access methods (Binder, local) accommodate different student needs

---

## Troubleshooting

### Common Issues

**Binder won't load:**
- Check mybinder.org status page
- Verify repository is public
- Try local installation instead

**LaTeX won't compile:**
- Check for missing packages: `tlmgr install <package-name>`
- Verify all `.bib` files are present
- Look for special characters that need escaping

**Notebook kernel errors:**
- Restart kernel: Kernel → Restart
- Check Python version (needs 3.x)
- Reinstall dependencies: `pip install -r requirements.txt`

**Import errors in notebooks:**
- Install missing package: `pip install <package-name>`
- Check package is in requirements.txt
- Verify correct conda/pip environment is active

---

## Contact and Support

**Instructor:** Prof. Kathryn Huff
- Email: kdhuff@illinois.edu
- Office: 111B Talbot Laboratory
- Appointments: https://katyhuff.youcanbook.me

**Repository:** https://github.com/katyhuff/npre412
**Course Website:** https://canvas.illinois.edu

---

*Last Updated: Based on Spring 2025 course materials*
*Document created for Claude Code assistant to understand repository structure and conventions*
