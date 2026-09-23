package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.MediaLoadRequestData;
import com.google.android.gms.cast.SessionState;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.SessionTransferCallback;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzbz implements SessionManagerListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzce f9644a;

    public /* synthetic */ zzbz(zzce zzceVar) {
        this.f9644a = zzceVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void d(Session session, int i) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void e(Session session, String str) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* synthetic */ void f(Session session, int i) {
        Logger logger = zzce.i;
        Object[] objArr = {Integer.valueOf(i)};
        Logger logger2 = zzce.i;
        logger2.b("onSessionEnded with error = %d", objArr);
        zzce zzceVar = this.f9644a;
        int i2 = zzceVar.e;
        if (i2 == 0) {
            logger2.b("No need to notify transferred if the transfer type is unknown", new Object[0]);
        } else if (zzceVar.h == null) {
            logger2.b("No need to notify with null sessionState", new Object[0]);
        } else {
            logger2.b("notify transferred with type = %d, sessionState = %s", Integer.valueOf(i2), zzceVar.h);
            Iterator it = new HashSet(zzceVar.b).iterator();
            while (it.hasNext()) {
                ((SessionTransferCallback) it.next()).b(zzceVar.e);
            }
        }
        if (zzceVar.e == 2) {
            return;
        }
        zzceVar.b();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void h(Session session, String str) {
        MediaLoadRequestData mediaLoadRequestData;
        zzce zzceVar = this.f9644a;
        Object[] objArr = {Integer.valueOf(zzceVar.e)};
        Logger logger = zzce.i;
        logger.b("onSessionStarted with transferType = %d", objArr);
        if (zzceVar.f && zzceVar.f9648a.u && zzceVar.e == 2) {
            if (zzceVar.h == null) {
                logger.b("skip restoring session state due to null SessionState", new Object[0]);
            } else {
                SessionManager sessionManager = zzceVar.g;
                RemoteMediaClient remoteMediaClient = null;
                if (sessionManager == null) {
                    logger.b("skip transferring as SessionManager is null", new Object[0]);
                } else {
                    CastSession c2 = sessionManager.c();
                    if (c2 == null) {
                        logger.b("skip transferring as CastSession is null", new Object[0]);
                    } else {
                        remoteMediaClient = c2.j();
                    }
                }
                if (remoteMediaClient == null) {
                    logger.b("skip restoring session state due to null RemoteMediaClient", new Object[0]);
                } else {
                    logger.b("resume SessionState to current session", new Object[0]);
                    SessionState sessionState = zzceVar.h;
                    if (sessionState != null && (mediaLoadRequestData = sessionState.f3459c) != null) {
                        RemoteMediaClient.k.b("resume SessionState", new Object[0]);
                        remoteMediaClient.q(mediaLoadRequestData);
                    }
                }
            }
        }
        zzceVar.b();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void j(Session session, int i) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void k(Session session, boolean z) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void m(Session session, int i) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void n(Session session) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void o(Session session) {
    }
}
