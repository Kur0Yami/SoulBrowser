package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzgmi implements zzglz, zzgcb {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8123a;
    public final zzgnc b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgyw f8124c;
    public final zzgad d;
    public final AtomicBoolean e = new AtomicBoolean(false);
    public ListenableFuture f = zzgyq.f;

    public zzgmi(Context context, zzgad zzgadVar, zzgnc zzgncVar, zzgyw zzgywVar) {
        this.f8123a = context;
        this.b = zzgncVar;
        this.f8124c = zzgywVar;
        this.d = zzgadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void a(HashMap hashMap) {
        hashMap.put("gs", this.f);
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void b(HashMap hashMap) {
        hashMap.put("gs", this.f);
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void c(HashMap hashMap, Context context, View view) {
        hashMap.put("gs", this.f);
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public final ListenableFuture zza() {
        if (!this.e.getAndSet(true) && this.d.K()) {
            return this.f8124c.E0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgmh
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    final zzgmi zzgmiVar = zzgmi.this;
                    ListenableFuture v0 = zzgmiVar.f8124c.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzgmg
                        @Override // java.util.concurrent.Callable
                        public final /* synthetic */ Object call() {
                            Context context = zzgmi.this.f8123a;
                            try {
                                return zzfum.a(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
                            } catch (Throwable unused) {
                                return null;
                            }
                        }
                    });
                    zzgmiVar.b.e(53, v0);
                    zzgmiVar.f = v0;
                }
            });
        }
        return zzgyq.f;
    }
}
