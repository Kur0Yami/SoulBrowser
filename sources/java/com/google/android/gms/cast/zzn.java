package com.google.android.gms.cast;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzn implements Cast.ApplicationConnectionResult {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Status f3673c;

    public zzn(zzo zzoVar, Status status) {
        this.f3673c = status;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final String B() {
        return null;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final boolean a() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f3673c;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final String k() {
        return null;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final ApplicationMetadata m() {
        return null;
    }
}
