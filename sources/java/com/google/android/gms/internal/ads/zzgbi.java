package com.google.android.gms.internal.ads;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgbi implements zzgbc {

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f7797a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final long f7798c;

    public zzgbi(ExecutorService executorService, String str, long j) {
        this.f7797a = executorService;
        this.b = str;
        this.f7798c = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgbc
    public final ListenableFuture a(String str, byte[] bArr) {
        return CallbackToFutureAdapter.a(new zzgbf(this, str, true, "application/x-protobuf", bArr));
    }

    @Override // com.google.android.gms.internal.ads.zzgbc
    public final ListenableFuture zza(String str) {
        return CallbackToFutureAdapter.a(new zzgbf(this, str, false, null, new byte[0]));
    }
}
