package com.google.android.gms.internal.ads;

import android.app.Activity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzehk extends zzeig {

    /* renamed from: a, reason: collision with root package name */
    public Activity f6507a;
    public com.google.android.gms.ads.internal.overlay.zzm b;

    /* renamed from: c, reason: collision with root package name */
    public String f6508c;
    public String d;

    @Override // com.google.android.gms.internal.ads.zzeig
    public final zzeig a(Activity activity) {
        if (activity != null) {
            this.f6507a = activity;
            return this;
        }
        throw new NullPointerException("Null activity");
    }

    @Override // com.google.android.gms.internal.ads.zzeig
    public final zzeig b(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.b = zzmVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeig
    public final zzeig c(String str) {
        this.f6508c = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeig
    public final zzeig d(String str) {
        this.d = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeig
    public final zzeih e() {
        Activity activity = this.f6507a;
        if (activity != null) {
            return new zzehl(activity, this.b, this.f6508c, this.d);
        }
        throw new IllegalStateException("Missing required properties: activity");
    }
}
