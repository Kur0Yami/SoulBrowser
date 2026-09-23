package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.TreeMap;

/* loaded from: classes.dex */
final class zzr {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3178a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final TreeMap f3179c = new TreeMap();
    public String d;
    public String e;
    public final String f;

    public zzr(Context context, String str) {
        String concat;
        this.f3178a = context.getApplicationContext();
        this.b = str;
        String packageName = context.getPackageName();
        try {
            String str2 = Wrappers.packageManager(context).getPackageInfo(context.getPackageName(), 0).versionName;
            StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 1 + String.valueOf(str2).length());
            sb.append(packageName);
            sb.append("-");
            sb.append(str2);
            concat = sb.toString();
        } catch (PackageManager.NameNotFoundException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to get package version name for reporting", e);
            concat = String.valueOf(packageName).concat("-missing");
        }
        this.f = concat;
    }
}
