package com.google.android.gms.cast;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzff;
import com.google.android.gms.internal.cast.zzfk;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

@SuppressLint({"UseSparseArrays"})
/* loaded from: classes.dex */
public final class zzbm extends GoogleApi implements zzq {
    public static final Logger w = new Logger("CastClient", null);
    public static final Api x = new Api("Cast.API_CXLESS", new Api.AbstractClientBuilder(), com.google.android.gms.cast.internal.zzal.b);

    /* renamed from: a, reason: collision with root package name */
    public final zzbl f3665a;
    public zzfk b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3666c;
    public boolean d;
    public TaskCompletionSource e;
    public TaskCompletionSource f;
    public final AtomicLong g;
    public final Object h;
    public final Object i;
    public ApplicationMetadata j;
    public String k;
    public double l;
    public boolean m;
    public int n;
    public int o;
    public zzao p;
    public final CastDevice q;
    public final HashMap r;
    public final HashMap s;
    public final Cast.Listener t;
    public final List u;
    public int v;

    public zzbm(Context context, Cast.CastOptions castOptions) {
        super(context, (Api<Cast.CastOptions>) x, castOptions, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.f3665a = new zzbl(this);
        this.h = new Object();
        this.i = new Object();
        this.u = DesugarCollections.synchronizedList(new ArrayList());
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(castOptions, "CastOptions cannot be null");
        this.t = castOptions.f;
        this.q = castOptions.f3429c;
        this.r = new HashMap();
        this.s = new HashMap();
        this.g = new AtomicLong(0L);
        this.v = 1;
        s();
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task a(final String str) {
        final Cast.MessageReceivedCallback messageReceivedCallback;
        if (!TextUtils.isEmpty(str)) {
            HashMap hashMap = this.s;
            synchronized (hashMap) {
                messageReceivedCallback = (Cast.MessageReceivedCallback) hashMap.remove(str);
            }
            return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzat
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                    com.google.android.gms.cast.internal.zzy zzyVar = (com.google.android.gms.cast.internal.zzy) obj;
                    boolean z = true;
                    if (this.v == 1) {
                        z = false;
                    }
                    Preconditions.checkState(z, "Not active connection");
                    if (messageReceivedCallback != null) {
                        com.google.android.gms.cast.internal.zzah zzahVar = (com.google.android.gms.cast.internal.zzah) zzyVar.getService();
                        ApiMetadata a2 = zzff.a(zzyVar.getContext());
                        Parcel I1 = zzahVar.I1();
                        I1.writeString(str);
                        com.google.android.gms.internal.cast.zzc.b(I1, a2);
                        zzahVar.v2(12, I1);
                    }
                    taskCompletionSource.b(null);
                }
            }).setMethodKey(8414).build());
        }
        throw new IllegalArgumentException("Channel namespace cannot be null or empty");
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task d(final String str, final String str2) {
        CastUtils.b(str);
        if (!TextUtils.isEmpty(str2)) {
            if (str2.length() <= 524288) {
                return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzaw
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.google.android.gms.common.api.internal.RemoteCall
                    public final void accept(Object obj, Object obj2) {
                        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                        String str3 = str;
                        String str4 = str2;
                        com.google.android.gms.cast.internal.zzy zzyVar = (com.google.android.gms.cast.internal.zzy) obj;
                        zzbm zzbmVar = zzbm.this;
                        HashMap hashMap = zzbmVar.r;
                        long incrementAndGet = zzbmVar.g.incrementAndGet();
                        Preconditions.checkState(zzbmVar.k(), "Not connected to device");
                        try {
                            hashMap.put(Long.valueOf(incrementAndGet), taskCompletionSource);
                            ApiMetadata a2 = zzff.a(zzyVar.getContext());
                            com.google.android.gms.cast.internal.zzah zzahVar = (com.google.android.gms.cast.internal.zzah) zzyVar.getService();
                            Parcel I1 = zzahVar.I1();
                            I1.writeString(str3);
                            I1.writeString(str4);
                            I1.writeLong(incrementAndGet);
                            com.google.android.gms.internal.cast.zzc.b(I1, a2);
                            zzahVar.v2(9, I1);
                        } catch (RemoteException e) {
                            hashMap.remove(Long.valueOf(incrementAndGet));
                            taskCompletionSource.a(e);
                        }
                    }
                }).setMethodKey(8405).build());
            }
            Logger logger = w;
            Log.w(logger.f3604a, logger.d("Message send failed. Message exceeds maximum size", new Object[0]));
            throw new IllegalArgumentException("Message exceeds maximum size524288");
        }
        throw new IllegalArgumentException("The message payload cannot be null or empty");
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task e(final String str, final RemoteMediaClient remoteMediaClient) {
        CastUtils.b(str);
        if (remoteMediaClient != null) {
            HashMap hashMap = this.s;
            synchronized (hashMap) {
                hashMap.put(str, remoteMediaClient);
            }
        }
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzbc
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                com.google.android.gms.cast.internal.zzy zzyVar = (com.google.android.gms.cast.internal.zzy) obj;
                boolean z = true;
                if (this.v == 1) {
                    z = false;
                }
                Preconditions.checkState(z, "Not active connection");
                ApiMetadata a2 = zzff.a(zzyVar.getContext());
                com.google.android.gms.cast.internal.zzah zzahVar = (com.google.android.gms.cast.internal.zzah) zzyVar.getService();
                Parcel I1 = zzahVar.I1();
                String str2 = str;
                I1.writeString(str2);
                com.google.android.gms.internal.cast.zzc.b(I1, a2);
                zzahVar.v2(12, I1);
                if (remoteMediaClient != null) {
                    com.google.android.gms.cast.internal.zzah zzahVar2 = (com.google.android.gms.cast.internal.zzah) zzyVar.getService();
                    Parcel I12 = zzahVar2.I1();
                    I12.writeString(str2);
                    com.google.android.gms.internal.cast.zzc.b(I12, a2);
                    zzahVar2.v2(11, I12);
                }
                taskCompletionSource.b(null);
            }
        }).setMethodKey(8413).build());
    }

    public final void g(int i) {
        synchronized (this.i) {
            try {
                TaskCompletionSource taskCompletionSource = this.f;
                if (taskCompletionSource == null) {
                    return;
                }
                if (i == 0) {
                    taskCompletionSource.b(new Status(0));
                } else {
                    taskCompletionSource.a(ApiExceptionUtil.fromStatus(new Status(i)));
                }
                this.f = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h(int i, long j) {
        TaskCompletionSource taskCompletionSource;
        HashMap hashMap = this.r;
        synchronized (hashMap) {
            Long valueOf = Long.valueOf(j);
            taskCompletionSource = (TaskCompletionSource) hashMap.get(valueOf);
            hashMap.remove(valueOf);
        }
        if (taskCompletionSource != null) {
            if (i == 0) {
                taskCompletionSource.b(null);
            } else {
                taskCompletionSource.a(ApiExceptionUtil.fromStatus(new Status(i)));
            }
        }
    }

    public final /* synthetic */ Handler i() {
        if (this.b == null) {
            this.b = new zzfk(getLooper());
        }
        return this.b;
    }

    public final void j() {
        w.b("removing all MessageReceivedCallbacks", new Object[0]);
        HashMap hashMap = this.s;
        synchronized (hashMap) {
            hashMap.clear();
        }
    }

    public final boolean k() {
        return this.v == 3;
    }

    public final void l(int i) {
        synchronized (this.h) {
            try {
                TaskCompletionSource taskCompletionSource = this.e;
                if (taskCompletionSource != null) {
                    taskCompletionSource.a(ApiExceptionUtil.fromStatus(new Status(i)));
                }
                this.e = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Task m() {
        ListenerHolder registerListener = registerListener(this.f3665a, "castDeviceControllerListenerKey");
        RegistrationMethods.Builder builder = RegistrationMethods.builder();
        RemoteCall remoteCall = new RemoteCall() { // from class: com.google.android.gms.cast.zzbd
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                com.google.android.gms.cast.internal.zzy zzyVar = (com.google.android.gms.cast.internal.zzy) obj;
                com.google.android.gms.cast.internal.zzah zzahVar = (com.google.android.gms.cast.internal.zzah) zzyVar.getService();
                ApiMetadata a2 = zzff.a(zzyVar.getContext());
                zzbl zzblVar = zzbm.this.f3665a;
                Parcel I1 = zzahVar.I1();
                com.google.android.gms.internal.cast.zzc.c(I1, zzblVar);
                com.google.android.gms.internal.cast.zzc.b(I1, a2);
                zzahVar.v2(18, I1);
                com.google.android.gms.cast.internal.zzah zzahVar2 = (com.google.android.gms.cast.internal.zzah) zzyVar.getService();
                ApiMetadata a3 = zzff.a(zzyVar.getContext());
                Parcel I12 = zzahVar2.I1();
                com.google.android.gms.internal.cast.zzc.b(I12, a3);
                zzahVar2.v2(17, I12);
                ((TaskCompletionSource) obj2).b(null);
            }
        };
        this.v = 2;
        return doRegisterEventListener(builder.withHolder(registerListener).register(remoteCall).unregister(zzas.f3642a).setFeatures(zzaq.f3640a).setMethodKey(8428).build());
    }

    public final Task n() {
        Task doWrite = doWrite(TaskApiCall.builder().run(zzau.f3645a).setMethodKey(8403).build());
        j();
        doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(registerListener(this.f3665a, "castDeviceControllerListenerKey").getListenerKey(), "Key must not be null"), 8415);
        return doWrite;
    }

    public final Task o(final String str, final LaunchOptions launchOptions) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzax
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                zzbm zzbmVar = zzbm.this;
                String str2 = str;
                LaunchOptions launchOptions2 = launchOptions;
                com.google.android.gms.cast.internal.zzy zzyVar = (com.google.android.gms.cast.internal.zzy) obj;
                Preconditions.checkState(zzbmVar.k(), "Not connected to device");
                com.google.android.gms.cast.internal.zzah zzahVar = (com.google.android.gms.cast.internal.zzah) zzyVar.getService();
                ApiMetadata a2 = zzff.a(zzyVar.getContext());
                Parcel I1 = zzahVar.I1();
                I1.writeString(str2);
                com.google.android.gms.internal.cast.zzc.b(I1, launchOptions2);
                com.google.android.gms.internal.cast.zzc.b(I1, a2);
                zzahVar.v2(13, I1);
                synchronized (zzbmVar.h) {
                    try {
                        if (zzbmVar.e != null) {
                            zzbmVar.l(2477);
                        }
                        zzbmVar.e = taskCompletionSource;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }).setMethodKey(8406).build());
    }

    public final Task p(final String str) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzaz
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                zzbm zzbmVar = zzbm.this;
                String str2 = str;
                com.google.android.gms.cast.internal.zzy zzyVar = (com.google.android.gms.cast.internal.zzy) obj;
                Preconditions.checkState(zzbmVar.k(), "Not connected to device");
                com.google.android.gms.cast.internal.zzah zzahVar = (com.google.android.gms.cast.internal.zzah) zzyVar.getService();
                ApiMetadata a2 = zzff.a(zzyVar.getContext());
                Parcel I1 = zzahVar.I1();
                I1.writeString(str2);
                com.google.android.gms.internal.cast.zzc.b(I1, a2);
                zzahVar.v2(5, I1);
                synchronized (zzbmVar.i) {
                    try {
                        if (zzbmVar.f != null) {
                            taskCompletionSource.a(ApiExceptionUtil.fromStatus(new Status(2001)));
                        } else {
                            zzbmVar.f = taskCompletionSource;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }).setMethodKey(8409).build());
    }

    public final Task q(final boolean z) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzbb
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                com.google.android.gms.cast.internal.zzy zzyVar = (com.google.android.gms.cast.internal.zzy) obj;
                zzbm zzbmVar = zzbm.this;
                zzbmVar.getClass();
                com.google.android.gms.cast.internal.zzah zzahVar = (com.google.android.gms.cast.internal.zzah) zzyVar.getService();
                double d = zzbmVar.l;
                boolean z2 = zzbmVar.m;
                ApiMetadata a2 = zzff.a(zzyVar.getContext());
                Parcel I1 = zzahVar.I1();
                int i = com.google.android.gms.internal.cast.zzc.f9645a;
                I1.writeInt(z ? 1 : 0);
                I1.writeDouble(d);
                I1.writeInt(z2 ? 1 : 0);
                com.google.android.gms.internal.cast.zzc.b(I1, a2);
                zzahVar.v2(8, I1);
                ((TaskCompletionSource) obj2).b(null);
            }
        }).setMethodKey(8412).build());
    }

    public final Task r(final String str, final String str2) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzay
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                com.google.android.gms.cast.internal.zzy zzyVar = (com.google.android.gms.cast.internal.zzy) obj;
                zzbm zzbmVar = zzbm.this;
                String str3 = str;
                String str4 = str2;
                Preconditions.checkState(zzbmVar.k(), "Not connected to device");
                com.google.android.gms.cast.internal.zzah zzahVar = (com.google.android.gms.cast.internal.zzah) zzyVar.getService();
                ApiMetadata a2 = zzff.a(zzyVar.getContext());
                Parcel I1 = zzahVar.I1();
                I1.writeString(str3);
                I1.writeString(str4);
                com.google.android.gms.internal.cast.zzc.b(I1, null);
                com.google.android.gms.internal.cast.zzc.b(I1, a2);
                zzahVar.v2(14, I1);
                synchronized (zzbmVar.h) {
                    try {
                        if (zzbmVar.e != null) {
                            zzbmVar.l(2477);
                        }
                        zzbmVar.e = taskCompletionSource;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }).setMethodKey(8407).build());
    }

    public final void s() {
        CastDevice castDevice = this.q;
        com.google.android.gms.cast.internal.zzp zzpVar = castDevice.m;
        if (!zzpVar.a(2048) && zzpVar.a(4) && !zzpVar.a(1)) {
            "Chromecast Audio".equals(castDevice.i);
        }
    }
}
