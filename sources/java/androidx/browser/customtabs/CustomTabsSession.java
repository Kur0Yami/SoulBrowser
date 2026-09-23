package androidx.browser.customtabs;

import android.content.ComponentName;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.IAuthTabCallback;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import android.support.customtabs.IEngagementSignalsCallback;
import java.util.List;

/* loaded from: classes.dex */
public final class CustomTabsSession {

    /* renamed from: a, reason: collision with root package name */
    public final Object f425a = new Object();
    public final ICustomTabsService b;

    /* renamed from: c, reason: collision with root package name */
    public final ICustomTabsCallback f426c;
    public final ComponentName d;

    /* renamed from: androidx.browser.customtabs.CustomTabsSession$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends IEngagementSignalsCallback.Stub {
        @Override // android.support.customtabs.IEngagementSignalsCallback
        public final void onGreatestScrollPercentageIncreased(int i, Bundle bundle) {
            throw null;
        }

        @Override // android.support.customtabs.IEngagementSignalsCallback
        public final void onSessionEnded(boolean z, Bundle bundle) {
            throw null;
        }

        @Override // android.support.customtabs.IEngagementSignalsCallback
        public final void onVerticalScrollEvent(boolean z, Bundle bundle) {
            throw null;
        }
    }

    /* renamed from: androidx.browser.customtabs.CustomTabsSession$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends IEngagementSignalsCallback.Stub {
        @Override // android.support.customtabs.IEngagementSignalsCallback
        public final void onGreatestScrollPercentageIncreased(int i, Bundle bundle) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                throw null;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(clearCallingIdentity);
                throw th;
            }
        }

        @Override // android.support.customtabs.IEngagementSignalsCallback
        public final void onSessionEnded(boolean z, Bundle bundle) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                throw null;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(clearCallingIdentity);
                throw th;
            }
        }

        @Override // android.support.customtabs.IEngagementSignalsCallback
        public final void onVerticalScrollEvent(boolean z, Bundle bundle) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                throw null;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(clearCallingIdentity);
                throw th;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class MockSession extends ICustomTabsService.Stub {
        @Override // android.support.customtabs.ICustomTabsService
        public final Bundle extraCommand(String str, Bundle bundle) {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean isEngagementSignalsApiAvailable(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List list) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean newAuthTabSession(IAuthTabCallback iAuthTabCallback, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean newSession(ICustomTabsCallback iCustomTabsCallback) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean newSessionWithExtras(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final int postMessage(ICustomTabsCallback iCustomTabsCallback, String str, Bundle bundle) {
            return 0;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final void prefetch(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final void prefetchWithMultipleUrls(ICustomTabsCallback iCustomTabsCallback, List list, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean receiveFile(ICustomTabsCallback iCustomTabsCallback, Uri uri, int i, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean requestPostMessageChannel(ICustomTabsCallback iCustomTabsCallback, Uri uri) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean requestPostMessageChannelWithExtras(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean setEngagementSignalsCallback(ICustomTabsCallback iCustomTabsCallback, IBinder iBinder, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean validateRelationship(ICustomTabsCallback iCustomTabsCallback, int i, Uri uri, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean warmup(long j) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class PendingSession {
    }

    public CustomTabsSession(ICustomTabsService iCustomTabsService, ICustomTabsCallback iCustomTabsCallback, ComponentName componentName) {
        this.b = iCustomTabsService;
        this.f426c = iCustomTabsCallback;
        this.d = componentName;
    }

    public final void a(String str) {
        Bundle bundle = new Bundle();
        synchronized (this.f425a) {
            try {
                try {
                    this.b.postMessage(this.f426c, str, bundle);
                } catch (RemoteException unused) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
