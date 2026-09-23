package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzlb implements zzlv {
    public static final zzkz b = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final zzla f10390a;

    public zzlb() {
        zzlh zzlhVar;
        try {
            zzlhVar = (zzlh) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            zzlhVar = b;
        }
        zzla zzlaVar = new zzla(zzjx.f10384a, zzlhVar);
        Charset charset = zzkk.f10385a;
        this.f10390a = zzlaVar;
    }
}
