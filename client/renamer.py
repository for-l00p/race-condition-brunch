import os

for index, (root, dirnames, filenames) in enumerate(os.walk(os.path.join(os.getcwd() + '/assets'), topdown=False)):
  # for index2, d in enumerate(dirnames):
  #   os.rename(os.path.join(root, d), os.path.join(root,
  #                                                 "%d_%d" % (index, index2)))
  for index2, f in enumerate(filenames):
    os.rename(os.path.join(root, f), os.path.join(root,
                                                  "_%d_%d.%s" % (index, index2, f.split('.')[-1])))
