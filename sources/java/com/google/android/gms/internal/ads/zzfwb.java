package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* loaded from: classes.dex */
public final class zzfwb {

    /* renamed from: a, reason: collision with root package name */
    public final zzfwe f7700a;
    public final boolean b = true;

    public zzfwb(zzfwe zzfweVar) {
        this.f7700a = zzfweVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.ads.zzfwe] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    public static zzfwb a(Context context, String str) {
        ?? zzbcbVar;
        try {
            try {
                try {
                    IBinder b = DynamiteModule.c(context, DynamiteModule.b, ModuleDescriptor.MODULE_ID).b("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (b == null) {
                        zzbcbVar = 0;
                    } else {
                        IInterface queryLocalInterface = b.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        if (queryLocalInterface instanceof zzfwe) {
                            zzbcbVar = (zzfwe) queryLocalInterface;
                        } else {
                            zzbcbVar = new zzbcb(b, "com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        }
                    }
                    zzbcbVar.m2(new ObjectWrapper(context), str);
                    Log.i("GASS", "GassClearcutLogger Initialized.");
                    return new zzfwb(zzbcbVar);
                } catch (Exception e) {
                    throw new Exception(e);
                }
            } catch (RemoteException | zzfve | NullPointerException | SecurityException unused) {
                Log.d("GASS", "Cannot dynamite load clearcut");
                return new zzfwb(new zzfwf());
            }
        } catch (Exception e2) {
            throw new Exception(e2);
        }
    }
}
