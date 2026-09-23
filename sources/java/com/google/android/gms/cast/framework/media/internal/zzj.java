package com.google.android.gms.cast.framework.media.internal;

import android.graphics.Bitmap;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzj implements zza {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzl f3515a;
    public final /* synthetic */ zzm b;

    public zzj(zzm zzmVar, zzl zzlVar) {
        this.f3515a = zzlVar;
        Objects.requireNonNull(zzmVar);
        this.b = zzmVar;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    public final void a(Bitmap bitmap) {
        zzl zzlVar = this.f3515a;
        zzlVar.b = bitmap;
        zzm zzmVar = this.b;
        zzmVar.n = zzlVar;
        zzmVar.a();
    }
}
