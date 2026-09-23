package com.google.android.gms.cast.framework;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.cast.zzbq;
import com.google.android.gms.internal.cast.zzbx;
import com.google.android.gms.internal.cast.zzce;
import com.google.android.gms.internal.cast.zzek;
import com.google.android.gms.internal.cast.zzwt;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import j$.util.DesugarCollections;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public class CastContext {
    public static final Logger l = new Logger("CastContext", null);
    public static final Object m = new Object();
    public static volatile CastContext n;

    /* renamed from: a, reason: collision with root package name */
    public final Context f3465a;
    public final zzah b;

    /* renamed from: c, reason: collision with root package name */
    public final SessionManager f3466c;
    public final zzaa d;
    public final CastOptions e;
    public final com.google.android.gms.cast.internal.zzn f;
    public final com.google.android.gms.internal.cast.zzax g;
    public final zzbq h;
    public final List i;
    public final zzce j;
    public final com.google.android.gms.internal.cast.zzba k;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v6, types: [com.google.android.gms.tasks.OnSuccessListener, java.lang.Object] */
    public CastContext(Context context, CastOptions castOptions, List list, zzbx zzbxVar, com.google.android.gms.cast.internal.zzn zznVar) {
        this.f3465a = context;
        this.e = castOptions;
        this.f = zznVar;
        this.i = list;
        this.h = new zzbq(context);
        this.j = zzbxVar.h;
        if (!TextUtils.isEmpty(castOptions.f3467c)) {
            this.k = new com.google.android.gms.internal.cast.zzba(context, castOptions, zzbxVar);
        } else {
            this.k = null;
        }
        HashMap hashMap = new HashMap();
        com.google.android.gms.internal.cast.zzba zzbaVar = this.k;
        if (zzbaVar != null) {
            hashMap.put(zzbaVar.b, zzbaVar.f3479c);
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SessionProvider sessionProvider = (SessionProvider) it.next();
                Preconditions.checkNotNull(sessionProvider, "Additional SessionProvider must not be null.");
                String checkNotEmpty = Preconditions.checkNotEmpty(sessionProvider.b, "Category for SessionProvider must not be null or empty string.");
                Preconditions.checkArgument(!hashMap.containsKey(checkNotEmpty), "SessionProvider for category " + checkNotEmpty + " already added");
                hashMap.put(checkNotEmpty, sessionProvider.f3479c);
            }
        }
        castOptions.t = new zzl(1);
        try {
            zzah u3 = com.google.android.gms.internal.cast.zzay.a(context).u3(new ObjectWrapper(context.getApplicationContext()), castOptions, zzbxVar, hashMap);
            this.b = u3;
            try {
                this.d = new zzaa(u3.zzh());
                try {
                    SessionManager sessionManager = new SessionManager(u3.zzg(), context);
                    this.f3466c = sessionManager;
                    new Logger("PrecacheManager", null);
                    zzce zzceVar = this.j;
                    if (zzceVar != null) {
                        zzceVar.a(sessionManager);
                    }
                    zzek zzekVar = new zzek(context, zzwt.a(Executors.newFixedThreadPool(3)));
                    new Logger("BaseNetUtils", null);
                    zzekVar.a();
                    com.google.android.gms.internal.cast.zzax zzaxVar = new com.google.android.gms.internal.cast.zzax();
                    this.g = zzaxVar;
                    try {
                        u3.g4(zzaxVar);
                        zzaxVar.f9624c.add(this.h.f9637a);
                        if (!DesugarCollections.unmodifiableList(castOptions.p).isEmpty()) {
                            String concat = "Setting Route Discovery for appIds: ".concat(String.valueOf(DesugarCollections.unmodifiableList(this.e.p)));
                            Logger logger = l;
                            Log.i(logger.f3604a, logger.d(concat, new Object[0]));
                            this.h.r(DesugarCollections.unmodifiableList(this.e.p));
                        }
                        zznVar.g(new String[]{"com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE", "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE", "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE", "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_CLIENT_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_ANALYTICS_CONSENT_TIMEOUT_SECONDS"}).g(new OnSuccessListener() { // from class: com.google.android.gms.cast.framework.zzg
                            @Override // com.google.android.gms.tasks.OnSuccessListener
                            public final void onSuccess(Object obj) {
                                Bundle bundle = (Bundle) obj;
                                if (!com.google.android.gms.internal.cast.zzj.m) {
                                    return;
                                }
                                CastContext castContext = CastContext.this;
                                new com.google.android.gms.internal.cast.zzj(castContext.f3465a, castContext.f, castContext.f3466c, castContext.j, castContext.g).a(bundle);
                            }
                        });
                        zznVar.i(new String[]{"com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"}).g(new Object());
                    } catch (RemoteException e) {
                        throw new IllegalStateException("Failed to call addAppVisibilityListener", e);
                    }
                } catch (RemoteException e2) {
                    throw new IllegalStateException("Failed to call getSessionManagerImpl", e2);
                }
            } catch (RemoteException e3) {
                throw new IllegalStateException("Failed to call getDiscoveryManagerImpl", e3);
            }
        } catch (RemoteException e4) {
            throw new IllegalStateException("Failed to call newCastContextImpl", e4);
        }
    }

    public static CastContext e(Context context) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (n == null) {
            synchronized (m) {
                if (n == null) {
                    Context applicationContext = context.getApplicationContext();
                    OptionsProvider i = i(applicationContext);
                    CastOptions castOptions = i.getCastOptions(applicationContext);
                    com.google.android.gms.cast.internal.zzn zznVar = new com.google.android.gms.cast.internal.zzn(applicationContext);
                    try {
                        n = new CastContext(applicationContext, castOptions, i.getAdditionalSessionProviders(applicationContext), new zzbx(applicationContext, MediaRouter.h(applicationContext), castOptions, zznVar), zznVar);
                    } catch (ModuleUnavailableException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }
        return n;
    }

    public static Task f(Context context, ExecutorService executorService) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (n == null) {
            final Context applicationContext = context.getApplicationContext();
            final OptionsProvider i = i(applicationContext);
            final CastOptions castOptions = i.getCastOptions(applicationContext);
            final com.google.android.gms.cast.internal.zzn zznVar = new com.google.android.gms.cast.internal.zzn(applicationContext);
            final zzbx zzbxVar = new zzbx(applicationContext, MediaRouter.h(applicationContext), castOptions, zznVar);
            return Tasks.b(new Callable() { // from class: com.google.android.gms.cast.framework.zzi
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    Context context2 = applicationContext;
                    CastOptions castOptions2 = castOptions;
                    OptionsProvider optionsProvider = i;
                    zzbx zzbxVar2 = zzbxVar;
                    com.google.android.gms.cast.internal.zzn zznVar2 = zznVar;
                    synchronized (CastContext.m) {
                        try {
                            if (CastContext.n == null) {
                                CastContext.n = new CastContext(context2, castOptions2, optionsProvider.getAdditionalSessionProviders(context2), zzbxVar2, zznVar2);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return CastContext.n;
                }
            }, executorService);
        }
        return Tasks.e(n);
    }

    public static CastContext h(Context context) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return e(context);
        } catch (RuntimeException e) {
            Object[] objArr = {e};
            Logger logger = l;
            Log.e(logger.f3604a, logger.d("Failed to load module from Google Play services. Cast will not work properly. Might due to outdated Google Play services. Ignoring this failure silently.", objArr));
            return null;
        }
    }

    public static OptionsProvider i(Context context) {
        try {
            Bundle bundle = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), Uuid.SIZE_BITS).metaData;
            if (bundle == null) {
                l.c(new Object[0]);
            }
            String string = bundle.getString("com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME");
            if (string != null) {
                return (OptionsProvider) Class.forName(string).asSubclass(OptionsProvider.class).getDeclaredConstructor(null).newInstance(null);
            }
            throw new IllegalStateException("The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME.");
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | NullPointerException | InvocationTargetException e) {
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        }
    }

    public final void a(CastStateListener castStateListener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(castStateListener);
        SessionManager sessionManager = this.f3466c;
        sessionManager.getClass();
        Preconditions.checkNotNull(castStateListener);
        try {
            sessionManager.f3477a.t2(new zzz(castStateListener));
        } catch (RemoteException e) {
            SessionManager.f3476c.a(e, "Unable to call %s on %s.", "addCastStateListener", "zzaw");
        }
    }

    public final int b() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        SessionManager sessionManager = this.f3466c;
        sessionManager.getClass();
        try {
            return sessionManager.f3477a.zzl();
        } catch (RemoteException e) {
            SessionManager.f3476c.a(e, "Unable to call %s on %s.", "addCastStateListener", "zzaw");
            return 1;
        }
    }

    public final MediaRouteSelector c() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return MediaRouteSelector.b(this.b.zze());
        } catch (RemoteException e) {
            l.a(e, "Unable to call %s on %s.", "getMergedSelectorAsBundle", "zzah");
            return null;
        }
    }

    public final SessionManager d() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.f3466c;
    }

    public final void g(CastStateListener castStateListener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (castStateListener == null) {
            return;
        }
        SessionManager sessionManager = this.f3466c;
        sessionManager.getClass();
        try {
            sessionManager.f3477a.Z2(new zzz(castStateListener));
        } catch (RemoteException e) {
            SessionManager.f3476c.a(e, "Unable to call %s on %s.", "removeCastStateListener", "zzaw");
        }
    }
}
