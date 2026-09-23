package com.google.android.gms.internal.drive;

import com.google.android.gms.drive.DriveFile;

/* loaded from: classes.dex */
public final class zzhj extends zzhh<DriveFile> {
    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void s4(zzfn zzfnVar) {
        if (zzfnVar.f10169c.h != 1) {
            this.f10191c.b(new Object());
            return;
        }
        throw new IllegalStateException("This DriveId corresponds to a folder. Call asDriveFolder instead.");
    }
}
