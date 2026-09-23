package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.wrappers.Wrappers;

/* loaded from: classes.dex */
public final class zzcmc implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclp f5262a;
    public final zzijf b;

    public zzcmc(zzclp zzclpVar, zzijf zzijfVar) {
        this.f5262a = zzclpVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        try {
            return Wrappers.packageManager(this.f5262a.a()).getPackageInfo(((ApplicationInfo) this.b.zzb()).packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
