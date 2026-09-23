package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class zzgni extends zzbcc implements zzgnj {
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzgno] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        final zzgpd zzgpdVar;
        if (i != 1) {
            return false;
        }
        Bundle bundle = (Bundle) zzbcd.b(parcel, Bundle.CREATOR);
        zzbcd.f(parcel);
        zzgok zzgokVar = (zzgok) this;
        int i2 = bundle.getInt("statusCode", 8150);
        String string = bundle.getString("sessionToken");
        int i3 = bundle.getInt("uiMode", 0);
        ?? obj = new Object();
        byte b = (byte) (obj.d | 1);
        obj.f8162a = i2;
        byte b2 = (byte) (b | 1);
        obj.d = b2;
        if (string != null) {
            obj.b = string;
        }
        obj.f8163c = i3;
        obj.d = (byte) (b2 | 2);
        zzgokVar.f8182c.a(obj.a());
        if (i2 == 8157 && (zzgpdVar = zzgokVar.f.f8184a) != null) {
            zzgom.f8183c.a("unbind LMD display overlay service", new Object[0]);
            zzgpdVar.a(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgpa
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzgpd zzgpdVar2 = zzgpd.this;
                    if (zzgpdVar2.j != null) {
                        zzgpdVar2.f8193c.a("Unbind from service.", new Object[0]);
                        Context context = zzgpdVar2.b;
                        ServiceConnection serviceConnection = zzgpdVar2.i;
                        serviceConnection.getClass();
                        context.unbindService(serviceConnection);
                        zzgpdVar2.f = false;
                        zzgpdVar2.j = null;
                        zzgpdVar2.i = null;
                        ArrayList arrayList = zzgpdVar2.e;
                        synchronized (arrayList) {
                            arrayList.clear();
                        }
                    }
                }
            });
        }
        return true;
    }
}
