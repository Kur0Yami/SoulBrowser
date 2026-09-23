package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
final /* synthetic */ class zzesb implements zzgxu {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzesb f6874a = new Object();

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final /* synthetic */ ListenableFuture zza(Object obj) {
        if (((Throwable) obj) instanceof TimeoutException) {
            return zzgym.a(new zzese(Integer.toString(17)));
        }
        return zzgym.a(new zzese(null));
    }
}
