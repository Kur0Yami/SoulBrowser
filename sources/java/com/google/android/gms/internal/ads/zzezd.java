package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzezd implements zzezx {
    public static final zzeze k = new zzeze(new JSONArray().toString(), new Bundle(), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7114a;
    public final ScheduledExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public final zzepk f7115c;
    public final Context d;
    public final zzfik e;
    public final zzepf f;
    public final zzduu g;
    public final zzdzr h;
    public final int i;
    public final String j;

    public zzezd(zzgyw zzgywVar, ScheduledExecutorService scheduledExecutorService, String str, zzepk zzepkVar, Context context, zzfik zzfikVar, zzepf zzepfVar, zzduu zzduuVar, zzdzr zzdzrVar, int i) {
        this.f7114a = zzgywVar;
        this.b = scheduledExecutorService;
        this.j = str;
        this.f7115c = zzepkVar;
        this.d = context;
        this.e = zzfikVar;
        this.f = zzepfVar;
        this.g = zzduuVar;
        this.h = zzdzrVar;
        this.i = i;
    }

    public final void a(ArrayList arrayList, Map map) {
        Bundle bundle;
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            zzepo zzepoVar = (zzepo) ((Map.Entry) it.next()).getValue();
            String str = zzepoVar.f6792a;
            Bundle bundle2 = this.e.d.zzm;
            if (bundle2 != null) {
                bundle = bundle2.getBundle(str);
            } else {
                bundle = null;
            }
            arrayList.add(b(str, Collections.singletonList(zzepoVar.e), bundle, zzepoVar.b, zzepoVar.f6793c));
        }
    }

    public final zzgye b(final String str, final List list, final Bundle bundle, final boolean z, final boolean z2) {
        zzgxt zzgxtVar = new zzgxt() { // from class: com.google.android.gms.internal.ads.zzeyy
            /* JADX WARN: Can't wrap try/catch for region: R(7:1|(2:3|(7:5|6|7|8|(1:10)(1:47)|11|(2:13|(4:15|75|25|26)(1:34))(3:35|(1:37)|(2:39|(2:41|42)(2:43|44))(2:45|46))))|51|52|11|(0)(0)|(1:(0))) */
            /* JADX WARN: Code restructure failed: missing block: B:54:0x0056, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:55:0x0057, code lost:
            
                com.google.android.gms.ads.internal.util.zze.zzb("Couldn't create RTB adapter : ", r0);
                r5 = null;
             */
            /* JADX WARN: Removed duplicated region for block: B:13:0x005f  */
            /* JADX WARN: Removed duplicated region for block: B:35:0x00ac  */
            @Override // com.google.android.gms.internal.ads.zzgxt
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final com.google.common.util.concurrent.ListenableFuture zza() {
                /*
                    Method dump skipped, instructions count: 308
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeyy.zza():com.google.common.util.concurrent.ListenableFuture");
            }
        };
        zzgyw zzgywVar = this.f7114a;
        zzgye r = zzgye.r(zzgym.d(zzgxtVar, zzgywVar));
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.d2)).booleanValue()) {
            r = (zzgye) zzgym.g(r, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.W1)).longValue(), TimeUnit.MILLISECONDS, this.b);
        }
        return (zzgye) zzgym.e(r, Throwable.class, new zzgpr() { // from class: com.google.android.gms.internal.ads.zzeyz
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final /* synthetic */ Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                zzeze zzezeVar = zzezd.k;
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                String str2 = str;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Error calling adapter: ".concat(String.valueOf(str2)));
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ue)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzh().g("rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)), th);
                    return null;
                }
                com.google.android.gms.ads.internal.zzt.zzh().f("rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)), th);
                return null;
            }
        }, zzgywVar);
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        int i = this.i;
        zzeze zzezeVar = k;
        if (i == 2) {
            return zzgym.a(zzezeVar);
        }
        zzfik zzfikVar = this.e;
        if (zzfikVar.s) {
            if (!Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.j2)).split(",")).contains(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzfikVar.d)))) {
                return zzgym.a(zzezeVar);
            }
        }
        return zzgym.d(new zzgxt() { // from class: com.google.android.gms.internal.ads.zzezb
            @Override // com.google.android.gms.internal.ads.zzgxt
            public final ListenableFuture zza() {
                String str;
                Bundle bundle;
                String str2;
                Bundle bundle2;
                zzezd zzezdVar = zzezd.this;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.mc)).booleanValue()) {
                    str = zzezdVar.e.g.toLowerCase(Locale.ROOT);
                } else {
                    str = zzezdVar.e.g;
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h2)).booleanValue()) {
                    zzdzr zzdzrVar = zzezdVar.h;
                    synchronized (zzdzrVar) {
                        bundle = new Bundle(zzdzrVar.f6289c);
                    }
                } else {
                    bundle = new Bundle();
                }
                final Bundle bundle3 = bundle;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a5)).booleanValue()) {
                    zzccv zzi = com.google.android.gms.ads.internal.zzt.zzh().i().zzi();
                    if (!TextUtils.isEmpty(zzi.e) && zzi.g != null) {
                        if (zzi.b()) {
                            str2 = "VALID";
                        } else {
                            str2 = "INVALID";
                        }
                    } else {
                        str2 = "EMPTY";
                    }
                } else {
                    str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                final String str3 = str2;
                final ArrayList arrayList = new ArrayList();
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q2)).booleanValue()) {
                    zzepk zzepkVar = zzezdVar.f7115c;
                    Iterator it = zzepkVar.b(zzezdVar.j, str).entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        String str4 = (String) entry.getKey();
                        List list = (List) entry.getValue();
                        Bundle bundle4 = zzezdVar.e.d.zzm;
                        if (bundle4 != null) {
                            bundle2 = bundle4.getBundle(str4);
                        } else {
                            bundle2 = null;
                        }
                        arrayList.add(zzezdVar.b(str4, list, bundle2, true, true));
                    }
                    zzezdVar.a(arrayList, zzepkVar.a());
                } else {
                    zzezdVar.a(arrayList, zzezdVar.f7115c.c(zzezdVar.j, str));
                }
                return new zzgyl(zzgtd.v(arrayList), true).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzeyx
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Object call() {
                        zzeze zzezeVar2 = zzezd.k;
                        JSONArray jSONArray = new JSONArray();
                        ArrayList arrayList2 = arrayList;
                        int size = arrayList2.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList2.get(i2);
                            i2++;
                            ListenableFuture listenableFuture = (ListenableFuture) obj;
                            if (((JSONObject) listenableFuture.get()) != null) {
                                jSONArray.put(listenableFuture.get());
                            }
                        }
                        int length = jSONArray.length();
                        String str5 = str3;
                        Bundle bundle5 = bundle3;
                        if (length == 0) {
                            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a5)).booleanValue()) {
                                return null;
                            }
                            return new zzeze(new JSONArray().toString(), bundle5, str5);
                        }
                        return new zzeze(jSONArray.toString(), bundle5, str5);
                    }
                }, zzezdVar.f7114a);
            }
        }, this.f7114a);
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 32;
    }
}
