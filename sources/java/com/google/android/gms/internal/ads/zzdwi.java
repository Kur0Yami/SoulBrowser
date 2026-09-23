package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzdwi implements zzdfm, com.google.android.gms.ads.internal.client.zza, zzdbe, zzdao, zzddf {

    /* renamed from: c, reason: collision with root package name */
    public final Context f6203c;
    public final zzfjd f;
    public final zzdxe g;
    public final zzfic h;
    public final zzfhr i;
    public final zzehu j;
    public final String k;
    public Boolean m;
    public long l = -1;
    public final AtomicBoolean o = new AtomicBoolean(false);
    public final AtomicBoolean p = new AtomicBoolean(false);
    public final boolean n = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F7)).booleanValue();

    public zzdwi(Context context, zzfjd zzfjdVar, zzdxe zzdxeVar, zzfic zzficVar, zzfhr zzfhrVar, zzehu zzehuVar, String str) {
        this.f6203c = context;
        this.f = zzfjdVar;
        this.g = zzdxeVar;
        this.h = zzficVar;
        this.i = zzfhrVar;
        this.j = zzehuVar;
        this.k = str;
    }

    public final boolean a() {
        String str;
        if (this.m == null) {
            synchronized (this) {
                if (this.m == null) {
                    String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X1);
                    com.google.android.gms.ads.internal.zzt.zzc();
                    try {
                        str = com.google.android.gms.ads.internal.util.zzs.zzt(this.f6203c);
                    } catch (RemoteException unused) {
                        str = null;
                    }
                    boolean z = false;
                    if (str2 != null && str != null) {
                        try {
                            z = Pattern.matches(str2, str);
                        } catch (RuntimeException e) {
                            com.google.android.gms.ads.internal.zzt.zzh().f("CsiActionsListener.isPatternMatched", e);
                        }
                    }
                    this.m = Boolean.valueOf(z);
                }
            }
        }
        return this.m.booleanValue();
    }

    public final zzdxd b(String str) {
        String str2;
        zzfic zzficVar = this.h;
        zzfib zzfibVar = zzficVar.b;
        zzdxd a2 = this.g.a();
        a2.b("gqi", zzfibVar.b.b);
        zzfhr zzfhrVar = this.i;
        a2.a(zzfhrVar);
        a2.b("action", str);
        a2.b("ad_format", this.k.toUpperCase(Locale.ROOT));
        List list = zzfhrVar.t;
        if (!list.isEmpty()) {
            a2.b("ancn", (String) list.get(0));
        }
        if (zzfhrVar.b()) {
            if (true != com.google.android.gms.ads.internal.zzt.zzh().k(this.f6203c)) {
                str2 = "offline";
            } else {
                str2 = "online";
            }
            a2.b("device_connectivity", str2);
            a2.b("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()));
            a2.b("offline_ad", "1");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M7)).booleanValue()) {
            boolean zza = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zza(zzficVar);
            a2.b("scar", String.valueOf(zza));
            if (zza) {
                com.google.android.gms.ads.internal.client.zzm zzmVar = zzficVar.f7383a.f7378a.d;
                a2.b("ragent", zzmVar.zzp);
                a2.b("rtype", com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzmVar)));
            }
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void f() {
        String str;
        String str2;
        if (!a()) {
            return;
        }
        zzdxd b = b("adapter_impression");
        b.b("imp_type", String.valueOf(this.i.e));
        String str3 = "0";
        if (this.p.get()) {
            b.b("po", "1");
            b.b("pil", String.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - this.l));
        } else {
            b.b("po", "0");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ue)).booleanValue() && i()) {
            com.google.android.gms.ads.internal.zzt.zzc();
            if (true == com.google.android.gms.ads.internal.util.zzs.zzL(this.f6203c)) {
                str = "0";
            } else {
                str = "1";
            }
            b.b("foreground", str);
            if (true != this.o.get()) {
                str2 = "0";
            } else {
                str2 = "1";
            }
            b.b("fg_show", str2);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ve)).booleanValue() && i()) {
            if (true == com.google.android.gms.ads.internal.zzt.zzg().f()) {
                str3 = "1";
            }
            b.b("fg_al", str3);
        }
        b.c();
    }

    public final void g(zzdxd zzdxdVar) {
        if (this.i.b()) {
            zzdxj zzdxjVar = zzdxdVar.b.f6227a;
            zzehw zzehwVar = new zzehw(2, this.h.b.b.b, zzdxjVar.f.generateUrl(zzdxdVar.f6226a), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
            zzehu zzehuVar = this.j;
            zzehuVar.getClass();
            zzehuVar.a(new zzehr(zzehuVar, zzehwVar));
            return;
        }
        zzdxdVar.c();
    }

    public final boolean i() {
        int i = this.i.b;
        return i == 2 || i == 5 || i == 6 || i == 7;
    }

    @Override // com.google.android.gms.internal.ads.zzdbe
    public final void n() {
        String str;
        boolean a2 = a();
        zzfhr zzfhrVar = this.i;
        if (!a2 && !zzfhrVar.b()) {
            return;
        }
        zzdxd b = b("impression");
        b.b("imp_type", String.valueOf(zzfhrVar.e));
        if (this.l > 0) {
            b.b("p_imp_l", String.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - this.l));
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ue)).booleanValue() && i()) {
            com.google.android.gms.ads.internal.zzt.zzc();
            String str2 = "0";
            if (true == com.google.android.gms.ads.internal.util.zzs.zzL(this.f6203c)) {
                str = "0";
            } else {
                str = "1";
            }
            b.b("foreground", str);
            if (true == this.o.get()) {
                str2 = "1";
            }
            b.b("fg_show", str2);
        }
        g(b);
    }

    @Override // com.google.android.gms.internal.ads.zzdao
    public final void o(zzdlg zzdlgVar) {
        if (!this.n) {
            return;
        }
        zzdxd b = b("ifts");
        b.b("reason", "exception");
        if (!TextUtils.isEmpty(zzdlgVar.getMessage())) {
            b.b("msg", zzdlgVar.getMessage());
        }
        b.c();
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (!this.i.b()) {
            return;
        }
        g(b("click"));
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void q() {
        if (!a()) {
            return;
        }
        b("adapter_shown").c();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0058  */
    @Override // com.google.android.gms.internal.ads.zzdao
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzc(com.google.android.gms.ads.internal.client.zze r6) {
        /*
            r5 = this;
            boolean r0 = r5.n
            if (r0 != 0) goto L5
            return
        L5:
            java.lang.String r0 = "ifts"
            com.google.android.gms.internal.ads.zzdxd r0 = r5.b(r0)
            java.lang.String r1 = "reason"
            java.lang.String r2 = "adapter"
            r0.b(r1, r2)
            int r1 = r6.zza
            java.lang.String r2 = r6.zzb
            java.lang.String r3 = r6.zzc
            java.lang.String r4 = "com.google.android.gms.ads"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L32
            com.google.android.gms.ads.internal.client.zze r3 = r6.zzd
            if (r3 == 0) goto L32
            java.lang.String r3 = r3.zzc
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L32
            com.google.android.gms.ads.internal.client.zze r6 = r6.zzd
            int r1 = r6.zza
            java.lang.String r2 = r6.zzb
        L32:
            if (r1 < 0) goto L3d
            java.lang.String r6 = "arec"
            java.lang.String r1 = java.lang.String.valueOf(r1)
            r0.b(r6, r1)
        L3d:
            com.google.android.gms.internal.ads.zzfjd r6 = r5.f
            java.util.regex.Pattern r6 = r6.f7408a
            if (r6 == 0) goto L55
            if (r2 != 0) goto L46
            goto L55
        L46:
            java.util.regex.Matcher r6 = r6.matcher(r2)
            boolean r1 = r6.find()
            if (r1 == 0) goto L55
            java.lang.String r6 = r6.group()
            goto L56
        L55:
            r6 = 0
        L56:
            if (r6 == 0) goto L5d
            java.lang.String r1 = "areec"
            r0.b(r1, r6)
        L5d:
            r0.c()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdwi.zzc(com.google.android.gms.ads.internal.client.zze):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdao
    public final void zze() {
        if (!this.n) {
            return;
        }
        zzdxd b = b("ifts");
        b.b("reason", "blocked");
        b.c();
    }

    @Override // com.google.android.gms.internal.ads.zzddf
    public final void zzk() {
        String str;
        if (!a()) {
            return;
        }
        this.p.set(true);
        this.l = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
        zzdxd b = b("presentation");
        String str2 = "1";
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ue)).booleanValue() && i()) {
            com.google.android.gms.ads.internal.zzt.zzc();
            boolean z = !com.google.android.gms.ads.internal.util.zzs.zzL(this.f6203c);
            AtomicBoolean atomicBoolean = this.o;
            atomicBoolean.set(z);
            if (true == atomicBoolean.get()) {
                str = "1";
            } else {
                str = "0";
            }
            b.b("foreground", str);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ve)).booleanValue() && i()) {
            if (true != com.google.android.gms.ads.internal.zzt.zzg().f()) {
                str2 = "0";
            }
            b.b("fg_al", str2);
        }
        b.c();
    }
}
