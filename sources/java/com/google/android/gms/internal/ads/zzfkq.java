package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfkq implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfkt f7440a;
    public final /* synthetic */ zzfkv b;

    public zzfkq(zzfkv zzfkvVar, zzfkt zzfktVar) {
        this.f7440a = zzfktVar;
        this.b = zzfkvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* synthetic */ void a(Object obj) {
        zzfkv zzfkvVar = this.b;
        synchronized (zzfkvVar) {
            try {
                zzfkvVar.d = null;
                zzfkvVar.f7444c.addFirst(this.f7440a);
                if (zzfkvVar.e == 1) {
                    zzfkvVar.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzfkv zzfkvVar = this.b;
        synchronized (zzfkvVar) {
            zzfkvVar.d = null;
        }
    }
}
