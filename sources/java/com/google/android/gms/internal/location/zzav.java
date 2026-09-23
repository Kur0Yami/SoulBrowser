package com.google.android.gms.internal.location;

import android.content.Context;
import com.google.android.gms.common.api.internal.ListenerHolder;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzav {

    /* renamed from: a, reason: collision with root package name */
    public final zzbg f10350a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f10351c = new HashMap();
    public final HashMap d = new HashMap();
    public final HashMap e = new HashMap();

    public zzav(Context context, zzbg zzbgVar) {
        this.b = context;
        this.f10350a = zzbgVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(ListenerHolder listenerHolder, zzai zzaiVar) {
        zzau zzauVar;
        ((zzh) this.f10350a).f10361a.checkConnected();
        ListenerHolder.ListenerKey listenerKey = listenerHolder.getListenerKey();
        if (listenerKey == null) {
            zzauVar = null;
        } else {
            synchronized (this.f10351c) {
                try {
                    zzau zzauVar2 = (zzau) this.f10351c.get(listenerKey);
                    if (zzauVar2 == null) {
                        zzauVar2 = new zzau(listenerHolder);
                    }
                    zzauVar = zzauVar2;
                    this.f10351c.put(listenerKey, zzauVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        zzau zzauVar3 = zzauVar;
        if (zzauVar3 == null) {
            return;
        }
        ((zzh) this.f10350a).a().f0(new zzbc(1, zzba.F(), zzauVar3, null, null, zzaiVar));
    }

    public final void b(zzba zzbaVar, ListenerHolder listenerHolder, zzah zzahVar) {
        zzar zzarVar;
        ((zzh) this.f10350a).f10361a.checkConnected();
        ListenerHolder.ListenerKey listenerKey = listenerHolder.getListenerKey();
        if (listenerKey == null) {
            zzarVar = null;
        } else {
            synchronized (this.e) {
                try {
                    zzar zzarVar2 = (zzar) this.e.get(listenerKey);
                    if (zzarVar2 == null) {
                        zzarVar2 = new zzar(listenerHolder);
                    }
                    zzarVar = zzarVar2;
                    this.e.put(listenerKey, zzarVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        zzar zzarVar3 = zzarVar;
        if (zzarVar3 == null) {
            return;
        }
        ((zzh) this.f10350a).a().f0(new zzbc(1, zzbaVar, null, null, zzarVar3, zzahVar));
    }

    public final void c() {
        synchronized (this.f10351c) {
            try {
                for (zzau zzauVar : this.f10351c.values()) {
                    if (zzauVar != null) {
                        ((zzh) this.f10350a).a().f0(new zzbc(2, null, zzauVar, null, null, null));
                    }
                }
                this.f10351c.clear();
            } finally {
            }
        }
        synchronized (this.e) {
            try {
                for (zzar zzarVar : this.e.values()) {
                    if (zzarVar != null) {
                        ((zzh) this.f10350a).a().f0(new zzbc(2, null, null, null, zzarVar, null));
                    }
                }
                this.e.clear();
            } finally {
            }
        }
        synchronized (this.d) {
            try {
                for (zzas zzasVar : this.d.values()) {
                    if (zzasVar != null) {
                        ((zzh) this.f10350a).a().l2(new zzl(2, null, zzasVar, null));
                    }
                }
                this.d.clear();
            } finally {
            }
        }
    }
}
