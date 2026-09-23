package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzijg;
import com.google.android.gms.internal.ads.zzijp;

/* loaded from: classes.dex */
public final class CsiParamDefaults_Factory implements zzijg<CsiParamDefaults> {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f3306a;
    public final zzijp b;

    public CsiParamDefaults_Factory(zzijp zzijpVar, zzijp zzijpVar2) {
        this.f3306a = zzijpVar;
        this.b = zzijpVar2;
    }

    public static CsiParamDefaults_Factory create(zzijp<Context> zzijpVar, zzijp<VersionInfoParcel> zzijpVar2) {
        return new CsiParamDefaults_Factory(zzijpVar, zzijpVar2);
    }

    @NonNull
    public static CsiParamDefaults newInstance(@NonNull Context context, @NonNull VersionInfoParcel versionInfoParcel) {
        return new CsiParamDefaults(context, versionInfoParcel);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    @NonNull
    /* renamed from: get, reason: merged with bridge method [inline-methods] */
    public CsiParamDefaults zzb() {
        return newInstance((Context) this.f3306a.zzb(), (VersionInfoParcel) this.b.zzb());
    }
}
