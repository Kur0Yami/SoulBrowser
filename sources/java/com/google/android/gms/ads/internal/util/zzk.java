package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.internal.ads.zzbhk;
import com.google.android.gms.internal.ads.zzbhl;
import com.google.android.gms.internal.ads.zzijw;
import com.google.android.gms.internal.ads.zzijx;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzk implements zzbhk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbhl f3154a;
    public final /* synthetic */ Bundle b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f3155c;
    public final /* synthetic */ Uri d;

    public zzk(zzs zzsVar, zzbhl zzbhlVar, Bundle bundle, Context context, Uri uri) {
        this.f3154a = zzbhlVar;
        this.b = bundle;
        this.f3155c = context;
        this.d = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zza() {
        zzbhl zzbhlVar = this.f3154a;
        CustomTabsClient customTabsClient = zzbhlVar.b;
        if (customTabsClient == null) {
            zzbhlVar.f4677a = null;
        } else if (zzbhlVar.f4677a == null) {
            zzbhlVar.f4677a = customTabsClient.c(null);
        }
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder(zzbhlVar.f4677a);
        zzs.d(builder, this.b);
        CustomTabsIntent a2 = builder.a();
        Intent intent = a2.f421a;
        Context context = this.f3155c;
        intent.setPackage(zzijw.a(context));
        intent.setData(this.d);
        context.startActivity(intent, a2.b);
        Activity activity = (Activity) context;
        zzijx zzijxVar = zzbhlVar.f4678c;
        if (zzijxVar == null) {
            return;
        }
        activity.unbindService(zzijxVar);
        zzbhlVar.b = null;
        zzbhlVar.f4677a = null;
        zzbhlVar.f4678c = null;
    }
}
