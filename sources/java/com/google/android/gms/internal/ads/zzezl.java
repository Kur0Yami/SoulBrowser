package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzezl implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7127a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final VersionInfoParcel f7128c;
    public final String d;

    public zzezl(zzgyw zzgywVar, Context context, VersionInfoParcel versionInfoParcel, String str) {
        this.f7127a = zzgywVar;
        this.b = context;
        this.f7128c = versionInfoParcel;
        this.d = str;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f7127a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzezk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i;
                zzezl zzezlVar = zzezl.this;
                Context context = zzezlVar.b;
                boolean isCallerInstantApp = Wrappers.packageManager(context).isCallerInstantApp();
                com.google.android.gms.ads.internal.zzt.zzc();
                boolean zzJ = com.google.android.gms.ads.internal.util.zzs.zzJ(context);
                String str = zzezlVar.f7128c.afmaVersion;
                com.google.android.gms.ads.internal.zzt.zzc();
                boolean zzK = com.google.android.gms.ads.internal.util.zzs.zzK();
                com.google.android.gms.ads.internal.zzt.zzc();
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                if (applicationInfo == null) {
                    i = 0;
                } else {
                    i = applicationInfo.targetSdkVersion;
                }
                return new zzezm(isCallerInstantApp, zzJ, str, zzK, i, DynamiteModule.d(context, ModuleDescriptor.MODULE_ID, false), DynamiteModule.a(context, ModuleDescriptor.MODULE_ID), zzezlVar.d);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 35;
    }
}
