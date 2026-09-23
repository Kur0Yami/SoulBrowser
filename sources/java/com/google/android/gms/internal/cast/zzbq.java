package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.Looper;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.CastMediaControlIntent;
import com.google.android.gms.cast.internal.Logger;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzbq extends MediaRouter.Callback {
    public static final Logger f = new Logger("MRDiscoveryCallback", null);
    public final zzby e;

    /* renamed from: c, reason: collision with root package name */
    public final Map f9638c = DesugarCollections.synchronizedMap(new HashMap());
    public final LinkedHashSet d = new LinkedHashSet();
    public final Set b = DesugarCollections.synchronizedSet(new LinkedHashSet());

    /* renamed from: a, reason: collision with root package name */
    public final zzbn f9637a = new zzbn(this);

    public zzbq(Context context) {
        this.e = new zzby(context);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void d(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        f.b("MediaRouterDiscoveryCallback.onRouteAdded.", new Object[0]);
        o(routeInfo, true);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void e(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        f.b("MediaRouterDiscoveryCallback.onRouteChanged.", new Object[0]);
        o(routeInfo, true);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void h(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        f.b("MediaRouterDiscoveryCallback.onRouteRemoved.", new Object[0]);
        o(routeInfo, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x01a1, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01a8, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o(androidx.mediarouter.media.MediaRouter.RouteInfo r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzbq.o(androidx.mediarouter.media.MediaRouter$RouteInfo, boolean):void");
    }

    public final void p() {
        int size = this.d.size();
        Logger logger = f;
        logger.b(androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(size).length() + 33), "Starting RouteDiscovery with ", size, " IDs"), new Object[0]);
        logger.b("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.f9638c.keySet())), new Object[0]);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            q();
        } else {
            new zzfk(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbo
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzbq.this.q();
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.mediarouter.media.MediaRouteSelector$Builder, java.lang.Object] */
    public final void q() {
        zzby zzbyVar = this.e;
        if (zzbyVar.b == null) {
            zzbyVar.b = MediaRouter.h(zzbyVar.f9643a);
        }
        MediaRouter mediaRouter = zzbyVar.b;
        if (mediaRouter != null) {
            mediaRouter.p(this);
        }
        LinkedHashSet linkedHashSet = this.d;
        synchronized (linkedHashSet) {
            try {
                Iterator it = linkedHashSet.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    ?? obj = new Object();
                    obj.b(CastMediaControlIntent.a(str));
                    MediaRouteSelector c2 = obj.c();
                    Map map = this.f9638c;
                    if (((zzbm) map.get(str)) == null) {
                        map.put(str, new zzbm(c2));
                    }
                    Logger logger = f;
                    String a2 = CastMediaControlIntent.a(str);
                    StringBuilder sb = new StringBuilder(a2.length() + 49);
                    sb.append("Adding mediaRouter callback for control category ");
                    sb.append(a2);
                    logger.b(sb.toString(), new Object[0]);
                    if (zzbyVar.b == null) {
                        zzbyVar.b = MediaRouter.h(zzbyVar.f9643a);
                    }
                    zzbyVar.b.a(c2, this, 4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Map map2 = this.f9638c;
        f.b("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(map2.keySet())), new Object[0]);
    }

    public final void r(List list) {
        Logger logger = f;
        int size = list.size();
        logger.b(androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(size).length() + 26), "SetRouteDiscovery for ", size, " IDs"), new Object[0]);
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(zzhb.a((String) it.next()));
        }
        Map map = this.f9638c;
        logger.b("resetting routes. appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(map.keySet())), new Object[0]);
        HashMap hashMap = new HashMap();
        synchronized (map) {
            try {
                for (String str : linkedHashSet) {
                    zzbm zzbmVar = (zzbm) map.get(zzhb.a(str));
                    if (zzbmVar != null) {
                        hashMap.put(str, zzbmVar);
                    }
                }
                map.clear();
                map.putAll(hashMap);
            } catch (Throwable th) {
                throw th;
            }
        }
        logger.b("Routes reset. appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(map.keySet())), new Object[0]);
        LinkedHashSet linkedHashSet2 = this.d;
        synchronized (linkedHashSet2) {
            linkedHashSet2.clear();
            linkedHashSet2.addAll(linkedHashSet);
        }
        p();
    }
}
