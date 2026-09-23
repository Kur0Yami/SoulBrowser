package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzcrm implements zzdak, zzdby, zzdbe, com.google.android.gms.ads.internal.client.zza, zzdba, zzdii, zzddf {

    /* renamed from: c, reason: collision with root package name */
    public final Context f5405c;
    public final Executor f;
    public final Executor g;
    public final ScheduledExecutorService h;
    public final zzfic i;
    public final zzfhr j;
    public final zzfpe k;
    public final zzfix l;
    public final zzayq m;
    public final zzbhr n;
    public final WeakReference o;
    public final WeakReference p;
    public final zzczl q;
    public final zzdcz r;
    public final zzcze s;
    public final Set t;
    public boolean u;
    public final AtomicBoolean v = new AtomicBoolean();
    public zzcdb w = null;

    public zzcrm(Context context, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, zzfic zzficVar, zzfhr zzfhrVar, zzfpe zzfpeVar, zzfix zzfixVar, View view, zzcir zzcirVar, zzayq zzayqVar, zzbhr zzbhrVar, zzczl zzczlVar, zzdcz zzdczVar, zzcze zzczeVar, Set set) {
        this.f5405c = context;
        this.f = executor;
        this.g = executor2;
        this.h = scheduledExecutorService;
        this.i = zzficVar;
        this.j = zzfhrVar;
        this.k = zzfpeVar;
        this.l = zzfixVar;
        this.m = zzayqVar;
        this.o = new WeakReference(view);
        this.p = new WeakReference(zzcirVar);
        this.n = zzbhrVar;
        this.q = zzczlVar;
        this.r = zzdczVar;
        this.s = zzczeVar;
        this.t = set;
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void J() {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void U(zzbzj zzbzjVar, String str, String str2) {
        zzfid zzfidVar;
        zzfhr zzfhrVar = this.j;
        List list = zzfhrVar.h;
        zzfpe zzfpeVar = this.k;
        zzfpeVar.getClass();
        ArrayList arrayList = new ArrayList();
        long currentTimeMillis = zzfpeVar.h.currentTimeMillis();
        try {
            String str3 = zzbzjVar.f4989c;
            String num = Integer.toString(zzbzjVar.f);
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.r4)).booleanValue();
            zzgpy zzgpyVar = zzgph.f8196c;
            if (booleanValue) {
                zzfie zzfieVar = zzfpeVar.g;
                if (zzfieVar != null && (zzfidVar = zzfieVar.f7385a) != null) {
                    zzgpyVar = new zzgqf(zzfidVar);
                }
            } else {
                zzfid zzfidVar2 = zzfpeVar.f;
                if (zzfidVar2 != null) {
                    zzgpyVar = new zzgqf(zzfidVar2);
                }
            }
            String str4 = (String) zzgpyVar.b(zzfpd.f7524a).a();
            String str5 = (String) zzgpyVar.b(zzfpc.f7523a).a();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(zzcby.a(zzfpe.c(zzfpe.c(zzfpe.c(zzfpe.c(zzfpe.c(zzfpe.c((String) it.next(), "@gw_rwd_userid@", Uri.encode(str4)), "@gw_rwd_custom_data@", Uri.encode(str5)), "@gw_tmstmp@", Long.toString(currentTimeMillis)), "@gw_rwd_itm@", Uri.encode(str3)), "@gw_rwd_amt@", num), "@gw_sdkver@", zzfpeVar.b), zzfpeVar.e, zzfhrVar.W, zzfhrVar.w0));
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to determine award type and amount.", e);
        }
        this.l.a(arrayList, null);
    }

    public final List a() {
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Lc)).booleanValue();
        zzfhr zzfhrVar = this.j;
        if (booleanValue) {
            com.google.android.gms.ads.internal.zzt.zzc();
            Context context = this.f5405c;
            if (com.google.android.gms.ads.internal.util.zzs.zzG(context)) {
                com.google.android.gms.ads.internal.zzt.zzc();
                Integer zzw = com.google.android.gms.ads.internal.util.zzs.zzw(context);
                if (zzw != null) {
                    int min = Math.min(zzw.intValue(), 20);
                    ArrayList arrayList = new ArrayList();
                    Iterator it = zzfhrVar.d.iterator();
                    while (it.hasNext()) {
                        arrayList.add(Uri.parse((String) it.next()).buildUpon().appendQueryParameter("dspct", Integer.toString(min)).toString());
                    }
                    return arrayList;
                }
            }
        }
        return zzfhrVar.d;
    }

    public final void b(final int i, final int i2) {
        View view;
        if (i > 0 && ((view = (View) this.o.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            this.h.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcri
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    final zzcrm zzcrmVar = zzcrm.this;
                    final int i3 = i;
                    final int i4 = i2;
                    zzcrmVar.f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcrj
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzcrm.this.b(i3 - 1, i4);
                        }
                    });
                }
            }, i2, TimeUnit.MILLISECONDS);
        } else {
            f();
        }
    }

    public final void f() {
        int i;
        int intValue;
        zzcdb zzcdbVar;
        zzfhr zzfhrVar = this.j;
        List list = zzfhrVar.d;
        if (list != null && !list.isEmpty()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ef)).booleanValue() && this.w == null) {
                zzcdf zzcdfVar = com.google.android.gms.ads.internal.zzt.zzh().f5054c;
                Set set = this.t;
                String str = this.i.f7383a.f7378a.g;
                zzcdc zzcdcVar = zzcdfVar.h;
                synchronized (zzcdcVar.g) {
                    try {
                        int i2 = zzcdcVar.m;
                        zzcdcVar.m = i2 + 1;
                        if (set.isEmpty()) {
                            zzcdbVar = new zzcdb(i2, -1, -1);
                        } else {
                            TreeSet treeSet = new TreeSet(set);
                            StringBuilder sb = new StringBuilder();
                            Iterator it = treeSet.iterator();
                            if (it.hasNext()) {
                                Object next = it.next();
                                while (true) {
                                    sb.append((CharSequence) next);
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    sb.append((CharSequence) ",");
                                    next = it.next();
                                }
                            }
                            String sb2 = sb.toString();
                            HashMap hashMap = zzcdcVar.n;
                            Integer num = (Integer) hashMap.get(sb2);
                            int i3 = 0;
                            if (num == null) {
                                intValue = 0;
                            } else {
                                intValue = num.intValue();
                            }
                            hashMap.put(sb2, Integer.valueOf(intValue + 1));
                            if (str == null) {
                                zzcdbVar = new zzcdb(i2, intValue, -1);
                            } else {
                                StringBuilder sb3 = new StringBuilder(str.length() + 1 + String.valueOf(sb2).length());
                                sb3.append(str);
                                sb3.append("|");
                                sb3.append(sb2);
                                String sb4 = sb3.toString();
                                HashMap hashMap2 = zzcdcVar.o;
                                Integer num2 = (Integer) hashMap2.get(sb4);
                                if (num2 != null) {
                                    i3 = num2.intValue();
                                }
                                hashMap2.put(sb4, Integer.valueOf(i3 + 1));
                                zzcdbVar = new zzcdb(i2, intValue, i3);
                            }
                        }
                    } finally {
                    }
                }
                this.w = zzcdbVar;
            }
            String str2 = null;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q4)).booleanValue()) {
                str2 = this.m.b.zzj(this.f5405c, (View) this.o.get(), null);
            }
            String str3 = str2;
            if ((((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X0)).booleanValue() && this.i.b.b.h) || !((Boolean) zzbij.h.c()).booleanValue()) {
                this.l.a(this.k.b(this.i, zzfhrVar, false, str3, null, a(), this.s, this.w), this.r);
                return;
            }
            if (((Boolean) zzbij.g.c()).booleanValue() && ((i = zzfhrVar.b) == 1 || i == 2 || i == 5)) {
            }
            zzgye zzgyeVar = (zzgye) zzgym.g(zzgye.r(zzgyq.f), ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.A1)).longValue(), TimeUnit.MILLISECONDS, this.h);
            zzgyeVar.k(new zzgyk(zzgyeVar, new zzcrg(this, str3)), this.f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final void g(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Z1)).booleanValue()) {
            int i = zzeVar.zza;
            ArrayList arrayList = new ArrayList();
            zzfhr zzfhrVar = this.j;
            for (String str : zzfhrVar.o) {
                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 2);
                sb.append("2.");
                sb.append(i);
                arrayList.add(zzfpe.c(str, "@gw_mpe@", sb.toString()));
            }
            this.l.a(this.k.a(this.i, zzfhrVar, arrayList), null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void i0() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbe
    public final void n() {
        if (!this.v.compareAndSet(false, true)) {
            return;
        }
        int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z4)).intValue();
        if (intValue > 0) {
            b(intValue, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.A4)).intValue());
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.y4)).booleanValue()) {
            this.g.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcrh
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    final zzcrm zzcrmVar = zzcrm.this;
                    zzcrmVar.f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcrk
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzcrm.this.f();
                        }
                    });
                }
            });
        } else {
            f();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void o() {
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X0)).booleanValue();
        zzfic zzficVar = this.i;
        if ((!booleanValue || !zzficVar.b.b.h) && ((Boolean) zzbij.d.c()).booleanValue()) {
            zzbhr zzbhrVar = this.n;
            zzbhrVar.getClass();
            zzgye zzgyeVar = (zzgye) zzgym.e(zzgye.r((zzgye) zzgym.g(zzgye.r(zzgyq.f), ((Long) zzbij.f4714c.c()).longValue(), TimeUnit.MILLISECONDS, zzbhrVar.f4688c)), Throwable.class, zzcrl.f5404a, zzcdo.g);
            zzgyeVar.k(new zzgyk(zzgyeVar, new zzcrf(this)), this.f);
            return;
        }
        zzfhr zzfhrVar = this.j;
        ArrayList a2 = this.k.a(zzficVar, zzfhrVar, zzfhrVar.f7368c);
        int i = 1;
        if (true == com.google.android.gms.ads.internal.zzt.zzh().k(this.f5405c)) {
            i = 2;
        }
        this.l.b(i, a2);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zze() {
        zzfhr zzfhrVar = this.j;
        this.l.a(this.k.a(this.i, zzfhrVar, zzfhrVar.g), null);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zzf() {
        zzfhr zzfhrVar = this.j;
        this.l.a(this.k.a(this.i, zzfhrVar, zzfhrVar.i), null);
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final synchronized void zzg() {
        zzczl zzczlVar;
        try {
            if (this.u) {
                ArrayList arrayList = new ArrayList(a());
                zzfhr zzfhrVar = this.j;
                arrayList.addAll(zzfhrVar.f);
                this.l.a(this.k.b(this.i, zzfhrVar, true, null, null, arrayList, null, null), null);
            } else {
                zzfix zzfixVar = this.l;
                zzfpe zzfpeVar = this.k;
                zzfic zzficVar = this.i;
                zzfhr zzfhrVar2 = this.j;
                zzfixVar.a(zzfpeVar.a(zzficVar, zzfhrVar2, zzfhrVar2.m), null);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.v4)).booleanValue() && (zzczlVar = this.q) != null) {
                    List list = zzczlVar.b.m;
                    String f = zzczlVar.f5626c.f();
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(zzfpe.c((String) it.next(), "@gw_adnetstatus@", f));
                    }
                    long g = zzczlVar.f5626c.g();
                    ArrayList arrayList3 = new ArrayList();
                    int size = arrayList2.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList2.get(i);
                        i++;
                        arrayList3.add(zzfpe.c((String) obj, "@gw_ttr@", Long.toString(g, 10)));
                    }
                    zzfixVar.a(zzfpeVar.a(zzczlVar.f5625a, zzczlVar.b, arrayList3), null);
                }
                zzfixVar.a(zzfpeVar.a(zzficVar, zzfhrVar2, zzfhrVar2.f), null);
            }
            this.u = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final void zzi() {
        zzfhr zzfhrVar = this.j;
        this.l.a(this.k.a(this.i, zzfhrVar, zzfhrVar.u0), null);
    }

    @Override // com.google.android.gms.internal.ads.zzddf
    public final void zzk() {
        zzfhr zzfhrVar = this.j;
        if (zzfhrVar.e == 4) {
            this.l.a(this.k.a(this.i, zzfhrVar, zzfhrVar.A0), null);
        }
    }
}
