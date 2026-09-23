package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
public final class zzay {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f9625a = new Logger("CastDynamiteModule", null);

    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.cast.zzbc, com.google.android.gms.internal.cast.zza] */
    public static zzbc a(Context context) {
        try {
            IBinder b = DynamiteModule.c(context, DynamiteModule.b, "com.google.android.gms.cast.framework.dynamite").b("com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl");
            if (b == null) {
                return null;
            }
            IInterface queryLocalInterface = b.queryLocalInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
            if (queryLocalInterface instanceof zzbc) {
                return (zzbc) queryLocalInterface;
            }
            return new zza(b, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
        } catch (DynamiteModule.LoadingException e) {
            throw new Exception(e);
        }
    }
}
