package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzek implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzel f6581c;

    public /* synthetic */ zzek(zzel zzelVar) {
        this.f6581c = zzelVar;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        zzel zzelVar = this.f6581c;
        zzej zzejVar = (zzej) zzelVar.f6622a.get();
        if (zzejVar != null) {
            zzejVar.j(zzelVar.f6623c.b());
        }
    }
}
