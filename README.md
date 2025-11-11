# Open GDocs

**Open GDocs** is a lightweight Windows script that allows you to open Google Drive shortcut files  
(`.gdoc`, `.gsheet`, `.gslides`, `.gdraw`, `.gform`, `.gscript`, `.gjam`, `.gtable`) directly from **File Explorer**,  
**without installing Google Drive for Desktop** or syncing through Google’s software.

---

## 🧩 What the project does

Google Drive stores online documents as small JSON files when synced via tools like Synology Drive or rclone.  
These files contain only a link to the actual document (for example, `.gdoc` → a Google Docs URL),  
so when you double-click them, Windows just opens a text viewer.

**Open GDocs** reads that JSON file, extracts the `"url"` field, and opens it in your default browser —  
as if you clicked the document directly in Google Drive.

---

## 💡 Why this project is useful

- Lets you **open Google Docs, Sheets, Slides, etc.** directly from File Explorer.  
- Works even when syncing Google Drive through **Synology Drive, rclone, nextcloud or any third-party client**.  
- Requires **no installation, no admin rights, and no background sync software**.  
- Fully portable — just a single `.bat` file.

---

## 🚀 Getting started

### 1. Download the script
Get the file [`OpenGDocs.bat`](OpenGDocs.bat) and place it somewhere permanent, for example:
C:\Tools\OpenGDocs.bat

### 2. Associate file types
1. Right-click any `.gdoc`, `.gsheet`, or `.gslides` file.  
2. Choose **Open with → Choose another app → More apps → Look for another app on this PC**.  
3. Browse to `OpenGDocs.bat`.  
4. Check **“Always use this app”** and confirm.

Now, double-clicking any Google Drive shortcut file will open it directly in your browser.

---

## 🧰 Supported file types

| Extension | Google file type |
|------------|------------------|
| `.gdoc`    | Docs             |
| `.gsheet`  | Sheets           |
| `.gslides` | Slides           |
| `.gdraw`   | Drawings         |
| `.gform`   | Forms            |
| `.gscript` | Apps Script      |
| `.gjam`    | Jamboard         |
| `.gtable`  | Tables           |

The script automatically works with all these extensions — it simply opens whatever URL is stored inside.

---

## 🆘 Getting help

If you encounter issues or have ideas for improvement:
- Open an **[Issue](../../issues)** on GitHub describing the problem.
- Or start a **Discussion** if you’d like to contribute enhancements or translations.

---

## 👥 Maintainers and contributors

Maintained by **[Nikolai Balabanov](https://github.com/BalabanovN)**.  
Contributions, bug reports, and pull requests are welcome!  
If you find this tool useful, consider giving it a ⭐️ on GitHub.

---

## 📄 License

This project is released under the **MIT License**.  
You are free to use, modify, and distribute it for personal or commercial purposes.
