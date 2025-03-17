import pickle
import os
import sys

base_path = sys.argv[1]
print(base_path)
# base_path = '/usr/stud/lyun/storage/user/4dgsam/new_data/immersive/11_Alexa_Meade_Face_Paint_2'
feats_path = os.path.join(base_path, 'language_features')
new_feats_path = os.path.join(base_path, 'language_features_new')
os.makedirs(new_feats_path, exist_ok=True)

with open(f"{feats_path}/data_list.pkl", "rb") as fp:   # Unpickling
    data_list = pickle.load(fp)
    
print(data_list)

import re
import os
end_frame = 50
img_path_list = []

for data_path in data_list:
    # print(data_path)
    if end_frame != -1:
        fid = (int)(re.findall(r'\d+', data_path)[-1])
        if fid > end_frame:
            continue
        image_path = os.path.join(data_path)
        img_path_list.append(image_path)
print(len(img_path_list))
print(data_list[len(img_path_list) - 1])

import shutil

for i, img_path in enumerate(img_path_list):
    s = os.path.join(feats_path, data_list[i].split('.')[0] + '_s.npy')
    new_s = os.path.join(new_feats_path, img_path.split('.')[0] + '_s.npy')
    f = os.path.join(feats_path, data_list[i].split('.')[0] + '_f.npy')
    new_f = os.path.join(new_feats_path, img_path.split('.')[0] + '_f.npy')
    print(f"{s} to {new_s}")
    
    shutil.copy(s, new_s) 
    shutil.copy(f, new_f) 
