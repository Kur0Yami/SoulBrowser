package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFolder;

/* loaded from: classes.dex */
final class zzbz implements DriveFolder.DriveFolderResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f10147c;

    public zzbz(Status status, zzbs zzbsVar) {
        this.f10147c = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10147c;
    }
}
