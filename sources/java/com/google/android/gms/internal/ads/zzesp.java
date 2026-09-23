package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzesp implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f6893a;
    public final zzduu b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdzp f6894c;
    public final zzesr d;

    public zzesp(zzgyw zzgywVar, zzduu zzduuVar, zzdzp zzdzpVar, zzesr zzesrVar) {
        this.f6893a = zzgywVar;
        this.b = zzduuVar;
        this.f6894c = zzdzpVar;
        this.d = zzesrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        zzesq zzesqVar;
        zzbgb zzbgbVar = zzbgk.Xc;
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue();
        zzesr zzesrVar = this.d;
        if (booleanValue && (zzesqVar = zzesrVar.b) != null) {
            return zzgym.a(zzesqVar);
        }
        if (!zzgpz.a((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.V1)) && (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue() || (!zzesrVar.f6896a.get() && this.f6894c.b))) {
            zzesrVar.f6896a.set(true);
            return this.f6893a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzeso
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    List asList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.V1)).split(";"));
                    Bundle bundle = new Bundle();
                    Iterator it = asList.iterator();
                    while (true) {
                        boolean hasNext = it.hasNext();
                        zzesp zzespVar = zzesp.this;
                        if (hasNext) {
                            String str = (String) it.next();
                            try {
                                zzfji a2 = zzespVar.b.a(new JSONObject(), str);
                                a2.a();
                                boolean z = zzespVar.f6894c.b;
                                Bundle bundle2 = new Bundle();
                                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Xc)).booleanValue() || z) {
                                    try {
                                        zzbvn r = a2.f7412a.r();
                                        if (r != null) {
                                            try {
                                                bundle2.putString("sdk_version", r.toString());
                                            } catch (zzfir unused) {
                                            }
                                        }
                                    } catch (Throwable th) {
                                        throw new Exception(th);
                                        break;
                                    }
                                }
                                try {
                                    zzbvn zzH = a2.f7412a.zzH();
                                    if (zzH != null) {
                                        try {
                                            bundle2.putString("adapter_version", zzH.toString());
                                        } catch (zzfir unused2) {
                                        }
                                    }
                                    bundle.putBundle(str, bundle2);
                                } catch (Throwable th2) {
                                    throw new Exception(th2);
                                    break;
                                }
                            } catch (zzfir unused3) {
                            }
                        } else {
                            zzesq zzesqVar2 = new zzesq(bundle);
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Xc)).booleanValue()) {
                                zzespVar.d.b = zzesqVar2;
                            }
                            return zzesqVar2;
                        }
                    }
                }
            });
        }
        return zzgym.a(new zzesq(new Bundle()));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 1;
    }
}
