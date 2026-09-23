package androidx.core.content;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService;

/* loaded from: classes.dex */
class UnusedAppRestrictionsBackportServiceConnection implements ServiceConnection {

    /* renamed from: c, reason: collision with root package name */
    public IUnusedAppRestrictionsBackportService f653c;

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        IUnusedAppRestrictionsBackportService I1 = IUnusedAppRestrictionsBackportService.Stub.I1(iBinder);
        this.f653c = I1;
        try {
            I1.g1(new IUnusedAppRestrictionsBackportCallback.Stub() { // from class: androidx.core.content.UnusedAppRestrictionsBackportServiceConnection.1
                {
                    attachInterface(this, IUnusedAppRestrictionsBackportCallback.f648a);
                }

                @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
                public final void f4(boolean z, boolean z2) {
                    UnusedAppRestrictionsBackportServiceConnection unusedAppRestrictionsBackportServiceConnection = UnusedAppRestrictionsBackportServiceConnection.this;
                    if (z) {
                        if (z2) {
                            unusedAppRestrictionsBackportServiceConnection.getClass();
                            throw null;
                        }
                        unusedAppRestrictionsBackportServiceConnection.getClass();
                        throw null;
                    }
                    unusedAppRestrictionsBackportServiceConnection.getClass();
                    throw null;
                }
            });
        } catch (RemoteException unused) {
            throw null;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f653c = null;
    }
}
