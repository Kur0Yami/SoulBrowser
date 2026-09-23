package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;

/* loaded from: classes.dex */
public final class zzdjp implements com.google.android.gms.ads.internal.overlay.zzr, com.google.android.gms.ads.internal.client.zza {

    /* renamed from: c, reason: collision with root package name */
    public final zzdum f5840c;
    public final zzfhu f;
    public final AtomicBoolean g = new AtomicBoolean(false);

    public zzdjp(zzdum zzdumVar, zzfhu zzfhuVar) {
        this.f5840c = zzdumVar;
        this.f = zzfhuVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzdum zzdumVar = this.f5840c;
        if (zzdumVar.b.get()) {
            zzfza zzfzaVar = zzdumVar.f6157a;
            zzfzaVar.getClass();
            BuildersKt.b(zzfzaVar.f7739a, new zzfyr(zzfzaVar, null), 3);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdS() {
        if (!this.g.getAndSet(true)) {
            zzdum zzdumVar = this.f5840c;
            if (zzdumVar.b.getAndSet(false)) {
                zzfza zzfzaVar = zzdumVar.f6157a;
                zzfzaVar.getClass();
                BuildersKt.b(zzfzaVar.f7739a, new zzfyt(zzfzaVar, null), 3);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdT(int i) {
        if (!this.g.getAndSet(true)) {
            zzdum zzdumVar = this.f5840c;
            if (zzdumVar.b.getAndSet(false)) {
                zzfza zzfzaVar = zzdumVar.f6157a;
                zzfzaVar.getClass();
                BuildersKt.b(zzfzaVar.f7739a, new zzfyt(zzfzaVar, null), 3);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdo() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdp() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdx() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdy() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdz() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzh() {
        String gwsQueryId = this.f.b;
        boolean a2 = zzgpz.a(gwsQueryId);
        zzdum zzdumVar = this.f5840c;
        if (a2) {
            zzdumVar.getClass();
            return;
        }
        if (zzdumVar.f6158c.get() && !zzdumVar.b.getAndSet(true)) {
            zzfza zzfzaVar = zzdumVar.f6157a;
            zzfzaVar.getClass();
            Intrinsics.checkNotNullParameter(gwsQueryId, "gwsQueryId");
            BuildersKt.b(zzfzaVar.f7739a, new zzfyp(zzfzaVar, gwsQueryId, null), 3);
        }
    }
}
