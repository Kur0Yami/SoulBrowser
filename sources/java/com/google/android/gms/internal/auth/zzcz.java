package com.google.android.gms.internal.auth;

import android.net.Uri;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzcz {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f9517a;
    public final String b = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9518c;
    public final boolean d;

    public zzcz(Uri uri, boolean z, boolean z2) {
        this.f9517a = uri;
        this.f9518c = z;
        this.d = z2;
    }

    public final zzcz a() {
        if (this.b.isEmpty()) {
            return new zzcz(this.f9517a, true, this.d);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    public final void b(long j, String str) {
        new zzdc(this, str, Long.valueOf(j));
    }

    public final zzdc c(String str, boolean z) {
        return new zzdc(this, str, Boolean.valueOf(z));
    }
}
