package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads_identifier.zze;
import com.google.android.gms.internal.ads_identifier.zzf;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;

@KeepForSdk
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public class AdvertisingIdClient {

    /* renamed from: a, reason: collision with root package name */
    public BlockingServiceConnection f2970a;
    public zzf b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2971c;
    public final Object d;
    public zzb e;
    public final Context f;
    public final long g;

    @KeepForSdkWithMembers
    /* loaded from: classes.dex */
    public static final class Info {

        /* renamed from: a, reason: collision with root package name */
        public final String f2972a;
        public final boolean b;

        @Deprecated
        public Info(@Nullable String str, boolean z) {
            this.f2972a = str;
            this.b = z;
        }

        @Nullable
        public String getId() {
            return this.f2972a;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.b;
        }

        @NonNull
        public String toString() {
            String str = this.f2972a;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(this.b);
            return sb.toString();
        }
    }

    @KeepForSdk
    public AdvertisingIdClient(@NonNull Context context) {
        this(context, 30000L, false, false);
    }

    public static void b(Info info, long j, Throwable th) {
        if (Math.random() <= 0.0d) {
            HashMap hashMap = new HashMap();
            String str = "1";
            hashMap.put("app_context", "1");
            if (info != null) {
                if (true != info.isLimitAdTrackingEnabled()) {
                    str = "0";
                }
                hashMap.put("limit_ad_tracking", str);
                String id = info.getId();
                if (id != null) {
                    hashMap.put("ad_id_size", Integer.toString(id.length()));
                }
            }
            if (th != null) {
                hashMap.put("error", th.getClass().getName());
            }
            hashMap.put("tag", "AdvertisingIdClient");
            hashMap.put("time_spent", Long.toString(j));
            new zza(hashMap).start();
        }
    }

    @NonNull
    @KeepForSdk
    public static Info getAdvertisingIdInfo(@NonNull Context context) {
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, true, false);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.a(false);
            Info c2 = advertisingIdClient.c();
            b(c2, SystemClock.elapsedRealtime() - elapsedRealtime, null);
            return c2;
        } finally {
        }
    }

    @KeepForSdk
    public static boolean getIsAdIdFakeForDebugLogging(@NonNull Context context) {
        boolean zzd;
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, false, false);
        try {
            advertisingIdClient.a(false);
            Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
            synchronized (advertisingIdClient) {
                try {
                    if (!advertisingIdClient.f2971c) {
                        synchronized (advertisingIdClient.d) {
                            zzb zzbVar = advertisingIdClient.e;
                            if (zzbVar == null || !zzbVar.h) {
                                throw new IOException("AdvertisingIdClient is not connected.");
                            }
                        }
                        try {
                            advertisingIdClient.a(false);
                            if (!advertisingIdClient.f2971c) {
                                throw new IOException("AdvertisingIdClient cannot reconnect.");
                            }
                        } catch (Exception e) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                        }
                    }
                    Preconditions.checkNotNull(advertisingIdClient.f2970a);
                    Preconditions.checkNotNull(advertisingIdClient.b);
                    try {
                        zzd = advertisingIdClient.b.zzd();
                    } catch (RemoteException e2) {
                        Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                        throw new IOException("Remote exception");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            advertisingIdClient.d();
            advertisingIdClient.zza();
            return zzd;
        } catch (Throwable th2) {
            advertisingIdClient.zza();
            throw th2;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.google.android.gms.internal.ads_identifier.zzf] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    public final void a(boolean z) {
        ?? zzaVar;
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f2971c) {
                    zza();
                }
                Context context = this.f;
                try {
                    context.getPackageManager().getPackageInfo("com.android.vending", 0);
                    int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                    if (isGooglePlayServicesAvailable != 0 && isGooglePlayServicesAvailable != 2) {
                        throw new IOException("Google Play services not available");
                    }
                    BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (ConnectionTracker.getInstance().bindService(context, intent, blockingServiceConnection, 1)) {
                            this.f2970a = blockingServiceConnection;
                            try {
                                IBinder serviceWithTimeout = blockingServiceConnection.getServiceWithTimeout(10000L, TimeUnit.MILLISECONDS);
                                int i = zze.f9427c;
                                if (serviceWithTimeout == null) {
                                    zzaVar = 0;
                                } else {
                                    IInterface queryLocalInterface = serviceWithTimeout.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                                    if (queryLocalInterface instanceof zzf) {
                                        zzaVar = (zzf) queryLocalInterface;
                                    } else {
                                        zzaVar = new com.google.android.gms.internal.ads_identifier.zza(serviceWithTimeout);
                                    }
                                }
                                this.b = zzaVar;
                                this.f2971c = true;
                                if (z) {
                                    d();
                                }
                            } catch (InterruptedException unused) {
                                throw new IOException("Interrupted exception");
                            } catch (Throwable th) {
                                throw new IOException(th);
                            }
                        } else {
                            throw new IOException("Connection failure");
                        }
                    } finally {
                        IOException iOException = new IOException(th);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    throw new GooglePlayServicesNotAvailableException(9);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final Info c() {
        Info info;
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (!this.f2971c) {
                    synchronized (this.d) {
                        zzb zzbVar = this.e;
                        if (zzbVar == null || !zzbVar.h) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        a(false);
                        if (!this.f2971c) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                    } catch (Exception e) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                    }
                }
                Preconditions.checkNotNull(this.f2970a);
                Preconditions.checkNotNull(this.b);
                try {
                    info = new Info(this.b.zzc(), this.b.zze());
                } catch (RemoteException e2) {
                    Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                    throw new IOException("Remote exception");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        d();
        return info;
    }

    public final void d() {
        synchronized (this.d) {
            zzb zzbVar = this.e;
            if (zzbVar != null) {
                zzbVar.g.countDown();
                try {
                    this.e.join();
                } catch (InterruptedException unused) {
                }
            }
            long j = this.g;
            if (j > 0) {
                this.e = new zzb(this, j);
            }
        }
    }

    public final void finalize() {
        zza();
        super.finalize();
    }

    @NonNull
    @KeepForSdk
    public Info getInfo() {
        return c();
    }

    @KeepForSdk
    public void start() {
        a(true);
    }

    public final void zza() {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f != null && this.f2970a != null) {
                    try {
                        if (this.f2971c) {
                            ConnectionTracker.getInstance().unbindService(this.f, this.f2970a);
                        }
                    } catch (Throwable th) {
                        Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
                    }
                    this.f2971c = false;
                    this.b = null;
                    this.f2970a = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @VisibleForTesting
    public AdvertisingIdClient(@NonNull Context context, long j, boolean z, boolean z2) {
        Context applicationContext;
        this.d = new Object();
        Preconditions.checkNotNull(context);
        if (z && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f = context;
        this.f2971c = false;
        this.g = j;
    }
}
