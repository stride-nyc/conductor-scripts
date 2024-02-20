echo "Uninstalling Autopilot..."
pip3.11 uninstall autopilot

echo "Removing virtual environment..."
pip3.11 cache purge
deactivate

echo "Removing Autopilot directories..."
rm -rf ~/.autopilot
rm -rf ./autopilot

echo "Autopilot uninstalled successfully..."