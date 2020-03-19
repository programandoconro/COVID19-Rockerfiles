import pip
import os

def install(package):
    if hasattr(pip, 'main'):
        pip.main(['install', package])
    else:
        pip._internal.main(['install', package])

install('kaggle')

k = open('kaggle.json','w')

kaggle_json =  '{"username":"programandoconro","key":"2831690af9eefadbbde81a9fd3b23693"}'

k.write (kaggle_json)

k.close()

os.system('kaggle datasets download  sudalairajkumar/novel-corona-virus-2019-dataset')
