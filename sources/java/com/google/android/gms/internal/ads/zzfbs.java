package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzfbs implements zzezx {
    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        final ListenableFuture listenableFuture = zzgyq.f;
        ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I6)).getClass();
        return new zzgyl(zzgtd.w(new ListenableFuture[]{listenableFuture, listenableFuture}), true).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzfbr
            public final /* synthetic */ ListenableFuture b = zzgyq.f;

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzfbt((String) ((zzgyq) ListenableFuture.this).f8305c, (String) ((zzgyq) zzgyq.f).f8305c);
            }
        }, zzcdo.f5068a);
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 47;
    }
}
