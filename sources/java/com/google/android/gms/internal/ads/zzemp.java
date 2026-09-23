package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzemp implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f6690a;
    public final /* synthetic */ zzfhu b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfhr f6691c;
    public final /* synthetic */ String d;
    public final /* synthetic */ zzfpe e;
    public final /* synthetic */ zzfic f;
    public final /* synthetic */ zzemr g;

    public zzemp(zzemr zzemrVar, long j, zzfhu zzfhuVar, zzfhr zzfhrVar, String str, zzfpe zzfpeVar, zzfic zzficVar) {
        this.f6690a = j;
        this.b = zzfhuVar;
        this.f6691c = zzfhrVar;
        this.d = str;
        this.e = zzfpeVar;
        this.f = zzficVar;
        Objects.requireNonNull(zzemrVar);
        this.g = zzemrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        long j;
        zzemr zzemrVar = this.g;
        long elapsedRealtime = zzemrVar.f6694a.elapsedRealtime() - this.f6690a;
        synchronized (zzemrVar) {
            try {
                if (zzemrVar.e) {
                    zzemrVar.b.a(this.b, this.f6691c, 0, null, elapsedRealtime);
                    j = elapsedRealtime;
                } else {
                    j = elapsedRealtime;
                }
                if (zzemrVar.g) {
                    return;
                }
                zzfhr zzfhrVar = this.f6691c;
                if (zzemrVar.h(zzfhrVar)) {
                    ((zzemq) zzemrVar.d.get(zzfhrVar)).d = j;
                } else {
                    zzemrVar.d.put(zzfhrVar, new zzemq(this.d, zzfhrVar.f0, 0, j, null));
                }
                zzemrVar.f.c(zzfhrVar, j, null, true);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgyj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.lang.Throwable r14) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzemp.b(java.lang.Throwable):void");
    }
}
