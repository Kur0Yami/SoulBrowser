package com.google.android.gms.cast;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzad implements ServiceConnection {
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ((zzaj) iBinder).getClass();
        throw null;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        CastRemoteDisplayLocalService.f3434c.b("onServiceDisconnected", new Object[0]);
        new Status(2201, "Service Disconnected");
        throw null;
    }
}
