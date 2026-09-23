package com.google.android.gms.internal.cast;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcel;
import androidx.annotation.MainThread;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.HashSet;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@ShowFirstParty
@MainThread
/* loaded from: classes.dex */
public final class zzj {
    public static final Logger l = new Logger("ClientCastAnalytics", null);
    public static boolean m = true;

    /* renamed from: a, reason: collision with root package name */
    public final Context f9735a;
    public final com.google.android.gms.cast.internal.zzn b;

    /* renamed from: c, reason: collision with root package name */
    public final SessionManager f9736c;
    public final zzce d;
    public final zzax e;
    public Long g;
    public Transport i;
    public zzcn j;
    public int k = 1;
    public final String f = UUID.randomUUID().toString();
    public final ExecutorService h = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());

    public zzj(Context context, com.google.android.gms.cast.internal.zzn zznVar, SessionManager sessionManager, zzce zzceVar, zzax zzaxVar) {
        this.f9735a = context;
        this.b = zznVar;
        this.f9736c = sessionManager;
        this.d = zzceVar;
        this.e = zzaxVar;
    }

    public final void a(Bundle bundle) {
        final int i;
        zzr zzrVar;
        zzpm c2;
        int i2 = 1;
        if (bundle.containsKey("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE")) {
            i = bundle.getInt("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE", 0);
        } else if (bundle.containsKey("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED") && bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", false)) {
            i = 1;
        } else {
            i = 0;
        }
        boolean z = bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED", false);
        boolean z2 = bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_ANALYTICS_ENABLED", false);
        m = z2;
        if (i == 0) {
            if (z || z2) {
                i = 0;
            } else {
                return;
            }
        }
        long j = bundle.getLong("com.google.android.gms.cast.FLAG_ANALYTICS_CONSENT_TIMEOUT_SECONDS", 5L);
        Context context = this.f9735a;
        this.j = new zzcn(context, j);
        final String packageName = context.getPackageName();
        Locale locale = Locale.ROOT;
        String k = android.support.v4.media.a.k(packageName, ".client_cast_analytics_data");
        if (bundle.getLong("com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE") != 0) {
            i2 = 2;
        }
        this.k = i2;
        TransportRuntime.b(context);
        this.i = TransportRuntime.a().c(CCTDestination.e).a("CAST_SENDER_SDK", new Encoding("proto"), zzf.f9690a);
        if (bundle.containsKey("com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE")) {
            this.g = Long.valueOf(bundle.getLong("com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"));
        }
        final SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(k, 0);
        if (i != 0) {
            this.b.h(new String[]{"com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR", "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"}).g(new OnSuccessListener() { // from class: com.google.android.gms.internal.cast.zzi
                /* JADX WARN: Removed duplicated region for block: B:11:0x005e  */
                /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
                @Override // com.google.android.gms.tasks.OnSuccessListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void onSuccess(java.lang.Object r14) {
                    /*
                        r13 = this;
                        r4 = r14
                        android.os.Bundle r4 = (android.os.Bundle) r4
                        com.google.android.gms.internal.cast.zzj r2 = com.google.android.gms.internal.cast.zzj.this
                        com.google.android.gms.cast.framework.SessionManager r14 = r2.f9736c
                        com.google.android.gms.common.internal.Preconditions.checkNotNull(r14)
                        com.google.android.gms.internal.cast.zzce r6 = r2.d
                        r0 = 3
                        r7 = 0
                        r8 = 1
                        java.lang.String r9 = "Must be called from the main thread."
                        java.lang.String r10 = "register callback = %s"
                        java.lang.String r5 = r2
                        int r1 = r3
                        r3 = 2
                        if (r1 == r0) goto L1d
                        if (r1 != r3) goto L47
                        r1 = r3
                    L1d:
                        com.google.android.gms.internal.cast.zzax r0 = r2.e
                        com.google.android.gms.internal.cast.zzy r11 = new com.google.android.gms.internal.cast.zzy
                        r11.<init>(r2, r0, r5)
                        com.google.android.gms.internal.cast.zzw r0 = new com.google.android.gms.internal.cast.zzw
                        r0.<init>(r11)
                        r14.a(r0)
                        if (r6 == 0) goto L47
                        com.google.android.gms.internal.cast.zzx r0 = new com.google.android.gms.internal.cast.zzx
                        r0.<init>(r11)
                        com.google.android.gms.cast.internal.Logger r11 = com.google.android.gms.internal.cast.zzce.i
                        java.lang.Object[] r12 = new java.lang.Object[r8]
                        r12[r7] = r0
                        r11.b(r10, r12)
                        com.google.android.gms.common.internal.Preconditions.checkMainThread(r9)
                        com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
                        java.util.Set r11 = r6.b
                        r11.add(r0)
                    L47:
                        if (r1 == r8) goto L4b
                        if (r1 != r3) goto L77
                    L4b:
                        com.google.android.gms.internal.cast.zzax r3 = r2.e
                        com.google.android.gms.internal.cast.zzn r0 = new com.google.android.gms.internal.cast.zzn
                        android.content.SharedPreferences r1 = r4
                        r0.<init>(r1, r2, r3, r4, r5)
                        com.google.android.gms.internal.cast.zzl r1 = new com.google.android.gms.internal.cast.zzl
                        r1.<init>(r0)
                        r14.a(r1)
                        if (r6 == 0) goto L77
                        com.google.android.gms.internal.cast.zzm r14 = new com.google.android.gms.internal.cast.zzm
                        r14.<init>(r0)
                        com.google.android.gms.cast.internal.Logger r0 = com.google.android.gms.internal.cast.zzce.i
                        java.lang.Object[] r1 = new java.lang.Object[r8]
                        r1[r7] = r14
                        r0.b(r10, r1)
                        com.google.android.gms.common.internal.Preconditions.checkMainThread(r9)
                        com.google.android.gms.common.internal.Preconditions.checkNotNull(r14)
                        java.util.Set r0 = r6.b
                        r0.add(r14)
                    L77:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzi.onSuccess(java.lang.Object):void");
                }
            });
        }
        if (z) {
            Preconditions.checkNotNull(sharedPreferences);
            Logger logger = zzr.j;
            synchronized (zzr.class) {
                try {
                    if (zzr.l == null) {
                        zzr.l = new zzr(sharedPreferences, this, packageName);
                    }
                    zzrVar = zzr.l;
                } catch (Throwable th) {
                    throw th;
                }
            }
            String str = zzrVar.f9831c;
            SharedPreferences sharedPreferences2 = zzrVar.b;
            HashSet hashSet = zzrVar.f;
            String string = sharedPreferences2.getString("feature_usage_sdk_version", null);
            String string2 = sharedPreferences2.getString("feature_usage_package_name", null);
            hashSet.clear();
            HashSet hashSet2 = zzrVar.g;
            hashSet2.clear();
            zzrVar.i = 0L;
            String str2 = zzr.k;
            if (str2.equals(string) && str.equals(string2)) {
                zzrVar.i = sharedPreferences2.getLong("feature_usage_last_report_time", 0L);
                long currentTimeMillis = ((Clock) Preconditions.checkNotNull(zzrVar.h)).currentTimeMillis();
                HashSet hashSet3 = new HashSet();
                for (String str3 : sharedPreferences2.getAll().keySet()) {
                    if (str3.startsWith("feature_usage_timestamp_")) {
                        long j2 = sharedPreferences2.getLong(str3, 0L);
                        if (j2 != 0 && currentTimeMillis - j2 > 1209600000) {
                            hashSet3.add(str3);
                        } else if (str3.startsWith("feature_usage_timestamp_reported_feature_")) {
                            zzpm c3 = zzr.c(str3.substring(41));
                            if (c3 != null) {
                                hashSet2.add(c3);
                                hashSet.add(c3);
                            }
                        } else if (str3.startsWith("feature_usage_timestamp_detected_feature_") && (c2 = zzr.c(str3.substring(41))) != null) {
                            hashSet.add(c2);
                        }
                    }
                }
                zzrVar.b(hashSet3);
                Preconditions.checkNotNull(zzrVar.e);
                Preconditions.checkNotNull(zzrVar.d);
                zzrVar.e.post(zzrVar.d);
            } else {
                HashSet hashSet4 = new HashSet();
                for (String str4 : sharedPreferences2.getAll().keySet()) {
                    if (str4.startsWith("feature_usage_timestamp_")) {
                        hashSet4.add(str4);
                    }
                }
                hashSet4.add("feature_usage_last_report_time");
                zzrVar.b(hashSet4);
                sharedPreferences2.edit().putString("feature_usage_sdk_version", str2).putString("feature_usage_package_name", str).apply();
            }
            zzr.a(zzpm.CAST_CONTEXT);
        }
        if (m) {
            zzu.a();
        }
    }

    public final void b(final int i, final zzqr zzqrVar) {
        this.h.execute(new Runnable() { // from class: com.google.android.gms.internal.cast.zzg
            @Override // java.lang.Runnable
            public final void run() {
                com.google.android.gms.tasks.zzw zzwVar;
                final zzj zzjVar = zzj.this;
                final zzqr zzqrVar2 = zzqrVar;
                final int i2 = i;
                zzcn zzcnVar = zzjVar.j;
                if (zzcnVar == null) {
                    return;
                }
                synchronized (zzcnVar) {
                    final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                    final zzfu zzfuVar = zzcnVar.f9653a;
                    zzfuVar.getClass();
                    zzfuVar.doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.internal.cast.zzft
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // com.google.android.gms.common.api.internal.RemoteCall
                        public final void accept(Object obj, Object obj2) {
                            zzfs zzfsVar = new zzfs(zzfu.this, (TaskCompletionSource) obj2);
                            zzgh zzghVar = (zzgh) ((zzgm) obj).getService();
                            Parcel I1 = zzghVar.I1();
                            zzc.c(I1, zzfsVar);
                            zzghVar.r2(2, I1);
                        }
                    }).setMethodKey(4501).build()).g(new OnSuccessListener() { // from class: com.google.android.gms.internal.cast.zzcm
                        @Override // com.google.android.gms.tasks.OnSuccessListener
                        public final void onSuccess(Object obj) {
                            zzfv zzfvVar = (zzfv) obj;
                            Logger logger = zzcn.d;
                            boolean z = false;
                            if (zzfvVar != null) {
                                zzgc zzgcVar = ((zzgi) zzfvVar.getResult()).f;
                                Preconditions.checkNotNull(zzgcVar);
                                if (zzgcVar.f9701c == 1) {
                                    z = true;
                                }
                            }
                            TaskCompletionSource.this.d(Boolean.valueOf(z));
                        }
                    }).e(new OnFailureListener() { // from class: com.google.android.gms.internal.cast.zzck
                        @Override // com.google.android.gms.tasks.OnFailureListener
                        public final /* synthetic */ void c(Exception exc) {
                            zzcn.d.a(exc, "get checkbox consent failed", new Object[0]);
                            TaskCompletionSource.this.d(Boolean.FALSE);
                        }
                    });
                    zzcnVar.f9654c.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.cast.zzcl
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzcn.d.b("get checkbox consent timed out", new Object[0]);
                            TaskCompletionSource.this.d(Boolean.FALSE);
                        }
                    }, zzcnVar.b * 1000);
                    zzwVar = taskCompletionSource.f11605a;
                }
                zzwVar.g(new OnSuccessListener() { // from class: com.google.android.gms.internal.cast.zzh
                    @Override // com.google.android.gms.tasks.OnSuccessListener
                    public final void onSuccess(Object obj) {
                        Event f;
                        if (((Boolean) obj).booleanValue()) {
                            zzqq p = zzqr.p(zzqrVar2);
                            zzj zzjVar2 = zzj.this;
                            String str = zzjVar2.f;
                            p.c();
                            ((zzqr) p.f).s(str);
                            p.c();
                            ((zzqr) p.f).t(str);
                            Long l2 = zzjVar2.g;
                            if (l2 != null) {
                                int longValue = (int) l2.longValue();
                                p.c();
                                ((zzqr) p.f).u(longValue);
                            }
                            zzqr zzqrVar3 = (zzqr) p.e();
                            int i3 = zzjVar2.k;
                            int i4 = i3 - 1;
                            if (i3 != 0) {
                                int i5 = i2 - 1;
                                if (i4 != 0) {
                                    if (i4 != 1) {
                                        f = Event.f(i5, zzqrVar3);
                                    } else {
                                        f = Event.d(i5, zzqrVar3);
                                    }
                                } else {
                                    f = Event.f(i5, zzqrVar3);
                                }
                                zzj.l.b("analytics event: %s", f);
                                Preconditions.checkNotNull(f);
                                Transport transport = zzjVar2.i;
                                if (transport != null) {
                                    transport.a(f);
                                    return;
                                }
                                return;
                            }
                            throw null;
                        }
                    }
                });
            }
        });
    }
}
