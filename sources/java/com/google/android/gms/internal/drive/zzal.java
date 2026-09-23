package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;

/* loaded from: classes.dex */
final class zzal implements Releasable, DriveApi.DriveContentsResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f10139c;
    public final DriveContents f;

    public zzal(Status status, zzbi zzbiVar) {
        this.f10139c = status;
        this.f = zzbiVar;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10139c;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void release() {
        DriveContents driveContents = this.f;
        if (driveContents != null) {
            driveContents.zzj();
        }
    }
}
