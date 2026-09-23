package com.google.android.gms.cast.framework;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public class ReconnectionService extends Service {
    public static final Logger f = new Logger("ReconnectionService", null);

    /* renamed from: c, reason: collision with root package name */
    public zzar f3474c;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        zzar zzarVar = this.f3474c;
        if (zzarVar != null) {
            try {
                return zzarVar.f1(intent);
            } catch (RemoteException e) {
                f.a(e, "Unable to call %s on %s.", "onBind", "zzar");
            }
        }
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        IObjectWrapper iObjectWrapper;
        IObjectWrapper iObjectWrapper2;
        CastContext e = CastContext.e(this);
        SessionManager d = e.d();
        d.getClass();
        zzar zzarVar = null;
        try {
            iObjectWrapper = d.f3477a.zzk();
        } catch (RemoteException e2) {
            SessionManager.f3476c.a(e2, "Unable to call %s on %s.", "getWrappedThis", "zzaw");
            iObjectWrapper = null;
        }
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaa zzaaVar = e.d;
        zzaaVar.getClass();
        try {
            iObjectWrapper2 = zzaaVar.f3583a.zze();
        } catch (RemoteException e3) {
            zzaa.b.a(e3, "Unable to call %s on %s.", "getWrappedThis", "zzao");
            iObjectWrapper2 = null;
        }
        Logger logger = com.google.android.gms.internal.cast.zzay.f9625a;
        if (iObjectWrapper != null && iObjectWrapper2 != null) {
            try {
                zzarVar = com.google.android.gms.internal.cast.zzay.a(getApplicationContext()).F1(new ObjectWrapper(this), iObjectWrapper, iObjectWrapper2);
            } catch (RemoteException | ModuleUnavailableException e4) {
                com.google.android.gms.internal.cast.zzay.f9625a.a(e4, "Unable to call %s on %s.", "newReconnectionServiceImpl", "zzbc");
            }
        }
        this.f3474c = zzarVar;
        if (zzarVar != null) {
            try {
                zzarVar.y4();
            } catch (RemoteException e5) {
                f.a(e5, "Unable to call %s on %s.", "onCreate", "zzar");
            }
            super.onCreate();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        zzar zzarVar = this.f3474c;
        if (zzarVar != null) {
            try {
                zzarVar.zzh();
            } catch (RemoteException e) {
                f.a(e, "Unable to call %s on %s.", "onDestroy", "zzar");
            }
            super.onDestroy();
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        zzar zzarVar = this.f3474c;
        if (zzarVar != null) {
            try {
                return zzarVar.J(i, i2, intent);
            } catch (RemoteException e) {
                f.a(e, "Unable to call %s on %s.", "onStartCommand", "zzar");
            }
        }
        return 2;
    }
}
