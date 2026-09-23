package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;

/* loaded from: classes.dex */
public final class zzbfr {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4641a;

    public zzbfr(Context context) {
        Preconditions.checkNotNull(context, "Context can not be null");
        this.f4641a = context;
    }

    public final boolean a() {
        zzbfq zzbfqVar = zzbfq.f4640a;
        Context context = this.f4641a;
        if (((Boolean) com.google.android.gms.ads.internal.util.zzcb.zza(context, zzbfqVar)).booleanValue() && Wrappers.packageManager(context).checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        return false;
    }

    public final boolean b(Intent intent) {
        Preconditions.checkNotNull(intent, "Intent can not be null");
        if (this.f4641a.getPackageManager().queryIntentActivities(intent, 0).isEmpty()) {
            return false;
        }
        return true;
    }
}
