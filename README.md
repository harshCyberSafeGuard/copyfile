# copyfile

A simple bash script utility to copy contents of a file (whole file, last N lines, or last N bytes) to your clipboard using `xclip`.  
Perfect for developers, sysadmins, or CTF players working on Kali Linux or other Linux distros.

# Installation


1. Clone the repository and assign the permission:

```bash
git clone https://github.com/harshcyberasfeguard/copyfile.git
cd copyfile
```
2. Make the script executable:
```
chmod +x copyfile.sh
```
3.	Move it to a directory in your $PATH to make it globally available (persistent):
```
sudo mv copyfile.sh /usr/local/bin/copyfile
```


## 🚀 Usage
Run the script like this:
```python
copyfile <filename>

Then follow the prompt:
Choose copy option:
A: Copy whole file
B: Copy last N bytes
C: Copy last N lines
Enter choice (A/B/C):

```
The selected content will be copied to your system clipboard using xclip.

## 🧾 Dependencies
Make sure xclip is installed. If not, install it with:

Pull requests are welcome. For major changes, please open an issue first
```
sudo apt update
sudo apt install xclip
```
Please make sure to update tests as appropriate.

## 🧠 Example
```copyfile secrets.txt
```
##License
```
---
This project is licensed under the MIT License.
Feel free to use, modify, and share with credit.
```
[MIT](https://choosealicense.com/licenses/mit/)
