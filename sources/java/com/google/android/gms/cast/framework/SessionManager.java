package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public class SessionManager {

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f3476c = new Logger("SessionManager", null);

    /* renamed from: a, reason: collision with root package name */
    public final zzaw f3477a;
    public final Context b;

    public SessionManager(zzaw zzawVar, Context context) {
        this.f3477a = zzawVar;
        this.b = context;
    }

    public final void a(SessionManagerListener sessionManagerListener) {
        if (sessionManagerListener != null) {
            Preconditions.checkNotNull(CastSession.class);
            Preconditions.checkMainThread("Must be called from the main thread.");
            try {
                this.f3477a.Q3(new zzbg(sessionManagerListener));
                return;
            } catch (RemoteException e) {
                f3476c.a(e, "Unable to call %s on %s.", "addSessionManagerListener", "zzaw");
                return;
            }
        }
        throw new NullPointerException("SessionManagerListener can't be null");
    }

    public final void b(boolean z) {
        Logger logger = f3476c;
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            Log.i(logger.f3604a, logger.d("End session for %s", this.b.getPackageName()));
            this.f3477a.m4(z);
        } catch (RemoteException e) {
            logger.a(e, "Unable to call %s on %s.", "endCurrentSession", "zzaw");
        }
    }

    public final CastSession c() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Session d = d();
        if (d != null && (d instanceof CastSession)) {
            return (CastSession) d;
        }
        return null;
    }

    public final Session d() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return (Session) ObjectWrapper.f2(this.f3477a.zze());
        } catch (RemoteException e) {
            f3476c.a(e, "Unable to call %s on %s.", "getWrappedCurrentSession", "zzaw");
            return null;
        }
    }

    public final void e(SessionManagerListener sessionManagerListener) {
        Preconditions.checkNotNull(CastSession.class);
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (sessionManagerListener == null) {
            return;
        }
        try {
            this.f3477a.X4(new zzbg(sessionManagerListener));
        } catch (RemoteException e) {
            f3476c.a(e, "Unable to call %s on %s.", "removeSessionManagerListener", "zzaw");
        }
    }
}
