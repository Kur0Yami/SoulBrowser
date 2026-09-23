package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final /* synthetic */ class zzgcw implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzgda f7829a;
    public final /* synthetic */ int b;

    public /* synthetic */ zzgcw(zzgda zzgdaVar, int i) {
        this.f7829a = zzgdaVar;
        this.b = i;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        int i = this.b - 1;
        zzgda zzgdaVar = this.f7829a;
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return (zzgct) zzgdaVar.f7836c.zzb();
                }
                zzgdaVar.getClass();
                throw new IllegalArgumentException();
            }
            return (zzgct) zzgdaVar.b.zzb();
        }
        return (zzgct) zzgdaVar.f7835a.zzb();
    }
}
