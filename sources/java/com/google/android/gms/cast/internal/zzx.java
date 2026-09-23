package com.google.android.gms.cast.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.gms.internal.cast.zzff;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class zzx extends GmsClient {
    public static final Logger B = new Logger("CastClientImpl", null);
    public static final Object C = new Object();
    public static final Object D = new Object();
    public zzae A;

    /* renamed from: c, reason: collision with root package name */
    public ApplicationMetadata f3635c;
    public final CastDevice f;
    public final Cast.Listener g;
    public final HashMap h;
    public final long i;
    public final Bundle j;
    public zzw k;
    public String l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public double q;
    public com.google.android.gms.cast.zzao r;
    public int s;
    public int t;
    public final AtomicLong u;
    public String v;
    public String w;
    public Bundle x;
    public final HashMap y;
    public BaseImplementation.ResultHolder z;

    public zzx(Context context, Looper looper, ClientSettings clientSettings, CastDevice castDevice, long j, Cast.Listener listener, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 10, clientSettings, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
        this.f = castDevice;
        this.g = listener;
        this.i = j;
        this.j = bundle;
        this.h = new HashMap();
        this.u = new AtomicLong(0L);
        this.y = new HashMap();
        this.p = false;
        this.s = -1;
        this.t = -1;
        this.f3635c = null;
        this.l = null;
        this.q = 0.0d;
        e();
        this.m = false;
        this.r = null;
        e();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
        if (queryLocalInterface instanceof zzah) {
            return (zzah) queryLocalInterface;
        }
        return new zzah(iBinder);
    }

    public final boolean d() {
        zzw zzwVar;
        if (this.p && (zzwVar = this.k) != null && zzwVar.f3634c.get() != null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        Object[] objArr = {this.k, Boolean.valueOf(isConnected())};
        Logger logger = B;
        logger.b("disconnect(); ServiceListener=%s, isConnected=%b", objArr);
        zzw zzwVar = this.k;
        zzx zzxVar = null;
        this.k = null;
        if (zzwVar != null) {
            zzx zzxVar2 = (zzx) zzwVar.f3634c.getAndSet(null);
            if (zzxVar2 != null) {
                zzxVar2.p = false;
                zzxVar2.s = -1;
                zzxVar2.t = -1;
                zzxVar2.f3635c = null;
                zzxVar2.l = null;
                zzxVar2.q = 0.0d;
                zzxVar2.e();
                zzxVar2.m = false;
                zzxVar2.r = null;
                zzxVar = zzxVar2;
            }
            if (zzxVar != null) {
                i();
                try {
                    try {
                        zzah zzahVar = (zzah) getService();
                        ApiMetadata a2 = zzff.a(getContext());
                        Parcel I1 = zzahVar.I1();
                        com.google.android.gms.internal.cast.zzc.b(I1, a2);
                        zzahVar.v2(1, I1);
                    } finally {
                        super.disconnect();
                    }
                } catch (RemoteException | IllegalStateException e) {
                    logger.a(e, "Error while disconnecting the controller interface", new Object[0]);
                }
                return;
            }
        }
        logger.b("already disposed, so short-circuiting", new Object[0]);
    }

    public final void e() {
        CastDevice castDevice = this.f;
        Preconditions.checkNotNull(castDevice, "device should not be null");
        zzp zzpVar = castDevice.m;
        if (!zzpVar.a(2048) && zzpVar.a(4) && !zzpVar.a(1)) {
            "Chromecast Audio".equals(castDevice.i);
        }
    }

    public final void f(int i) {
        synchronized (C) {
            try {
                BaseImplementation.ResultHolder resultHolder = this.z;
                if (resultHolder != null) {
                    resultHolder.setResult(new zzr(new Status(i), null, null, null, false));
                    this.z = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g(BaseImplementation.ResultHolder resultHolder) {
        synchronized (C) {
            try {
                BaseImplementation.ResultHolder resultHolder2 = this.z;
                if (resultHolder2 != null) {
                    resultHolder2.setResult(new zzr(new Status(2477), null, null, null, false));
                }
                this.z = resultHolder;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getConnectionHint() {
        Bundle bundle = this.x;
        if (bundle != null) {
            this.x = null;
            return bundle;
        }
        return super.getConnectionHint();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getGetServiceRequestExtraArgs() {
        Bundle bundle = new Bundle();
        B.b("getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s", this.v, this.w);
        CastDevice castDevice = this.f;
        castDevice.getClass();
        bundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", castDevice);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.i);
        Bundle bundle2 = this.j;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        this.k = new zzw(this);
        bundle.putParcelable(ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, new BinderWrapper(this.k));
        String str = this.v;
        if (str != null) {
            bundle.putString("last_application_id", str);
            String str2 = this.w;
            if (str2 != null) {
                bundle.putString("last_session_id", str2);
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 12800000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    public final void h(zzae zzaeVar) {
        synchronized (D) {
            try {
                if (this.A != null) {
                    zzaeVar.setResult((zzae) new Status(2001));
                } else {
                    this.A = zzaeVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i() {
        B.b("removing all MessageReceivedCallbacks", new Object[0]);
        HashMap hashMap = this.h;
        synchronized (hashMap) {
            hashMap.clear();
        }
    }

    public final void j(int i, long j) {
        BaseImplementation.ResultHolder resultHolder;
        HashMap hashMap = this.y;
        synchronized (hashMap) {
            resultHolder = (BaseImplementation.ResultHolder) hashMap.remove(Long.valueOf(j));
        }
        if (resultHolder != null) {
            resultHolder.setResult(new Status(i));
        }
    }

    public final void k(int i) {
        synchronized (D) {
            try {
                zzae zzaeVar = this.A;
                if (zzaeVar != null) {
                    zzaeVar.setResult((zzae) new Status(i));
                    this.A = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void l(String str, String str2, BaseImplementation.ResultHolder resultHolder) {
        HashMap hashMap = this.y;
        if (!TextUtils.isEmpty(str2)) {
            if (str2.length() <= 524288) {
                CastUtils.b(str);
                long incrementAndGet = this.u.incrementAndGet();
                try {
                    hashMap.put(Long.valueOf(incrementAndGet), resultHolder);
                    zzah zzahVar = (zzah) getService();
                    if (d()) {
                        ApiMetadata a2 = zzff.a(getContext());
                        Parcel I1 = zzahVar.I1();
                        I1.writeString(str);
                        I1.writeString(str2);
                        I1.writeLong(incrementAndGet);
                        com.google.android.gms.internal.cast.zzc.b(I1, a2);
                        zzahVar.v2(9, I1);
                        return;
                    }
                    j(2016, incrementAndGet);
                    return;
                } catch (Throwable th) {
                    hashMap.remove(Long.valueOf(incrementAndGet));
                    throw th;
                }
            }
            Logger logger = B;
            Log.w(logger.f3604a, logger.d("Message send failed. Message exceeds maximum size", new Object[0]));
            throw new IllegalArgumentException("Message exceeds maximum size");
        }
        throw new IllegalArgumentException("The message payload cannot be null or empty");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void m(LaunchOptions launchOptions, BaseImplementation.ResultHolder resultHolder) {
        g(resultHolder);
        zzah zzahVar = (zzah) getService();
        if (d()) {
            ApiMetadata a2 = zzff.a(getContext());
            Parcel I1 = zzahVar.I1();
            I1.writeString(null);
            com.google.android.gms.internal.cast.zzc.b(I1, launchOptions);
            com.google.android.gms.internal.cast.zzc.b(I1, a2);
            zzahVar.v2(13, I1);
            return;
        }
        f(2016);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void n(String str, zzae zzaeVar) {
        h(zzaeVar);
        zzah zzahVar = (zzah) getService();
        if (d()) {
            ApiMetadata a2 = zzff.a(getContext());
            Parcel I1 = zzahVar.I1();
            I1.writeString(str);
            com.google.android.gms.internal.cast.zzc.b(I1, a2);
            zzahVar.v2(5, I1);
            return;
        }
        k(2016);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        i();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        B.b("in onPostInitHandler; statusCode=%d", Integer.valueOf(i));
        if (i != 0 && i != 2300) {
            this.p = false;
        } else {
            this.p = true;
            this.n = true;
            this.o = true;
        }
        if (i == 2300) {
            Bundle bundle2 = new Bundle();
            this.x = bundle2;
            bundle2.putBoolean("com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING", true);
            i = 0;
        }
        super.onPostInitHandler(i, iBinder, bundle, i2);
    }
}
