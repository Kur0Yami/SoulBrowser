package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfpg implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfne f7529a;
    public final /* synthetic */ zzfno b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzdcz f7530c;
    public final /* synthetic */ zzfpi d;

    public zzfpg(zzfpi zzfpiVar, zzfne zzfneVar, zzfno zzfnoVar, zzdcz zzdczVar) {
        this.f7529a = zzfneVar;
        this.b = zzfnoVar;
        this.f7530c = zzdczVar;
        this.d = zzfpiVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00bc, code lost:
    
        if (r4.equals("PRECISE") != false) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d8 A[Catch: JSONException -> 0x007e, TryCatch #0 {JSONException -> 0x007e, blocks: (B:16:0x003a, B:26:0x007b, B:28:0x0097, B:39:0x00cb, B:41:0x00d8, B:46:0x00df), top: B:15:0x003a }] */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00bf  */
    @Override // com.google.android.gms.internal.ads.zzgyj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfpg.a(java.lang.Object):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzfne zzfneVar = this.f7529a;
        if (zzfneVar == null) {
            return;
        }
        zzfneVar.zzd(false);
        zzfno zzfnoVar = this.b;
        if (zzfnoVar == null) {
            this.d.f.b(zzfneVar.zzm());
        } else {
            zzfnoVar.a(zzfneVar);
            zzfnoVar.h();
        }
    }
}
