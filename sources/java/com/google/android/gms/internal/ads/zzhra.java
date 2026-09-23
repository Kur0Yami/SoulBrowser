package com.google.android.gms.internal.ads;

import java.security.spec.ECParameterSpec;

/* loaded from: classes.dex */
public final class zzhra {

    /* renamed from: c, reason: collision with root package name */
    public static final zzhra f8684c = new zzhra("NIST_P256", zzhhq.f8558a);
    public static final zzhra d = new zzhra("NIST_P384", zzhhq.b);
    public static final zzhra e = new zzhra("NIST_P521", zzhhq.f8559c);

    /* renamed from: a, reason: collision with root package name */
    public final String f8685a;
    public final ECParameterSpec b;

    public zzhra(String str, ECParameterSpec eCParameterSpec) {
        this.f8685a = str;
        this.b = eCParameterSpec;
    }

    public final String toString() {
        return this.f8685a;
    }
}
