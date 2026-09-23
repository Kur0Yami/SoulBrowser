package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzers implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6856a;
    public final com.google.android.gms.ads.internal.client.zzr b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f6857c;

    public zzers(Context context, com.google.android.gms.ads.internal.client.zzr zzrVar, ArrayList arrayList) {
        this.f6856a = context;
        this.b = zzrVar;
        this.f6857c = arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        zzczm zzczmVar = (zzczm) obj;
        if (!((Boolean) zzbin.f4720a.c()).booleanValue()) {
            return;
        }
        Bundle bundle = new Bundle();
        com.google.android.gms.ads.internal.zzt.zzc();
        String str = null;
        try {
            ActivityManager activityManager = (ActivityManager) this.f6856a.getSystemService("activity");
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && (componentName = runningTaskInfo.topActivity) != null) {
                str = componentName.getClassName();
            }
        } catch (Exception unused) {
        }
        bundle.putString("activity", str);
        Bundle bundle2 = new Bundle();
        com.google.android.gms.ads.internal.client.zzr zzrVar = this.b;
        bundle2.putInt("width", zzrVar.zze);
        bundle2.putInt("height", zzrVar.zzb);
        bundle.putBundle("size", bundle2);
        ArrayList arrayList = this.f6857c;
        if (!arrayList.isEmpty()) {
            bundle.putParcelableArray("parents", (Parcelable[]) arrayList.toArray(new Parcelable[arrayList.size()]));
        }
        zzczmVar.f5627a.putBundle("view_hierarchy", bundle);
    }
}
