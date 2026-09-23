package androidx.browser.auth;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.support.customtabs.IAuthTabCallback;

/* loaded from: classes.dex */
public final class AuthTabSessionToken {

    /* renamed from: a, reason: collision with root package name */
    public final IAuthTabCallback f405a;
    public final PendingIntent b;

    /* renamed from: androidx.browser.auth.AuthTabSessionToken$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements AuthTabCallback {
    }

    /* loaded from: classes.dex */
    public static class MockCallback extends IAuthTabCallback.Stub {
        @Override // android.support.customtabs.IAuthTabCallback
        public final void onExtraCallback(String str, Bundle bundle) {
        }

        @Override // android.support.customtabs.IAuthTabCallback
        public final Bundle onExtraCallbackWithResult(String str, Bundle bundle) {
            return Bundle.EMPTY;
        }

        @Override // android.support.customtabs.IAuthTabCallback
        public final void onNavigationEvent(int i, Bundle bundle) {
        }

        @Override // android.support.customtabs.IAuthTabCallback
        public final void onWarmupCompleted(Bundle bundle) {
        }
    }

    public AuthTabSessionToken(IAuthTabCallback iAuthTabCallback, PendingIntent pendingIntent) {
        if (iAuthTabCallback == null && pendingIntent == null) {
            throw new IllegalStateException("AuthTabSessionToken must have either a session id or a callback (or both).");
        }
        this.f405a = iAuthTabCallback;
        this.b = pendingIntent;
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (obj instanceof AuthTabSessionToken) {
            AuthTabSessionToken authTabSessionToken = (AuthTabSessionToken) obj;
            PendingIntent pendingIntent = authTabSessionToken.b;
            boolean z2 = true;
            PendingIntent pendingIntent2 = this.b;
            if (pendingIntent2 == null) {
                z = true;
            } else {
                z = false;
            }
            if (pendingIntent != null) {
                z2 = false;
            }
            if (z == z2) {
                if (pendingIntent2 != null) {
                    return pendingIntent2.equals(pendingIntent);
                }
                IAuthTabCallback iAuthTabCallback = this.f405a;
                if (iAuthTabCallback != null) {
                    IBinder asBinder = iAuthTabCallback.asBinder();
                    IAuthTabCallback iAuthTabCallback2 = authTabSessionToken.f405a;
                    if (iAuthTabCallback2 != null) {
                        return asBinder.equals(iAuthTabCallback2.asBinder());
                    }
                    throw new IllegalStateException("AuthTabSessionToken must have valid binder or pending session");
                }
                throw new IllegalStateException("AuthTabSessionToken must have valid binder or pending session");
            }
        }
        return false;
    }

    public final int hashCode() {
        PendingIntent pendingIntent = this.b;
        if (pendingIntent != null) {
            return pendingIntent.hashCode();
        }
        IAuthTabCallback iAuthTabCallback = this.f405a;
        if (iAuthTabCallback != null) {
            return iAuthTabCallback.asBinder().hashCode();
        }
        throw new IllegalStateException("AuthTabSessionToken must have valid binder or pending session");
    }
}
