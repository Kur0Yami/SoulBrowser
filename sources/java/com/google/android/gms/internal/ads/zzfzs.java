package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;

/* loaded from: classes.dex */
public final class zzfzs implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7752a;

    public zzfzs(zzijh zzijhVar) {
        this.f7752a = zzijhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        File dir = ((Context) this.f7752a.f9006a).getDir("yqzdkcache", 0);
        zzijo.a(dir);
        return dir;
    }
}
