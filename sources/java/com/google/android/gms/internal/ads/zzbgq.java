package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes.dex */
public final class zzbgq {
    public static final void a(final zzbgp zzbgpVar, zzbgn zzbgnVar) {
        File externalStorageDirectory;
        if (zzbgnVar.f4661c != null) {
            if (!TextUtils.isEmpty(zzbgnVar.d)) {
                Context context = zzbgnVar.f4661c;
                String str = zzbgnVar.d;
                String str2 = zzbgnVar.f4660a;
                LinkedHashMap linkedHashMap = zzbgnVar.b;
                zzbgpVar.e = context;
                zzbgpVar.f = str;
                zzbgpVar.d = str2;
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                zzbgpVar.h = atomicBoolean;
                atomicBoolean.set(((Boolean) zzbif.f4707c.c()).booleanValue());
                if (zzbgpVar.h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
                    zzbgpVar.i = new File(((zzfwl) zzfwj.f7704a).a(externalStorageDirectory, "sdk_csi_data.txt"));
                }
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    zzbgpVar.b.put((String) entry.getKey(), (String) entry.getValue());
                }
                ((zzcdn) zzcdo.f5068a).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbgo
                    @Override // java.lang.Runnable
                    public final void run() {
                        LinkedHashMap linkedHashMap2;
                        zzbgp zzbgpVar2 = zzbgp.this;
                        zzbgpVar2.getClass();
                        while (true) {
                            try {
                                zzbgz zzbgzVar = (zzbgz) zzbgpVar2.f4663a.take();
                                zzbgy b = zzbgzVar.b();
                                if (!TextUtils.isEmpty(b.f4670a)) {
                                    LinkedHashMap linkedHashMap3 = zzbgpVar2.b;
                                    synchronized (zzbgzVar.f4672c) {
                                        com.google.android.gms.ads.internal.zzt.zzh().a();
                                        linkedHashMap2 = zzbgzVar.b;
                                    }
                                    zzbgpVar2.b(zzbgpVar2.a(linkedHashMap3, linkedHashMap2), b);
                                }
                            } catch (InterruptedException e) {
                                int i = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzj("CsiReporter:reporter interrupted", e);
                                return;
                            }
                        }
                    }
                });
                HashMap hashMap = zzbgpVar.f4664c;
                zzbgv zzbgvVar = zzbgv.b;
                hashMap.put("action", zzbgvVar);
                hashMap.put("ad_format", zzbgvVar);
                hashMap.put("e", zzbgv.f4666c);
                return;
            }
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
    }
}
