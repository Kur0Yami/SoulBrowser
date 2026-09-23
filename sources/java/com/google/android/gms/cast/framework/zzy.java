package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzy extends com.google.android.gms.cast.zzp {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CastSession f3601a;

    public zzy(CastSession castSession) {
        this.f3601a = castSession;
    }

    @Override // com.google.android.gms.cast.zzp
    public final void a() {
        CastSession castSession = this.f3601a;
        if (castSession.e != null) {
            try {
                RemoteMediaClient remoteMediaClient = castSession.j;
                if (remoteMediaClient != null) {
                    remoteMediaClient.C();
                }
                castSession.e.z3();
            } catch (RemoteException e) {
                CastSession.n.a(e, "Unable to call %s on %s.", "onConnected", "zzak");
            }
            zzr zzrVar = castSession.m;
            if (zzrVar != null) {
                zzrVar.zza();
            }
        }
    }

    @Override // com.google.android.gms.cast.zzp
    public final void b(int i) {
        zzak zzakVar = this.f3601a.e;
        if (zzakVar == null) {
            return;
        }
        try {
            zzakVar.n1(new ConnectionResult(i));
        } catch (RemoteException e) {
            CastSession.n.a(e, "Unable to call %s on %s.", "onConnectionFailed", "zzak");
        }
    }

    @Override // com.google.android.gms.cast.zzp
    public final void c(int i) {
        zzak zzakVar = this.f3601a.e;
        if (zzakVar == null) {
            return;
        }
        try {
            zzakVar.zzf(i);
        } catch (RemoteException e) {
            CastSession.n.a(e, "Unable to call %s on %s.", "onConnectionSuspended", "zzak");
        }
    }

    @Override // com.google.android.gms.cast.zzp
    public final void d(int i) {
        zzak zzakVar = this.f3601a.e;
        if (zzakVar == null) {
            return;
        }
        try {
            zzakVar.n1(new ConnectionResult(i));
        } catch (RemoteException e) {
            CastSession.n.a(e, "Unable to call %s on %s.", "onDisconnected", "zzak");
        }
    }
}
