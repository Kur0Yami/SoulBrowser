package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public abstract class Session {
    public static final Logger b = new Logger("Session", null);

    /* renamed from: a, reason: collision with root package name */
    public final zzau f3475a;

    public Session(Context context, String str, String str2) {
        zzau zzauVar;
        try {
            zzauVar = com.google.android.gms.internal.cast.zzay.a(context).Y4(str, str2, new zzbf(this));
        } catch (RemoteException | ModuleUnavailableException e) {
            com.google.android.gms.internal.cast.zzay.f9625a.a(e, "Unable to call %s on %s.", "newSessionImpl", "zzbc");
            zzauVar = null;
        }
        this.f3475a = zzauVar;
    }

    public abstract void a(boolean z);

    public long b() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return 0L;
    }

    public final boolean c() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzau zzauVar = this.f3475a;
        if (zzauVar != null) {
            try {
                return zzauVar.zzi();
            } catch (RemoteException e) {
                b.a(e, "Unable to call %s on %s.", "isConnected", "zzau");
            }
        }
        return false;
    }

    public void d(Bundle bundle) {
    }

    public void e(Bundle bundle) {
    }

    public abstract void f(Bundle bundle);

    public abstract void g(Bundle bundle);

    public void h(Bundle bundle) {
    }

    public final int i() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzau zzauVar = this.f3475a;
        if (zzauVar != null) {
            try {
                if (zzauVar.zze() >= 211100000) {
                    return zzauVar.zzo();
                }
            } catch (RemoteException e) {
                b.a(e, "Unable to call %s on %s.", "getSessionStartType", "zzau");
            }
        }
        return 0;
    }
}
