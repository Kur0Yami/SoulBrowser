package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.MetadataBuffer;

/* loaded from: classes.dex */
public final class zzaq implements DriveApi.MetadataBufferResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f10142c;
    public final MetadataBuffer f;

    public zzaq(Status status, MetadataBuffer metadataBuffer) {
        this.f10142c = status;
        this.f = metadataBuffer;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10142c;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void release() {
        MetadataBuffer metadataBuffer = this.f;
        if (metadataBuffer != null) {
            metadataBuffer.release();
        }
    }
}
