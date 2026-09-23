package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfqt implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfqy f7576c;

    public zzfqt(zzfqy zzfqyVar) {
        this.f7576c = zzfqyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfqy zzfqyVar = this.f7576c;
        zzfqd zzfqdVar = zzfqyVar.r;
        if (zzfqdVar != null) {
            Clock clock = zzfqyVar.s;
            zzfqdVar.g("pae", "paeo_ts", clock.currentTimeMillis(), zzfqyVar.e.zzd, 0, null, zzfqyVar.t, zzfqyVar.f());
        }
    }
}
