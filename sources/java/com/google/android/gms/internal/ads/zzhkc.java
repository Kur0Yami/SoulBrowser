package com.google.android.gms.internal.ads;

import java.security.SecureRandom;

/* loaded from: classes.dex */
public final class zzhkc {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f8609a = new ThreadLocal();

    public static byte[] a(int i) {
        byte[] bArr = new byte[i];
        ((SecureRandom) f8609a.get()).nextBytes(bArr);
        return bArr;
    }
}
