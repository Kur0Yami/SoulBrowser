package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfqn implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfqy f7570a;

    public zzfqn(zzfqy zzfqyVar) {
        this.f7570a = zzfqyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        zzfqy zzfqyVar = this.f7570a;
        synchronized (zzfqyVar) {
            try {
                boolean z = false;
                zzfqyVar.m.set(false);
                if (obj != null) {
                    zzfqyVar.k.a();
                    zzfqyVar.q.set(true);
                    zzfqyVar.b(obj);
                }
                if (obj != null && zzfqyVar.f != null) {
                    return;
                }
                if (obj == null) {
                    z = true;
                }
                zzfqyVar.c(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzfqy zzfqyVar = this.f7570a;
        synchronized (zzfqyVar) {
            try {
                zzfqyVar.m.set(false);
                if ((th instanceof zzfpq) && ((zzfpq) th).f7543c == 0) {
                    throw null;
                }
                zzfqyVar.c(true);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
