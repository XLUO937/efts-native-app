# PowerShell build script for Snowflake Native App
python scripts\setup_autogen.py
snow project clean
snow app build
snow app run --dev
