package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes.dex */
final class zzarx implements zzarj {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f4377a = new HashMap();
    public final zzaqw b;

    /* renamed from: c, reason: collision with root package name */
    public final BlockingQueue f4378c;
    public final zzarb d;

    public zzarx(zzaqw zzaqwVar, BlockingQueue blockingQueue, zzarb zzarbVar) {
        this.d = zzarbVar;
        this.b = zzaqwVar;
        this.f4378c = blockingQueue;
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final void a(zzark zzarkVar, zzarq zzarqVar) {
        List list;
        zzaqt zzaqtVar = zzarqVar.b;
        if (zzaqtVar != null && zzaqtVar.e >= System.currentTimeMillis()) {
            String zzi = zzarkVar.zzi();
            synchronized (this) {
                list = (List) this.f4377a.remove(zzi);
            }
            if (list != null) {
                if (zzarw.f4376a) {
                    zzarw.a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), zzi);
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    this.d.a((zzark) it.next(), zzarqVar, null);
                }
                return;
            }
            return;
        }
        b(zzarkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final synchronized void b(zzark zzarkVar) {
        try {
            HashMap hashMap = this.f4377a;
            String zzi = zzarkVar.zzi();
            List list = (List) hashMap.remove(zzi);
            if (list != null && !list.isEmpty()) {
                if (zzarw.f4376a) {
                    zzarw.a("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), zzi);
                }
                zzark zzarkVar2 = (zzark) list.remove(0);
                hashMap.put(zzi, list);
                zzarkVar2.e(this);
                try {
                    this.f4378c.put(zzarkVar2);
                } catch (InterruptedException e) {
                    zzarw.c("Couldn't add request to queue. %s", e.toString());
                    Thread.currentThread().interrupt();
                    zzaqw zzaqwVar = this.b;
                    zzaqwVar.h = true;
                    zzaqwVar.interrupt();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean c(zzark zzarkVar) {
        try {
            HashMap hashMap = this.f4377a;
            String zzi = zzarkVar.zzi();
            if (hashMap.containsKey(zzi)) {
                List list = (List) hashMap.get(zzi);
                if (list == null) {
                    list = new ArrayList();
                }
                zzarkVar.zzc("waiting-for-response");
                list.add(zzarkVar);
                hashMap.put(zzi, list);
                if (zzarw.f4376a) {
                    zzarw.b("Request for cacheKey=%s is in flight, putting on hold.", zzi);
                }
                return true;
            }
            hashMap.put(zzi, null);
            zzarkVar.e(this);
            if (zzarw.f4376a) {
                zzarw.b("new request, sending to network %s", zzi);
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }
}
