package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfmg implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfmb f7475a;
    public final /* synthetic */ zzfml b;

    public zzfmg(zzfml zzfmlVar, zzfmb zzfmbVar) {
        this.f7475a = zzfmbVar;
        this.b = zzfmlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        zzfmt zzfmtVar = (zzfmt) this.b.f.f7482c;
        final zzfmb zzfmbVar = this.f7475a;
        zzfmtVar.s0(new zzdgh() { // from class: com.google.android.gms.internal.ads.zzfmr
            @Override // com.google.android.gms.internal.ads.zzdgh
            public final void zza(Object obj2) {
                zzfmb zzfmbVar2 = zzfmb.this;
                ((zzfmv) obj2).i((zzfmo) zzfmbVar2.f7470c, zzfmbVar2.f);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(final Throwable th) {
        zzfmt zzfmtVar = (zzfmt) this.b.f.f7482c;
        final zzfmb zzfmbVar = this.f7475a;
        zzfmtVar.s0(new zzdgh() { // from class: com.google.android.gms.internal.ads.zzfmq
            @Override // com.google.android.gms.internal.ads.zzdgh
            public final void zza(Object obj) {
                zzfmb zzfmbVar2 = zzfmb.this;
                ((zzfmv) obj).a((zzfmo) zzfmbVar2.f7470c, zzfmbVar2.f, th);
            }
        });
    }
}
