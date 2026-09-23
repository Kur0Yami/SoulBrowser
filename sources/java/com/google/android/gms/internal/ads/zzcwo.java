package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcwo {

    /* renamed from: a, reason: collision with root package name */
    public final zzedg f5539a;
    public final zzfik b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfmu f5540c;
    public final zzcpo d;
    public final zzemy e;
    public final zzdfz f;
    public zzfic g;
    public final zzeer h;
    public final zzczo i;
    public final Executor j;
    public final zzeec k;
    public final zzejl l;

    public zzcwo(zzedg zzedgVar, zzfik zzfikVar, zzfmu zzfmuVar, zzcpo zzcpoVar, zzemy zzemyVar, zzdfz zzdfzVar, zzfic zzficVar, zzeer zzeerVar, zzczo zzczoVar, Executor executor, zzeec zzeecVar, zzejl zzejlVar) {
        this.f5539a = zzedgVar;
        this.b = zzfikVar;
        this.f5540c = zzfmuVar;
        this.d = zzcpoVar;
        this.e = zzemyVar;
        this.f = zzdfzVar;
        this.g = zzficVar;
        this.h = zzeerVar;
        this.i = zzczoVar;
        this.j = executor;
        this.k = zzeecVar;
        this.l = zzejlVar;
    }

    public final zzfmb a(ListenableFuture listenableFuture) {
        if (this.g != null) {
            zzfmu zzfmuVar = this.f5540c;
            zzfmo zzfmoVar = zzfmo.SERVER_TRANSACTION;
            Objects.requireNonNull(zzfmuVar);
            return new zzfml(zzfmuVar, zzfmoVar, null, zzfmm.d, Collections.EMPTY_LIST, zzgym.a(this.g)).d();
        }
        zzber zzj = com.google.android.gms.ads.internal.zzt.zzj();
        zzj.getClass();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e5)).booleanValue()) {
            synchronized (zzj.f4598c) {
                try {
                    zzj.e();
                    ScheduledFuture scheduledFuture = zzj.f4597a;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    ScheduledExecutorService scheduledExecutorService = zzcdo.d;
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) scheduledExecutorService;
                    zzj.f4597a = scheduledThreadPoolExecutor.schedule(zzj.b, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f5)).longValue(), TimeUnit.MILLISECONDS);
                } finally {
                }
            }
        }
        zzfml a2 = this.f5540c.a(listenableFuture, zzfmo.SERVER_TRANSACTION);
        final zzeec zzeecVar = this.k;
        return a2.b(new zzgxu() { // from class: com.google.android.gms.internal.ads.zzcwn
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzeec.this.a((zzbza) obj);
            }
        }).d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:94:0x0253, code lost:
    
        if (r10.zze(r7, r6, r0) == false) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0218 A[Catch: all -> 0x00fd, TryCatch #8 {all -> 0x00fd, blocks: (B:35:0x009a, B:37:0x00b7, B:40:0x00bf, B:42:0x00cc, B:44:0x00e6, B:45:0x0116, B:47:0x0122, B:49:0x012a, B:50:0x0130, B:54:0x0139, B:57:0x0173, B:60:0x014d, B:63:0x015e, B:65:0x0178, B:68:0x0100, B:70:0x018c, B:74:0x01ab, B:78:0x01b3, B:80:0x01d6, B:82:0x01ec, B:84:0x020e, B:85:0x0225, B:88:0x0239, B:90:0x023f, B:91:0x024c, B:93:0x024f, B:95:0x0258, B:99:0x0255, B:100:0x0218, B:101:0x01ff, B:104:0x01c2, B:107:0x019a, B:108:0x019f), top: B:34:0x009a, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x020e A[Catch: all -> 0x00fd, TryCatch #8 {all -> 0x00fd, blocks: (B:35:0x009a, B:37:0x00b7, B:40:0x00bf, B:42:0x00cc, B:44:0x00e6, B:45:0x0116, B:47:0x0122, B:49:0x012a, B:50:0x0130, B:54:0x0139, B:57:0x0173, B:60:0x014d, B:63:0x015e, B:65:0x0178, B:68:0x0100, B:70:0x018c, B:74:0x01ab, B:78:0x01b3, B:80:0x01d6, B:82:0x01ec, B:84:0x020e, B:85:0x0225, B:88:0x0239, B:90:0x023f, B:91:0x024c, B:93:0x024f, B:95:0x0258, B:99:0x0255, B:100:0x0218, B:101:0x01ff, B:104:0x01c2, B:107:0x019a, B:108:0x019f), top: B:34:0x009a, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x023f A[Catch: all -> 0x00fd, TryCatch #8 {all -> 0x00fd, blocks: (B:35:0x009a, B:37:0x00b7, B:40:0x00bf, B:42:0x00cc, B:44:0x00e6, B:45:0x0116, B:47:0x0122, B:49:0x012a, B:50:0x0130, B:54:0x0139, B:57:0x0173, B:60:0x014d, B:63:0x015e, B:65:0x0178, B:68:0x0100, B:70:0x018c, B:74:0x01ab, B:78:0x01b3, B:80:0x01d6, B:82:0x01ec, B:84:0x020e, B:85:0x0225, B:88:0x0239, B:90:0x023f, B:91:0x024c, B:93:0x024f, B:95:0x0258, B:99:0x0255, B:100:0x0218, B:101:0x01ff, B:104:0x01c2, B:107:0x019a, B:108:0x019f), top: B:34:0x009a, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x024f A[Catch: all -> 0x00fd, TryCatch #8 {all -> 0x00fd, blocks: (B:35:0x009a, B:37:0x00b7, B:40:0x00bf, B:42:0x00cc, B:44:0x00e6, B:45:0x0116, B:47:0x0122, B:49:0x012a, B:50:0x0130, B:54:0x0139, B:57:0x0173, B:60:0x014d, B:63:0x015e, B:65:0x0178, B:68:0x0100, B:70:0x018c, B:74:0x01ab, B:78:0x01b3, B:80:0x01d6, B:82:0x01ec, B:84:0x020e, B:85:0x0225, B:88:0x0239, B:90:0x023f, B:91:0x024c, B:93:0x024f, B:95:0x0258, B:99:0x0255, B:100:0x0218, B:101:0x01ff, B:104:0x01c2, B:107:0x019a, B:108:0x019f), top: B:34:0x009a, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0260  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzfmb b() {
        /*
            Method dump skipped, instructions count: 773
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcwo.b():com.google.android.gms.internal.ads.zzfmb");
    }

    public final zzfmb c(ListenableFuture listenableFuture) {
        zzfml b = this.f5540c.a(listenableFuture, zzfmo.RENDERER).a(new zzflu() { // from class: com.google.android.gms.internal.ads.zzcwm
            @Override // com.google.android.gms.internal.ads.zzflu
            public final Object zza(Object obj) {
                zzfic zzficVar = (zzfic) obj;
                zzcpo zzcpoVar = zzcwo.this.d;
                ArrayList arrayList = zzficVar.b.f7382c;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    zzfia zzfiaVar = (zzfia) obj2;
                    Map map = zzcpoVar.f5353a;
                    String str = zzfiaVar.f7380a;
                    JSONObject jSONObject = zzfiaVar.b;
                    if (map.containsKey(str) && jSONObject != null) {
                        ((zzcpr) map.get(str)).b(jSONObject);
                    } else {
                        Map map2 = zzcpoVar.b;
                        if (map2.containsKey(str) && jSONObject != null) {
                            zzcpq zzcpqVar = (zzcpq) map2.get(str);
                            HashMap hashMap = new HashMap();
                            Iterator<String> keys = jSONObject.keys();
                            while (keys.hasNext()) {
                                String next = keys.next();
                                String optString = jSONObject.optString(next);
                                if (optString != null) {
                                    hashMap.put(next, optString);
                                }
                            }
                            zzcpqVar.a(hashMap);
                        }
                    }
                }
                return zzficVar;
            }
        }).b(this.e);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.w6)).booleanValue()) {
            long intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x6)).intValue();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            b = b.c(intValue);
        }
        return b.d();
    }
}
