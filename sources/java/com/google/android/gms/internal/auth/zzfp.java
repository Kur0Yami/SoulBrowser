package com.google.android.gms.internal.auth;

import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfp implements zzgj {
    public static final zzfn b = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final zzfo f9544a;

    public zzfp() {
        zzfv zzfvVar;
        try {
            zzfvVar = (zzfv) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            zzfvVar = b;
        }
        zzfo zzfoVar = new zzfo(zzes.f9538a, zzfvVar);
        Charset charset = zzfa.f9540a;
        this.f9544a = zzfoVar;
    }
}
