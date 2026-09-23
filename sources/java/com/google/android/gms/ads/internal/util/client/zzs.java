package com.google.android.gms.ads.internal.util.client;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* loaded from: classes.dex */
public final class zzs {
    public static Object zza(Context context, String str, zzq zzqVar) {
        try {
            try {
                return zzqVar.zza(DynamiteModule.c(context, DynamiteModule.b, ModuleDescriptor.MODULE_ID).b(str));
            } catch (Exception e) {
                throw new zzr(e);
            }
        } catch (Exception e2) {
            throw new zzr(e2);
        }
    }

    public static Context zzb(Context context) {
        try {
            return DynamiteModule.c(context, DynamiteModule.b, ModuleDescriptor.MODULE_ID).f3729a;
        } catch (Exception e) {
            throw new zzr(e);
        }
    }
}
