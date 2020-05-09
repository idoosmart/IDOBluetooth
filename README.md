# IDOBlueUpdate
* <P>SDK upgrade function is only responsible for firmware upgrades. Firmware version determination and firmware download are not processed. Note the integrity of the firmware download, passing in the firmware local sandbox path during the upgrade, monitoring the upgrade progress and completion status, and error agent callbacks. The current version of the upgrade library adds the nordic 、realtk 、apollo platform.</P>
Objc:
```objc
<IDOUpdateManagerDelegate>
[IDOUpdateFirmwareManager shareInstance].delegate = self;
[IDOUpdateFirmwareManager shareInstance].updateType = IDO_NORDIC_PLATFORM_TYPE;
- (NSString *)currentPackagePathWithUpdateManager:(IDOUpdateFirmwareManager *)manager
{
   // firmware file path
    return filePath;
}

- (void)updateManager:(IDOUpdateFirmwareManager *)manager
                state:(IDO_UPDATE_STATE)state
{
    if (state == IDO_UPDATE_COMPLETED) { //update complete
    }else { //updating
       
    }
}

- (void)updateManager:(IDOUpdateFirmwareManager *)manager updateError:(NSError *)error
{
   // update error
}

- (void)updateManager:(IDOUpdateFirmwareManager *)manager
             progress:(float)progress
              message:(NSString *)message
{
 // update progress (0-1)
}

@optional
- (IDO_UPDATE_DFU_FIRMWARE_TYPE)selectDfuFirmwareTypeWithUpdateManager:(IDOUpdateFirmwareManager * _Nullable)manager
{
    // update type
    return IDO_DFU_FIRMWARE_APPLICATION_TYPE;
}

- (IDO_REALTK_UPDATE_TYPE)selectRealtkTypeWithUpdateManager:(IDOUpdateFirmwareManager *_Nullable)manager
                                             supportOtaMode:(BOOL)isOtaMode
                                          supportSilentMode:(BOOL)isSilentMode
{
  // update master control program
  return IDO_NORMAL_MODE_UPDATE_TYPE;
  // update flash file
  return IDO_SILENT_MODE_UPDATE_TYPE;
}

```
Swift

```swift
IDOUpdateManagerDelegate
IDOUpdateFirmwareManager.shareInstance().delegate = self;
IDOUpdateFirmwareManager.shareInstance().updateType = IDO_UPDATE_PLATFORM_TYPE.NORDIC_PLATFORM_TYPE;
//update firmware manager delegate
func currentPackagePath(withUpdate manager: IDOUpdateFirmwareManager?) -> String? {
    // firmware file path
    return filePath;
}

func update(_ manager: IDOUpdateFirmwareManager?, progress: Float, message: String?) {
   // update progress (0-1)
}

func update(_ manager: IDOUpdateFirmwareManager?, state: IDO_UPDATE_STATE) {
    if state == IDO_UPDATE_STATE.COMPLETED {
        //update complete
    }else if state == IDO_UPDATE_STATE.DID_ENTER_OTA{
        //enter ota
    }else if state == IDO_UPDATE_STATE.STARTING {
        //updating
    }
}

func update(_ manager: IDOUpdateFirmwareManager?, updateError error: Error?) {
   // update error
}

func selectDfuFirmwareType(withUpdate manager: IDOUpdateFirmwareManager?) -> IDO_UPDATE_DFU_FIRMWARE_TYPE {
    // update type
    return IDO_UPDATE_DFU_FIRMWARE_TYPE.DFU_FIRMWARE_APPLICATION_TYPE;
}

func selectRealtkType(withUpdate manager: IDOUpdateFirmwareManager?, supportOtaMode isOtaMode: Bool, supportSilentMode isSilentMode: Bool) -> IDO_REALTK_UPDATE_TYPE {
    // update master control program
    return IDO_REALTK_UPDATE_TYPE.NORMAL_MODE_UPDATE_TYPE;
    // update flash file
    return IDO_REALTK_UPDATE_TYPE.SILENT_MODE_UPDATE_TYPE;
}

// start update
@objc func updateFirmware() {
    IDOUpdateFirmwareManager.startUpdate();
}
```
