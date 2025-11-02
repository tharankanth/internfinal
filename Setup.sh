#!/bin/bash

# setup.sh - Complete Project Setup Script for EV Charging Locator
# Author: Tharan Kanth M
# Date: October 30, 2025

echo "======================================================================"
echo "  EV CHARGING STATION LOCATOR - PROJECT SETUP"
echo "======================================================================"
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check Python installation
echo -e "${BLUE}[1/7] Checking Python installation...${NC}"
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version)
    echo -e "${GREEN}✓ Python found: $PYTHON_VERSION${NC}"
else
    echo -e "${YELLOW}⚠ Python 3 not found. Please install Python 3.9 or higher.${NC}"
    exit 1
fi

# Check pip installation
echo -e "${BLUE}[2/7] Checking pip installation...${NC}"
if command -v pip3 &> /dev/null; then
    PIP_VERSION=$(pip3 --version)
    echo -e "${GREEN}✓ pip found: $PIP_VERSION${NC}"
else
    echo -e "${YELLOW}⚠ pip not found. Installing pip...${NC}"
    python3 -m ensurepip --upgrade
fi

# Create virtual environment
echo -e "${BLUE}[3/7] Creating virtual environment...${NC}"
if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo -e "${GREEN}✓ Virtual environment created${NC}"
else
    echo -e "${YELLOW}⚠ Virtual environment already exists${NC}"
fi

# Activate virtual environment
echo -e "${BLUE}[4/7] Activating virtual environment...${NC}"
source venv/bin/activate
echo -e "${GREEN}✓ Virtual environment activated${NC}"

# Upgrade pip
echo -e "${BLUE}[5/7] Upgrading pip...${NC}"
pip install --upgrade pip
echo -e "${GREEN}✓ pip upgraded${NC}"

# Install requirements
echo -e "${BLUE}[6/7] Installing dependencies...${NC}"
echo "This may take a few minutes..."
pip install -r requirements.txt
echo -e "${GREEN}✓ All dependencies installed${NC}"

# Create necessary directories
echo -e "${BLUE}[7/7] Creating project directories...${NC}"
mkdir -p data
mkdir -p models
mkdir -p docs
mkdir -p screenshots
mkdir -p tests
echo -e "${GREEN}✓ Directories created${NC}"

echo ""
echo "======================================================================"
echo -e "${GREEN}  SETUP COMPLETED SUCCESSFULLY!${NC}"
echo "======================================================================"
echo ""
echo "Next steps:"
echo "  1. Generate dataset: python generate_dataset.py"
echo "  2. Train ML model: python ml_model.py"
echo "  3. Run application: streamlit run app.py"
echo ""
echo "To activate virtual environment in future sessions:"
echo "  source venv/bin/activate  (Linux/Mac)"
echo "  venv\\Scripts\\activate    (Windows)"
echo ""
echo "======================================================================"
