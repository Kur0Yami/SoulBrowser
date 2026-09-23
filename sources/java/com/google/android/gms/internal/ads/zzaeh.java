package com.google.android.gms.internal.ads;

import java.lang.reflect.Constructor;

/* loaded from: classes.dex */
final /* synthetic */ class zzaeh implements zzaei {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzaeh f3953a = new Object();

    @Override // com.google.android.gms.internal.ads.zzaei
    public final /* synthetic */ Constructor zza() {
        int[] iArr = zzaek.f3955c;
        if (!Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
            return null;
        }
        return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(zzaeo.class).getConstructor(Integer.TYPE);
    }
}
