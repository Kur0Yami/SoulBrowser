package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbxn;
import com.google.android.gms.internal.ads.zzfpi;
import com.google.android.gms.internal.ads.zzgyj;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzae implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbxn f3215a;
    public final /* synthetic */ boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzau f3216c;

    public zzae(zzau zzauVar, zzbxn zzbxnVar, boolean z) {
        this.f3215a = zzbxnVar;
        this.b = z;
        this.f3216c = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        try {
            this.f3215a.n4(arrayList);
            zzau zzauVar = this.f3216c;
            boolean z = zzauVar.q;
            zzfpi zzfpiVar = zzauVar.p;
            if (!z && !this.b) {
                return;
            }
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                Uri uri = (Uri) obj2;
                if (zzau.g5(uri, zzauVar.C, zzauVar.D)) {
                    zzfpiVar.b(zzau.j5(uri, zzauVar.z, "1").toString(), null, null, null);
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.p8)).booleanValue()) {
                        zzfpiVar.b(uri.toString(), null, null, null);
                    }
                }
            }
        } catch (RemoteException e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        try {
            zzbxn zzbxnVar = this.f3215a;
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 16);
            sb.append("Internal error: ");
            sb.append(message);
            zzbxnVar.zzf(sb.toString());
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }
}
