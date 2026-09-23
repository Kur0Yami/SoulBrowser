package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfnk implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfno f7503a;
    public final /* synthetic */ zzfne b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f7504c;

    public zzfnk(zzfno zzfnoVar, zzfne zzfneVar, boolean z) {
        this.f7503a = zzfnoVar;
        this.b = zzfneVar;
        this.f7504c = z;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        zzfne zzfneVar = this.b;
        zzfneVar.zzd(true);
        zzfno zzfnoVar = this.f7503a;
        zzfnoVar.a(zzfneVar);
        if (this.f7504c) {
            zzfnoVar.h();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzfne zzfneVar = this.b;
        if (zzfneVar.zzb()) {
            zzfneVar.a(th);
            zzfneVar.zzd(false);
            zzfno zzfnoVar = this.f7503a;
            zzfnoVar.a(zzfneVar);
            if (this.f7504c) {
                zzfnoVar.h();
            }
        }
    }
}
