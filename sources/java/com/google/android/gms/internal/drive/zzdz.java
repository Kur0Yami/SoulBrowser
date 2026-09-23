package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveResource;

/* loaded from: classes.dex */
final class zzdz implements DriveResource.MetadataResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f10152c;

    public zzdz(Status status) {
        this.f10152c = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10152c;
    }
}
