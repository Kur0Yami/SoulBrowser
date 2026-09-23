package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzwa;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzwv extends zzwm {
    public final Callable g;
    public final /* synthetic */ zzww h;

    public zzwv(zzww zzwwVar, Callable callable) {
        this.h = zzwwVar;
        callable.getClass();
        this.g = callable;
    }

    @Override // com.google.android.gms.internal.cast.zzwm
    public final boolean a() {
        return this.h.isDone();
    }

    @Override // com.google.android.gms.internal.cast.zzwm
    public final Object b() {
        return this.g.call();
    }

    @Override // com.google.android.gms.internal.cast.zzwm
    public final void c(Object obj) {
        zzww zzwwVar = this.h;
        zzwwVar.getClass();
        if (obj == null) {
            obj = zzwb.h;
        }
        if (zzwb.k.g(zzwwVar, null, obj)) {
            zzwa.g(zzwwVar);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwm
    public final void d(Throwable th) {
        zzww zzwwVar = this.h;
        zzwwVar.getClass();
        if (zzwb.k.g(zzwwVar, null, new zzwa.zzc(th))) {
            zzwa.g(zzwwVar);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwm
    public final String e() {
        return this.g.toString();
    }
}
