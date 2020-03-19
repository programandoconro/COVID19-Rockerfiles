import pip
import os

def install(package):
    if hasattr(pip, 'main'):
        pip.main(['install', package])
    else:
        pip._internal.main(['install', package])

install('kaggle')

os.system('kaggle datasets download  sudalairajkumar/novel-corona-virus-2019-dataset')




