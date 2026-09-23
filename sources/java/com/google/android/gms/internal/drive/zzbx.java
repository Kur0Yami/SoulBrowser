package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFolder;

/* loaded from: classes.dex */
final class zzbx implements DriveFolder.DriveFileResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f10146c;

    public zzbx(Status status, zzbn zzbnVar) {
        this.f10146c = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10146c;
    }
}
