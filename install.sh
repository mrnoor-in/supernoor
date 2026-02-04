
#!/usr/bin/env bash

echo "🚀 Installing SuperNoor..."
echo "👨‍💻 Created by Mr. Noor"
echo "📢 Telegram: https://t.me/mrnoor_in"
echo ""

OS=$(uname | tr '[:upper:]' '[:lower:]')

if [[ "$OS" == "linux" ]]; then
  BIN="supernoor-linux"
elif [[ "$OS" == "darwin" ]]; then
  BIN="supernoor-macos"
else
  echo "❌ Unsupported OS"
  exit 1
fi

curl -L -o supernoor "https://github.com/YOUR_USERNAME/supernoor/releases/latest/download/$BIN"
chmod +x supernoor
sudo mv supernoor /usr/local/bin/

echo "✅ Installed successfully!"
echo "👉 Run: supernoor"
