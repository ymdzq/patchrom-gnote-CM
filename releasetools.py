import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return


#def AddArgsForFormatSystem(info):
  #edify = info.script
  #for i in xrange(len(edify.script)):
    #if "format(" in edify.script[i] and "mmcblk0p16" in edify.script[i]:
      #edify.script[i] = 'format("ext4", "EMMC", "/dev/block/mmcblk0p16", "0", "/system");'
      #return
#

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def InstallImage(img_name, img_file, partition, info):
  common.ZipWriteStr(info.output_zip, img_name, img_file)
  info.script.AppendExtra(('package_extract_file("' + img_name + '", "' + partition + '");'))

def FullOTA_InstallEnd(info):
  RemoveDeviceAssert(info)

def IncrementalOTA_InstallEnd(info):
  RemoveDeviceAssert(info)
