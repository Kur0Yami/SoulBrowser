package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.security.Security;

/* loaded from: classes.dex */
public final class zzhhf {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f8544a = {"GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt"};

    public static Provider a() {
        for (int i = 0; i < 3; i++) {
            Provider provider = Security.getProvider(f8544a[i]);
            if (provider != null) {
                return provider;
            }
        }
        return null;
    }
}
