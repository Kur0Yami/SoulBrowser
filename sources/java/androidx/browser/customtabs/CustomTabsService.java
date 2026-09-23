package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.support.customtabs.IAuthTabCallback;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import android.support.customtabs.IEngagementSignalsCallback;
import androidx.annotation.RestrictTo;
import androidx.browser.auth.AuthTabSessionToken;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class CustomTabsService extends Service {

    /* renamed from: androidx.browser.customtabs.CustomTabsService$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends ICustomTabsService.Stub {
        public static PendingIntent I1(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("android.support.customtabs.extra.SESSION_ID");
            bundle.remove("android.support.customtabs.extra.SESSION_ID");
            return pendingIntent;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final Bundle extraCommand(String str, Bundle bundle) {
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean isEngagementSignalsApiAvailable(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
            new CustomTabsSessionToken(iCustomTabsCallback, I1(bundle));
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List list) {
            new CustomTabsSessionToken(iCustomTabsCallback, I1(bundle));
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean newAuthTabSession(IAuthTabCallback iAuthTabCallback, Bundle bundle) {
            new AuthTabSessionToken(iAuthTabCallback, I1(bundle));
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean newSession(ICustomTabsCallback iCustomTabsCallback) {
            new CustomTabsSessionToken(iCustomTabsCallback, null);
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean newSessionWithExtras(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
            new CustomTabsSessionToken(iCustomTabsCallback, I1(bundle));
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final int postMessage(ICustomTabsCallback iCustomTabsCallback, String str, Bundle bundle) {
            new CustomTabsSessionToken(iCustomTabsCallback, I1(bundle));
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final void prefetch(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle) {
            new CustomTabsSessionToken(iCustomTabsCallback, I1(bundle));
            Object[] objArr = {uri};
            ArrayList arrayList = new ArrayList(1);
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
            DesugarCollections.unmodifiableList(arrayList);
            PrefetchOptions.a(bundle);
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final void prefetchWithMultipleUrls(ICustomTabsCallback iCustomTabsCallback, List list, Bundle bundle) {
            new CustomTabsSessionToken(iCustomTabsCallback, I1(bundle));
            PrefetchOptions.a(bundle);
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean receiveFile(ICustomTabsCallback iCustomTabsCallback, Uri uri, int i, Bundle bundle) {
            new CustomTabsSessionToken(iCustomTabsCallback, I1(bundle));
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean requestPostMessageChannel(ICustomTabsCallback iCustomTabsCallback, Uri uri) {
            new CustomTabsSessionToken(iCustomTabsCallback, null);
            new Bundle();
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean requestPostMessageChannelWithExtras(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle) {
            new CustomTabsSessionToken(iCustomTabsCallback, I1(bundle));
            if (bundle != null) {
                if (Build.VERSION.SDK_INT >= 33) {
                }
            }
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean setEngagementSignalsCallback(ICustomTabsCallback iCustomTabsCallback, IBinder iBinder, Bundle bundle) {
            IEngagementSignalsCallback.Stub.asInterface(iBinder);
            new CustomTabsSessionToken(iCustomTabsCallback, I1(bundle));
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
            new CustomTabsSessionToken(iCustomTabsCallback, I1(bundle));
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean validateRelationship(ICustomTabsCallback iCustomTabsCallback, int i, Uri uri, Bundle bundle) {
            new CustomTabsSessionToken(iCustomTabsCallback, I1(bundle));
            throw null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public final boolean warmup(long j) {
            throw null;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface FilePurpose {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Relation {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Result {
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }
}
