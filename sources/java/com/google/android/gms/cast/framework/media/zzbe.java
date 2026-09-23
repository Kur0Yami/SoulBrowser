package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.internal.cast.zzfk;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbe implements com.google.android.gms.cast.internal.zzao {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f3569a;

    public /* synthetic */ zzbe(RemoteMediaClient remoteMediaClient) {
        this.f3569a = remoteMediaClient;
    }

    public final void a() {
        RemoteMediaClient remoteMediaClient = this.f3569a;
        remoteMediaClient.getClass();
        for (zzbg zzbgVar : remoteMediaClient.j.values()) {
            if (remoteMediaClient.j() && !zzbgVar.d) {
                RemoteMediaClient remoteMediaClient2 = zzbgVar.e;
                zzfk zzfkVar = remoteMediaClient2.b;
                Runnable runnable = zzbgVar.f3572c;
                zzfkVar.removeCallbacks(runnable);
                zzbgVar.d = true;
                remoteMediaClient2.b.postDelayed(runnable, zzbgVar.b);
            } else if (!remoteMediaClient.j() && zzbgVar.d) {
                zzbgVar.e.b.removeCallbacks(zzbgVar.f3572c);
                zzbgVar.d = false;
            }
            if (zzbgVar.d && (remoteMediaClient.k() || remoteMediaClient.D() || remoteMediaClient.n() || remoteMediaClient.m())) {
                remoteMediaClient.K(zzbgVar.f3571a);
            }
        }
        Iterator it = remoteMediaClient.g.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Listener) it.next()).i();
        }
        Iterator it2 = remoteMediaClient.h.iterator();
        while (it2.hasNext()) {
            ((RemoteMediaClient.Callback) it2.next()).e();
        }
    }

    public final void b() {
        RemoteMediaClient remoteMediaClient = this.f3569a;
        remoteMediaClient.getClass();
        Iterator it = remoteMediaClient.g.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Listener) it.next()).a();
        }
        Iterator it2 = remoteMediaClient.h.iterator();
        while (it2.hasNext()) {
            ((RemoteMediaClient.Callback) it2.next()).b();
        }
    }

    public final void c() {
        RemoteMediaClient remoteMediaClient = this.f3569a;
        Iterator it = remoteMediaClient.g.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Listener) it.next()).b();
        }
        Iterator it2 = remoteMediaClient.h.iterator();
        while (it2.hasNext()) {
            ((RemoteMediaClient.Callback) it2.next()).d();
        }
    }

    public final void d() {
        RemoteMediaClient remoteMediaClient = this.f3569a;
        Iterator it = remoteMediaClient.g.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Listener) it.next()).g();
        }
        Iterator it2 = remoteMediaClient.h.iterator();
        while (it2.hasNext()) {
            ((RemoteMediaClient.Callback) it2.next()).c();
        }
    }

    public final void e(int[] iArr) {
        Iterator it = this.f3569a.h.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).g(iArr);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzao
    public final void zzm() {
        Iterator it = this.f3569a.h.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).m();
        }
    }
}
