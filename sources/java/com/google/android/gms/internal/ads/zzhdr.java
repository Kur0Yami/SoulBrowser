package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhdr {
    public static final zzhdr b = new zzhdr("ASSUME_AES_GCM");

    /* renamed from: c, reason: collision with root package name */
    public static final zzhdr f8436c = new zzhdr("ASSUME_XCHACHA20POLY1305");
    public static final zzhdr d = new zzhdr("ASSUME_CHACHA20POLY1305");
    public static final zzhdr e = new zzhdr("ASSUME_AES_CTR_HMAC");
    public static final zzhdr f = new zzhdr("ASSUME_AES_EAX");
    public static final zzhdr g = new zzhdr("ASSUME_AES_GCM_SIV");

    /* renamed from: a, reason: collision with root package name */
    public final String f8437a;

    public zzhdr(String str) {
        this.f8437a = str;
    }

    public final String toString() {
        return this.f8437a;
    }
}
