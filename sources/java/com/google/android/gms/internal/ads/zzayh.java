package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzayh implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzayi f4472c;

    public zzayh(zzayi zzayiVar) {
        this.f4472c = zzayiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzayi zzayiVar = this.f4472c;
        synchronized (zzayiVar.s) {
            if (!zzayiVar.t) {
                zzayiVar.t = true;
                try {
                    zzayiVar.d();
                } catch (Exception e) {
                    this.f4472c.j.c(2023, -1L, e);
                }
                zzayi zzayiVar2 = this.f4472c;
                synchronized (zzayiVar2.s) {
                    zzayiVar2.t = false;
                }
            }
        }
    }
}
