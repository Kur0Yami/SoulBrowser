package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.support.customtabs.ICustomTabsCallback;

/* loaded from: classes.dex */
public class CustomTabsSessionToken {

    /* renamed from: a, reason: collision with root package name */
    public final ICustomTabsCallback f427a;
    public final PendingIntent b;

    /* renamed from: androidx.browser.customtabs.CustomTabsSessionToken$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends CustomTabsCallback {
        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final void a(String str, Bundle bundle) {
            throw null;
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final Bundle b(String str, Bundle bundle) {
            throw null;
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final void c(int i, int i2, int i3, int i4, int i5, Bundle bundle) {
            throw null;
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final void d(int i, int i2, Bundle bundle) {
            throw null;
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final void e(Bundle bundle) {
            throw null;
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final void f(Bundle bundle) {
            throw null;
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final void g(int i, Bundle bundle) {
            throw null;
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final void h(String str, Bundle bundle) {
            throw null;
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final void i(int i, Uri uri, boolean z, Bundle bundle) {
            throw null;
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final void j(Bundle bundle) {
            throw null;
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public final void k(Bundle bundle) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class MockCallback extends ICustomTabsCallback.Stub {
        @Override // android.support.customtabs.ICustomTabsCallback.Stub, android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public final void extraCallback(String str, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public final Bundle extraCallbackWithResult(String str, Bundle bundle) {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public final void onActivityLayout(int i, int i2, int i3, int i4, int i5, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public final void onActivityResized(int i, int i2, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public final void onMessageChannelReady(Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public final void onMinimized(Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public final void onNavigationEvent(int i, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public final void onPostMessage(String str, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public final void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public final void onUnminimized(Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public final void onWarmupCompleted(Bundle bundle) {
        }
    }

    public CustomTabsSessionToken(ICustomTabsCallback iCustomTabsCallback, PendingIntent pendingIntent) {
        if (iCustomTabsCallback == null && pendingIntent == null) {
            throw new IllegalStateException("CustomTabsSessionToken must have either a session id or a callback (or both).");
        }
        this.f427a = iCustomTabsCallback;
        this.b = pendingIntent;
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (obj instanceof CustomTabsSessionToken) {
            CustomTabsSessionToken customTabsSessionToken = (CustomTabsSessionToken) obj;
            PendingIntent pendingIntent = customTabsSessionToken.b;
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
                ICustomTabsCallback iCustomTabsCallback = this.f427a;
                if (iCustomTabsCallback != null) {
                    IBinder asBinder = iCustomTabsCallback.asBinder();
                    ICustomTabsCallback iCustomTabsCallback2 = customTabsSessionToken.f427a;
                    if (iCustomTabsCallback2 != null) {
                        return asBinder.equals(iCustomTabsCallback2.asBinder());
                    }
                    throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
                }
                throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
            }
        }
        return false;
    }

    public final int hashCode() {
        PendingIntent pendingIntent = this.b;
        if (pendingIntent != null) {
            return pendingIntent.hashCode();
        }
        ICustomTabsCallback iCustomTabsCallback = this.f427a;
        if (iCustomTabsCallback != null) {
            return iCustomTabsCallback.asBinder().hashCode();
        }
        throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
    }
}
