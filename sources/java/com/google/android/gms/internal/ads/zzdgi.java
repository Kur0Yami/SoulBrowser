package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class zzdgi {

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f5776c = new HashMap();

    public zzdgi(Set set) {
        synchronized (this) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                i0((zzdij) it.next());
            }
        }
    }

    public final synchronized void i0(zzdij zzdijVar) {
        m0(zzdijVar.f5814a, zzdijVar.b);
    }

    public final synchronized void m0(Object obj, Executor executor) {
        this.f5776c.put(obj, executor);
    }

    public final synchronized void s0(final zzdgh zzdghVar) {
        for (Map.Entry entry : this.f5776c.entrySet()) {
            final Object key = entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdgg
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    try {
                        zzdgh.this.zza(key);
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzt.zzh().g("EventEmitter.notify", th);
                        com.google.android.gms.ads.internal.util.zze.zzb("Event emitter exception.", th);
                    }
                }
            });
        }
    }
}
