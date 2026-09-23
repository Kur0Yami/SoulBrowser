package com.google.android.gms.internal.drive;

import com.google.android.gms.drive.DriveFolder;

/* loaded from: classes.dex */
public final class zzhk extends zzhh<DriveFolder> {
    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void s4(zzfn zzfnVar) {
        if (zzfnVar.f10169c.h != 0) {
            this.f10191c.b(new Object());
            return;
        }
        throw new IllegalStateException("This DriveId corresponds to a file. Call asDriveFile instead.");
    }
}
