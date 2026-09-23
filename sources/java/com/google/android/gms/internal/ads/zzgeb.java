package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.DisplayMetrics;

/* loaded from: classes.dex */
public final class zzgeb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7866a;

    public zzgeb(zzijh zzijhVar) {
        this.f7866a = zzijhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        DisplayMetrics displayMetrics = ((Context) this.f7866a.f9006a).getResources().getDisplayMetrics();
        zzijo.a(displayMetrics);
        return displayMetrics;
    }
}
