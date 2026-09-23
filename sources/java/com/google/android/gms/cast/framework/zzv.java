package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzv extends Cast.Listener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CastSession f3600a;

    public zzv(CastSession castSession) {
        this.f3600a = castSession;
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void a(int i) {
        Iterator it = new HashSet(this.f3600a.d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).a(i);
        }
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void b(int i) {
        CastSession castSession = this.f3600a;
        castSession.l(i);
        zzau zzauVar = castSession.f3475a;
        if (zzauVar != null) {
            try {
                zzauVar.l(i);
            } catch (RemoteException e) {
                Session.b.a(e, "Unable to call %s on %s.", "notifySessionEnded", "zzau");
            }
        }
        Iterator it = new HashSet(castSession.d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).b(i);
        }
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void c(ApplicationMetadata applicationMetadata) {
        Iterator it = new HashSet(this.f3600a.d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).c(applicationMetadata);
        }
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void d() {
        Iterator it = new HashSet(this.f3600a.d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).d();
        }
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void f(int i) {
        Iterator it = new HashSet(this.f3600a.d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).f(i);
        }
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void g() {
        Iterator it = new HashSet(this.f3600a.d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).g();
        }
    }
}
