package com.google.android.gms.internal.ads;

import android.util.Base64;

/* loaded from: classes.dex */
final /* synthetic */ class zzpa implements zzgqs {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ zzpa f9150c = new Object();

    @Override // com.google.android.gms.internal.ads.zzgqs
    public final Object zza() {
        byte[] bArr = new byte[12];
        zzpc.i.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }
}
