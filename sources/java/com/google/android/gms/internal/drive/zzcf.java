package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DrivePreferencesApi;
import com.google.android.gms.drive.FileUploadPreferences;

/* loaded from: classes.dex */
final class zzcf implements DrivePreferencesApi.FileUploadPreferencesResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f10150c;
    public final FileUploadPreferences f;

    public zzcf(Status status, FileUploadPreferences fileUploadPreferences) {
        this.f10150c = status;
        this.f = fileUploadPreferences;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10150c;
    }
}
