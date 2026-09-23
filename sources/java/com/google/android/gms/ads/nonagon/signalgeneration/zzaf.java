package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbxn;
import com.google.android.gms.internal.ads.zzfpi;
import com.google.android.gms.internal.ads.zzgyj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaf implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbxn f3217a;
    public final /* synthetic */ boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzau f3218c;

    public zzaf(zzau zzauVar, zzbxn zzbxnVar, boolean z) {
        this.f3217a = zzbxnVar;
        this.b = z;
        this.f3218c = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        List<Uri> list = (List) obj;
        try {
            zzau zzauVar = this.f3218c;
            zzauVar.getClass();
            ArrayList arrayList = zzauVar.B;
            ArrayList arrayList2 = zzauVar.A;
            zzfpi zzfpiVar = zzauVar.p;
            Iterator it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (zzau.g5((Uri) it.next(), arrayList2, arrayList)) {
                        zzauVar.w.getAndIncrement();
                        break;
                    }
                } else {
                    break;
                }
            }
            this.f3217a.n4(list);
            if (!zzauVar.r && !this.b) {
                return;
            }
            for (Uri uri : list) {
                if (zzau.g5(uri, arrayList2, arrayList)) {
                    zzfpiVar.b(zzau.j5(uri, zzauVar.z, "1").toString(), null, null, null);
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.p8)).booleanValue()) {
                        zzfpiVar.b(uri.toString(), null, null, null);
                    }
                }
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        try {
            zzbxn zzbxnVar = this.f3217a;
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
