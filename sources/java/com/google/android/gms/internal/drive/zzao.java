package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;

/* loaded from: classes.dex */
final class zzao implements DriveApi.DriveIdResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f10141c;

    public zzao(Status status) {
        this.f10141c = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10141c;
    }
}
