package com.google.android.gms.tasks;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzx implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzw f11630c;
    public final /* synthetic */ Callable f;

    public zzx(zzw zzwVar, Callable callable) {
        this.f11630c = zzwVar;
        this.f = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzw zzwVar = this.f11630c;
        try {
            zzwVar.r(this.f.call());
        } catch (Exception e) {
            zzwVar.t(e);
        } catch (Throwable th) {
            zzwVar.t(new RuntimeException(th));
        }
    }
}
