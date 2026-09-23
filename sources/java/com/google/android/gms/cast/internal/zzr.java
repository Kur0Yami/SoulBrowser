package com.google.android.gms.cast.internal;

import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class zzr implements Cast.ApplicationConnectionResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f3629c;
    public final ApplicationMetadata f;
    public final String g;
    public final String h;
    public final boolean i;

    public zzr(Status status, ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        this.f3629c = status;
        this.f = applicationMetadata;
        this.g = str;
        this.h = str2;
        this.i = z;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final String B() {
        return this.h;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final boolean a() {
        return this.i;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f3629c;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final String k() {
        return this.g;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final ApplicationMetadata m() {
        return this.f;
    }
}
