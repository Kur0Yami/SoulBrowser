package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.api.client.http.HttpMethods;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzefw extends zzbym {

    /* renamed from: c, reason: collision with root package name */
    public final Context f6460c;
    public final zzgyw f;
    public final zzege g;
    public final zzclg h;
    public final ArrayDeque i;
    public final zzfnr j;

    public zzefw(Context context, zzgyw zzgywVar, zzbzi zzbziVar, zzclg zzclgVar, zzege zzegeVar, ArrayDeque arrayDeque, zzfnr zzfnrVar) {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
        zzbgk.a(context);
        this.f6460c = context;
        this.f = zzgywVar;
        this.g = zzegeVar;
        this.h = zzclgVar;
        this.i = arrayDeque;
        this.j = zzfnrVar;
    }

    public static zzfmb g5(zzfmb zzfmbVar, zzfmu zzfmuVar, zzbsf zzbsfVar, zzfno zzfnoVar, zzfne zzfneVar) {
        zzbsj a2 = zzbsfVar.a("AFMA_getAdDictionary", zzbsc.f4867a, zzefq.f6453a);
        zzfnn.a(zzfmbVar, zzfneVar);
        zzfmb d = zzfmuVar.a(zzfmbVar, zzfmo.BUILD_URL).b(a2).d();
        if (!((Boolean) zzbid.f4704c.c()).booleanValue()) {
            return d;
        }
        zzgye r = zzgye.r(d);
        zzfnl zzfnlVar = new zzfnl(zzfnoVar, zzfneVar);
        r.k(new zzgyk(r, zzfnlVar), zzcdo.g);
        return d;
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void J1(zzbza zzbzaVar, zzbyr zzbyrVar) {
        Bundle bundle;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue() && (bundle = zzbzaVar.q) != null) {
            androidx.work.impl.workers.a.z("service-connected", bundle);
        }
        zzfmb c5 = c5(zzbzaVar, Binder.getCallingUid());
        h5(c5, zzbyrVar, zzbzaVar);
        if (((Boolean) zzbik.i.c()).booleanValue()) {
            final zzege zzegeVar = this.g;
            Objects.requireNonNull(zzegeVar);
            c5.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzefv
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzege.this.a();
                }
            }, this.f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void L2(zzbza zzbzaVar, zzbyr zzbyrVar) {
        h5(d5(zzbzaVar, Binder.getCallingUid()), zzbyrVar, zzbzaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void M3(zzbza zzbzaVar, zzbyr zzbyrVar) {
        Bundle bundle;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue() && (bundle = zzbzaVar.q) != null) {
            androidx.work.impl.workers.a.z("service-connected", bundle);
        }
        h5(f5(zzbzaVar, Binder.getCallingUid()), zzbyrVar, zzbzaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void a5(String str, zzbyr zzbyrVar) {
        h5(e5(str), zzbyrVar, null);
    }

    public final zzfmb c5(final zzbza zzbzaVar, int i) {
        zzefr j5;
        zzfne zzfneVar;
        boolean z;
        zzfmb d;
        zzbrw zzr = com.google.android.gms.ads.internal.zzt.zzr();
        VersionInfoParcel forPackage = VersionInfoParcel.forPackage();
        zzfnr zzfnrVar = this.j;
        Context context = this.f6460c;
        zzbsf a2 = zzr.a(context, forPackage, zzfnrVar);
        zzfaz A = this.h.A(zzbzaVar, i);
        zzbrz zzbrzVar = zzbsc.f4867a;
        zzbsj a3 = a2.a("google.afma.response.normalize", zzeft.d, zzbsb.f4866a);
        if (!((Boolean) zzbir.f4726a.c()).booleanValue()) {
            String str = zzbzaVar.n;
            if (str != null && !str.isEmpty()) {
                com.google.android.gms.ads.internal.util.zze.zza("Request contained a PoolKey but split request is disabled.");
            }
            j5 = null;
        } else {
            j5 = j5(zzbzaVar.l);
            if (j5 == null) {
                com.google.android.gms.ads.internal.util.zze.zza("Request contained a PoolKey but no matching parameters were found.");
            }
        }
        if (j5 == null) {
            zzfneVar = a.o(context, 9);
        } else {
            zzfneVar = j5.d;
        }
        zzfno c2 = A.c();
        c2.b(zzbzaVar.f4979c.getStringArrayList("ad_types"));
        zzegd zzegdVar = new zzegd(zzbzaVar.k, c2, zzfneVar);
        zzega zzegaVar = new zzega(context, zzbzaVar.f.afmaVersion, null);
        zzfmu b = A.b();
        zzfne o = a.o(context, 11);
        zzfmo zzfmoVar = zzfmo.PRE_PROCESS;
        zzfmo zzfmoVar2 = zzfmo.HTTP;
        if (j5 == null) {
            final zzfmb d2 = b.a(zzgym.a(zzbzaVar.f4979c), zzfmo.GMS_SIGNALS).b(new zzefk(A, zzbzaVar)).a(zzefl.f6447a).d();
            final zzfmb g5 = g5(d2, b, a2, c2, zzfneVar);
            zzfne o2 = a.o(context, 10);
            final zzfmb d3 = new zzfmd(b, zzfmoVar2, Arrays.asList(g5, d2)).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzefp
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Bundle bundle;
                    zzbzc zzbzcVar = (zzbzc) zzfmb.this.g.get();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue() && (bundle = zzbzaVar.q) != null) {
                        bundle.putLong("get-ad-dictionary-sdkcore-start", zzbzcVar.j);
                        bundle.putLong("get-ad-dictionary-sdkcore-end", zzbzcVar.k);
                    }
                    return new zzegc((JSONObject) d2.g.get(), zzbzcVar);
                }
            }).a(zzegdVar).a(new zzfnm(o2)).a(zzegaVar).d();
            zzfnn.c(d3, c2, o2, false);
            zzfnn.a(d3, o);
            d = new zzfmd(b, zzfmoVar, Arrays.asList(d2, g5, d3)).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzefi
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Bundle bundle;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue() && (bundle = zzbza.this.q) != null) {
                        androidx.work.impl.workers.a.z("http-response-ready", bundle);
                    }
                    return new zzeft((zzefz) d3.g.get(), (JSONObject) d2.g.get(), (zzbzc) g5.g.get());
                }
            }).b(a3).d();
            z = false;
        } else {
            zzegc zzegcVar = new zzegc(j5.b, j5.f6454a);
            zzfne o3 = a.o(context, 10);
            final zzfmb d4 = b.a(zzgym.a(zzegcVar), zzfmoVar2).a(zzegdVar).a(new zzfnm(o3)).a(zzegaVar).d();
            z = false;
            zzfnn.c(d4, c2, o3, false);
            final ListenableFuture a4 = zzgym.a(j5);
            zzfnn.a(d4, o);
            d = new zzfmd(b, zzfmoVar, Arrays.asList(d4, a4)).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzefj
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzefz zzefzVar = (zzefz) zzfmb.this.g.get();
                    Object obj = ((zzgyq) a4).f8305c;
                    return new zzeft(zzefzVar, ((zzefr) obj).b, ((zzefr) obj).f6454a);
                }
            }).b(a3).d();
        }
        zzfnn.c(d, c2, o, z);
        return d;
    }

    public final ListenableFuture d5(final zzbza zzbzaVar, int i) {
        if (!((Boolean) zzbir.f4726a.c()).booleanValue()) {
            return zzgym.b(new Exception("Split request is disabled."));
        }
        zzfkg zzfkgVar = zzbzaVar.m;
        if (zzfkgVar == null) {
            return zzgym.b(new Exception("Pool configuration missing from request."));
        }
        if (zzfkgVar.h != 0 && zzfkgVar.i != 0) {
            zzbrw zzr = com.google.android.gms.ads.internal.zzt.zzr();
            VersionInfoParcel forPackage = VersionInfoParcel.forPackage();
            Context context = this.f6460c;
            zzbsf a2 = zzr.a(context, forPackage, this.j);
            zzfaz A = this.h.A(zzbzaVar, i);
            zzfmu b = A.b();
            final zzfmb d = b.a(zzgym.a(zzbzaVar.f4979c), zzfmo.GMS_SIGNALS).b(new zzefk(A, zzbzaVar)).a(zzefl.f6447a).d();
            zzfno c2 = A.c();
            final zzfne o = a.o(context, 9);
            final zzfmb g5 = g5(d, b, a2, c2, o);
            return new zzfmd(b, zzfmo.GET_URL_AND_CACHE_KEY, Arrays.asList(d, g5)).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzefm
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzefw zzefwVar = zzefw.this;
                    zzfmb zzfmbVar = g5;
                    zzfmb zzfmbVar2 = d;
                    zzbza zzbzaVar2 = zzbzaVar;
                    zzfne zzfneVar = o;
                    String str = ((zzbzc) zzfmbVar.g.get()).i;
                    zzefr zzefrVar = new zzefr((zzbzc) zzfmbVar.g.get(), (JSONObject) zzfmbVar2.g.get(), zzbzaVar2.l, zzfneVar);
                    synchronized (zzefwVar) {
                        zzefwVar.i5();
                        zzefwVar.i.addLast(zzefrVar);
                    }
                    return new ByteArrayInputStream(str.getBytes(StandardCharsets.UTF_8));
                }
            }).d();
        }
        return zzgym.b(new Exception("Caching is disabled."));
    }

    public final ListenableFuture e5(String str) {
        if (!((Boolean) zzbir.f4726a.c()).booleanValue()) {
            return zzgym.b(new Exception("Split request is disabled."));
        }
        InputStream inputStream = new InputStream();
        if (j5(str) == null) {
            return zzgym.b(new Exception("URL to be removed not found for cache key: ".concat(String.valueOf(str))));
        }
        return zzgym.a(inputStream);
    }

    public final ListenableFuture f5(final zzbza zzbzaVar, int i) {
        zzbrw zzr = com.google.android.gms.ads.internal.zzt.zzr();
        VersionInfoParcel forPackage = VersionInfoParcel.forPackage();
        zzfnr zzfnrVar = this.j;
        Context context = this.f6460c;
        zzbsf a2 = zzr.a(context, forPackage, zzfnrVar);
        if (!((Boolean) zzbix.f4733a.c()).booleanValue()) {
            return zzgym.b(new Exception("Signal collection disabled."));
        }
        zzfaz A = this.h.A(zzbzaVar, i);
        zzcmu zzcmuVar = (zzcmu) A;
        zzijf zzijfVar = zzcmuVar.f5276c;
        zzfbi zzfbiVar = zzcmuVar.j;
        zzfcp zzfcpVar = zzcmuVar.i;
        zzfct zzfctVar = zzcmuVar.h;
        zzfcb zzfcbVar = zzcmuVar.g;
        zzfbu zzfbuVar = zzcmuVar.f;
        zzfbm zzfbmVar = zzcmuVar.e;
        zzfay zzfayVar = zzcmuVar.d;
        zzcmv zzcmvVar = zzcmuVar.b;
        zzijf zzijfVar2 = zzcmvVar.P0;
        Context context2 = zzcmvVar.b.b;
        zzijo.a(context2);
        Object zzb = zzijfVar2.zzb();
        zzfbc d = zzcmuVar.d();
        zzfcc zzfccVar = zzcmuVar.f5275a;
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        List list = zzfccVar.f7210a.i;
        zzijo.a(list);
        zzfbw zzfbwVar = new zzfbw(zzgywVar, list);
        zzija b = zzijf.b(zzfayVar);
        zzija b2 = zzijf.b(zzfbmVar);
        zzijf.b(zzfbuVar);
        zzija b3 = zzijf.b(zzfcbVar);
        zzija b4 = zzijf.b(zzfctVar);
        zzijf.b(zzfcpVar);
        zzija b5 = zzijf.b(zzfbiVar);
        zzfno zzfnoVar = (zzfno) zzijfVar.zzb();
        zzdxe zzdxeVar = (zzdxe) zzcmvVar.l.zzb();
        HashSet hashSet = new HashSet();
        hashSet.add((zzfbp) zzb);
        hashSet.add(d);
        hashSet.add(zzfbwVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.G6)).booleanValue()) {
            hashSet.add((zzezx) b.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.H6)).booleanValue()) {
            hashSet.add((zzezx) b2.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.J6)).booleanValue()) {
            hashSet.add((zzezx) b3.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K6)).booleanValue()) {
            hashSet.add((zzezx) b4.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.O3)).booleanValue()) {
            hashSet.add((zzezx) b5.zzb());
        }
        final zzfaa zzfaaVar = new zzfaa(context2, zzgywVar, hashSet, zzfnoVar, zzdxeVar);
        zzbsj a3 = a2.a("google.afma.request.getSignals", zzbsc.f4867a, zzbsb.f4866a);
        zzfne o = a.o(context, 22);
        zzfmu b6 = A.b();
        Bundle bundle = zzbzaVar.f4979c;
        zzfml b7 = b6.a(zzgym.a(bundle), zzfmo.GET_SIGNALS).a(new zzfnm(o)).b(new zzgxu() { // from class: com.google.android.gms.internal.ads.zzefn
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzfaa.this.a(com.google.android.gms.ads.internal.client.zzbb.zza().zzm((Bundle) obj), zzbzaVar.q, false);
            }
        });
        zzfmb d2 = b7.f.a(b7.d(), zzfmo.JS_SIGNALS).b(a3).d();
        zzfno c2 = A.c();
        c2.b(bundle.getStringArrayList("ad_types"));
        c2.d(bundle.getBundle("extras"));
        zzfnn.c(d2, c2, o, true);
        if (((Boolean) zzbik.j.c()).booleanValue()) {
            final zzege zzegeVar = this.g;
            Objects.requireNonNull(zzegeVar);
            d2.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzefu
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzege.this.a();
                }
            }, this.f);
        }
        return d2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzgxu, java.lang.Object] */
    public final void h5(ListenableFuture listenableFuture, zzbyr zzbyrVar, zzbza zzbzaVar) {
        ListenableFuture h = zzgym.h(listenableFuture, new Object(), zzcdo.f5068a);
        zzefh zzefhVar = new zzefh(this, zzbzaVar, zzbyrVar);
        zzgyw zzgywVar = zzcdo.g;
        ((zzgxf) h).k(new zzgyk(h, zzefhVar), zzgywVar);
    }

    public final synchronized void i5() {
        int intValue = ((Long) zzbir.b.c()).intValue();
        while (true) {
            ArrayDeque arrayDeque = this.i;
            if (arrayDeque.size() >= intValue) {
                arrayDeque.removeFirst();
            }
        }
    }

    public final synchronized zzefr j5(String str) {
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            zzefr zzefrVar = (zzefr) it.next();
            if (zzefrVar.f6455c.equals(str)) {
                it.remove();
                return zzefrVar;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void zzi(String str) {
        Binder.getCallingUid();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.vf)).booleanValue()) {
            String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.wf);
            if (!str2.isEmpty()) {
                zzgqj zzgqjVar = new zzgqj(zzgqp.a(new zzgpl(',')), str2);
                com.google.android.gms.ads.internal.util.zze.zza("AdRequestServiceImpl: Preconnecting");
                Iterator it = zzgqjVar.iterator();
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    Context context = this.f6460c;
                    zzega zzegaVar = new zzega(context, str, HttpMethods.HEAD);
                    HashMap hashMap = new HashMap();
                    hashMap.put("User-Agent", com.google.android.gms.ads.internal.zzt.zzc().zze(context, str));
                    try {
                        zzefz zza = zzegaVar.zza(new zzefy(str3, 30000, hashMap, new byte[0], RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
                        if (zza.f6465a != 200) {
                            int i = zza.f6465a;
                            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 32);
                            sb.append("Unexpected preconnect response: ");
                            sb.append(i);
                            throw new RemoteException(sb.toString());
                        }
                    } catch (Exception e) {
                        throw new RemoteException(e.getMessage());
                    }
                }
            }
        }
    }
}
