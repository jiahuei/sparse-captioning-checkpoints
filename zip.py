r"""
Created on 12/8/2021 4:52 PM
@author: jiahuei

python zip.py
"""
import os
import zipfile


def list_files(path):
    files = [os.path.join(root, f) for root, dirs, files in os.walk(path) for f in files]
    return files


def zip_dir(target_dir, save_dir):
    out = os.path.join(save_dir, os.path.basename(target_dir) + ".zip")
    print(f"Zipping `{target_dir}` into `{out}`")
    with zipfile.ZipFile(out, 'w', compression=zipfile.ZIP_DEFLATED) as zf:
        for f in list_files(target_dir):
            zf.write(f, f.replace(os.path.dirname(target_dir), ""))


if __name__ == "__main__":
    zip_dir("./ACORT/ACORT-small", ".")
