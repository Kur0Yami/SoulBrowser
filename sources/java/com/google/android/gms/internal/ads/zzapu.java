package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public final class zzapu {

    /* renamed from: a, reason: collision with root package name */
    public final String f4329a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4330c;
    public int d;
    public String e;

    public zzapu(int i, int i2, int i3) {
        String str;
        if (i != Integer.MIN_VALUE) {
            str = android.support.v4.media.a.g(i, "/", new StringBuilder(String.valueOf(i).length() + 1));
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        this.f4329a = str;
        this.b = i2;
        this.f4330c = i3;
        this.d = IntCompanionObject.MIN_VALUE;
        this.e = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public final void a() {
        int i;
        int i2 = this.d;
        if (i2 == Integer.MIN_VALUE) {
            i = this.b;
        } else {
            i = i2 + this.f4330c;
        }
        this.d = i;
        int length = String.valueOf(i).length();
        String str = this.f4329a;
        this.e = androidx.work.impl.workers.a.r(i, str, new StringBuilder(str.length() + length));
    }

    public final void b() {
        if (this.d != Integer.MIN_VALUE) {
        } else {
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }
    }
}
