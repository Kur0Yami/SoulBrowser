package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgbd implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7791a;
    public final zzijh b;

    public zzgbd(zzijh zzijhVar, zzijh zzijhVar2) {
        this.f7791a = zzijhVar;
        this.b = zzijhVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        ExecutorService executorService = (ExecutorService) this.f7791a.f9006a;
        zzgad zzgadVar = (zzgad) this.b.f9006a;
        String str = Build.VERSION.RELEASE;
        String str2 = Build.MODEL;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30 + String.valueOf(str2).length() + 1);
        android.support.v4.media.a.z(sb, "Mozilla/5.0 (Linux; Android ", str, "; ", str2);
        sb.append(")");
        return new zzgbi(executorService, sb.toString(), zzgadVar.S());
    }
}
