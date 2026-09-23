package com.google.auth.oauth2;

import com.google.api.client.util.Clock;
import com.google.auth.Credentials;
import com.google.auth.http.HttpTransportFactory;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListenableFutureTask;
import com.google.common.util.concurrent.MoreExecutors;
import j$.time.Duration;
import j$.util.Objects;
import java.io.IOException;
import java.io.Serializable;
import java.net.URI;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.ServiceLoader;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class OAuth2Credentials extends Credentials {
    public static final Duration k = Duration.ofMinutes(3);
    public static final Duration l = Duration.ofMinutes(3).plusSeconds(45);
    public static final ImmutableMap m = ImmutableMap.k();

    /* renamed from: c, reason: collision with root package name */
    public final Duration f12128c;
    public final Duration f;
    public volatile OAuthValue h;
    public transient RefreshTask i;
    public final byte[] g = new byte[0];
    public final transient Clock j = Clock.SYSTEM;

    /* loaded from: classes3.dex */
    public static class AsyncRefreshResult {

        /* renamed from: a, reason: collision with root package name */
        public final RefreshTask f12130a;
        public final boolean b;

        public AsyncRefreshResult(RefreshTask refreshTask, boolean z) {
            this.f12130a = refreshTask;
            this.b = z;
        }
    }

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public AccessToken f12131a;
        public Duration b;

        /* renamed from: c, reason: collision with root package name */
        public Duration f12132c;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class CacheState {

        /* renamed from: c, reason: collision with root package name */
        public static final CacheState f12133c;
        public static final CacheState f;
        public static final CacheState g;
        public static final /* synthetic */ CacheState[] h;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.auth.oauth2.OAuth2Credentials$CacheState] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.auth.oauth2.OAuth2Credentials$CacheState] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.google.auth.oauth2.OAuth2Credentials$CacheState] */
        static {
            ?? r0 = new Enum("FRESH", 0);
            f12133c = r0;
            ?? r1 = new Enum("STALE", 1);
            f = r1;
            ?? r3 = new Enum("EXPIRED", 2);
            g = r3;
            h = new CacheState[]{r0, r1, r3};
        }

        public static CacheState valueOf(String str) {
            return (CacheState) Enum.valueOf(CacheState.class, str);
        }

        public static CacheState[] values() {
            return (CacheState[]) h.clone();
        }
    }

    /* loaded from: classes3.dex */
    public interface CredentialsChangedListener {
    }

    /* loaded from: classes3.dex */
    public static class FutureCallbackToMetadataCallbackAdapter implements FutureCallback<OAuthValue> {
        @Override // com.google.common.util.concurrent.FutureCallback
        public final void a(Throwable th) {
            if (th instanceof ExecutionException) {
                th.getCause();
            }
            throw null;
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        public final void onSuccess(Object obj) {
            Map map = ((OAuthValue) obj).f;
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class OAuthValue implements Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final AccessToken f12134c;
        public final Map f;

        public OAuthValue(AccessToken accessToken, ImmutableMap immutableMap) {
            this.f12134c = accessToken;
            this.f = immutableMap;
        }

        public static OAuthValue a(AccessToken accessToken, Map map) {
            ImmutableMap.Builder a2 = ImmutableMap.a();
            a2.d("Authorization", ImmutableList.w("Bearer " + accessToken.f12101c));
            a2.e(map.entrySet());
            return new OAuthValue(accessToken, a2.a());
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof OAuthValue)) {
                return false;
            }
            OAuthValue oAuthValue = (OAuthValue) obj;
            if (!Objects.equals(this.f, oAuthValue.f) || !Objects.equals(this.f12134c, oAuthValue.f12134c)) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Objects.hash(this.f12134c, this.f);
        }
    }

    /* loaded from: classes3.dex */
    public class RefreshTask extends AbstractFuture<OAuthValue> implements Runnable {
        public static final /* synthetic */ int m = 0;
        public final ListenableFutureTask l;

        public RefreshTask(ListenableFutureTask listenableFutureTask, RefreshTaskListener refreshTaskListener) {
            this.l = listenableFutureTask;
            listenableFutureTask.k(refreshTaskListener, MoreExecutors.a());
            Futures.a(listenableFutureTask, new FutureCallback<OAuthValue>() { // from class: com.google.auth.oauth2.OAuth2Credentials.RefreshTask.1
                @Override // com.google.common.util.concurrent.FutureCallback
                public final void a(Throwable th) {
                    int i = RefreshTask.m;
                    RefreshTask.this.o(th);
                }

                @Override // com.google.common.util.concurrent.FutureCallback
                public final void onSuccess(Object obj) {
                    int i = RefreshTask.m;
                    RefreshTask.this.n((OAuthValue) obj);
                }
            });
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.l.run();
        }
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public class RefreshTaskListener implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final ListenableFutureTask f12136c;

        public RefreshTaskListener(ListenableFutureTask listenableFutureTask) {
            this.f12136c = listenableFutureTask;
        }

        @Override // java.lang.Runnable
        public final void run() {
            OAuth2Credentials oAuth2Credentials = OAuth2Credentials.this;
            ListenableFutureTask listenableFutureTask = this.f12136c;
            synchronized (oAuth2Credentials.g) {
                try {
                    try {
                        oAuth2Credentials.h = (OAuthValue) Futures.b(listenableFutureTask);
                        throw null;
                    } finally {
                    }
                } catch (Exception unused) {
                    RefreshTask refreshTask = oAuth2Credentials.i;
                    if (refreshTask != null && refreshTask.l == listenableFutureTask) {
                        oAuth2Credentials.i = null;
                    }
                } catch (Throwable th) {
                    RefreshTask refreshTask2 = oAuth2Credentials.i;
                    if (refreshTask2 != null && refreshTask2.l == listenableFutureTask) {
                        oAuth2Credentials.i = null;
                    }
                    throw th;
                }
            }
        }
    }

    public OAuth2Credentials(AccessToken accessToken, Duration duration, Duration duration2) {
        this.h = null;
        if (accessToken != null) {
            this.h = OAuthValue.a(accessToken, m);
        }
        Preconditions.h(duration, "refreshMargin");
        this.f = duration;
        Preconditions.e(!duration.isNegative(), "refreshMargin can't be negative");
        Preconditions.h(duration2, "expirationMargin");
        this.f12128c = duration2;
        Preconditions.e(!duration2.isNegative(), "expirationMargin can't be negative");
    }

    public static Object f(Object obj) {
        Iterator it = ServiceLoader.load(HttpTransportFactory.class).iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return obj;
    }

    public static Object j(ListenableFuture listenableFuture) {
        try {
            return listenableFuture.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IOException("Interrupted while asynchronously refreshing the access token", e);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof IOException)) {
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new IOException("Unexpected error refreshing access token", cause);
            }
            throw ((IOException) cause);
        }
    }

    @Override // com.google.auth.Credentials
    public Map a(URI uri) {
        return ((OAuthValue) j(c(MoreExecutors.a()))).f;
    }

    @Override // com.google.auth.Credentials
    public final void b() {
        AsyncRefreshResult g = g();
        RefreshTask refreshTask = g.f12130a;
        Executor a2 = MoreExecutors.a();
        if (g.b) {
            a2.execute(refreshTask);
        }
        j(refreshTask);
    }

    public final ListenableFuture c(Executor executor) {
        AsyncRefreshResult asyncRefreshResult;
        CacheState h = h();
        CacheState cacheState = CacheState.f12133c;
        if (h == cacheState) {
            return Futures.d(this.h);
        }
        synchronized (this.g) {
            try {
                if (h() != cacheState) {
                    asyncRefreshResult = g();
                } else {
                    asyncRefreshResult = null;
                }
            } finally {
            }
        }
        if (asyncRefreshResult != null && asyncRefreshResult.b) {
            executor.execute(asyncRefreshResult.f12130a);
        }
        synchronized (this.g) {
            try {
                if (h() != CacheState.g) {
                    return Futures.d(this.h);
                }
                if (asyncRefreshResult != null) {
                    return asyncRefreshResult.f12130a;
                }
                return Futures.c(new IllegalStateException("Credentials expired, but there is no task to refresh"));
            } finally {
            }
        }
    }

    public final AccessToken d() {
        OAuthValue oAuthValue = this.h;
        if (oAuthValue != null) {
            return oAuthValue.f12134c;
        }
        return null;
    }

    public Map e() {
        return m;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof OAuth2Credentials)) {
            return false;
        }
        return Objects.equals(this.h, ((OAuth2Credentials) obj).h);
    }

    public final AsyncRefreshResult g() {
        synchronized (this.g) {
            try {
                RefreshTask refreshTask = this.i;
                if (refreshTask != null) {
                    return new AsyncRefreshResult(refreshTask, false);
                }
                ListenableFutureTask listenableFutureTask = new ListenableFutureTask(new Callable<OAuthValue>() { // from class: com.google.auth.oauth2.OAuth2Credentials.1
                    @Override // java.util.concurrent.Callable
                    public final OAuthValue call() {
                        OAuth2Credentials oAuth2Credentials = OAuth2Credentials.this;
                        return OAuthValue.a(oAuth2Credentials.i(), oAuth2Credentials.e());
                    }
                });
                RefreshTask refreshTask2 = new RefreshTask(listenableFutureTask, new RefreshTaskListener(listenableFutureTask));
                this.i = refreshTask2;
                return new AsyncRefreshResult(refreshTask2, true);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final CacheState h() {
        Date date;
        CacheState cacheState = CacheState.f12133c;
        CacheState cacheState2 = CacheState.g;
        OAuthValue oAuthValue = this.h;
        if (oAuthValue != null) {
            Long l2 = oAuthValue.f12134c.f;
            if (l2 == null) {
                date = null;
            } else {
                date = new Date(l2.longValue());
            }
            if (date != null) {
                Duration ofMillis = Duration.ofMillis(date.getTime() - this.j.currentTimeMillis());
                if (ofMillis.compareTo(this.f12128c) > 0) {
                    if (ofMillis.compareTo(this.f) <= 0) {
                        return CacheState.f;
                    }
                    return cacheState;
                }
            } else {
                return cacheState;
            }
        }
        return cacheState2;
    }

    public int hashCode() {
        return Objects.hashCode(this.h);
    }

    public AccessToken i() {
        throw new IllegalStateException("OAuth2Credentials instance does not support refreshing the access token. An instance with a new access token should be used, or a derived type that supports refreshing.");
    }

    public String toString() {
        Map map;
        AccessToken accessToken;
        OAuthValue oAuthValue = this.h;
        if (oAuthValue != null) {
            map = oAuthValue.f;
            accessToken = oAuthValue.f12134c;
        } else {
            map = null;
            accessToken = null;
        }
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(map, "requestMetadata");
        b.b(accessToken, "temporaryAccess");
        return b.toString();
    }
}
