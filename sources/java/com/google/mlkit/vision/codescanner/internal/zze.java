package com.google.mlkit.vision.codescanner.internal;

import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.moduleinstall.ModuleInstall;
import com.google.android.gms.internal.mlkit_code_scanner.zzix;
import com.google.android.gms.internal.mlkit_code_scanner.zzka;
import com.google.android.gms.internal.mlkit_code_scanner.zzkb;
import com.google.android.gms.internal.mlkit_code_scanner.zzny;
import com.google.android.gms.internal.mlkit_code_scanner.zzoa;
import com.google.android.gms.internal.mlkit_code_scanner.zzob;
import com.google.android.gms.internal.mlkit_code_scanner.zzoj;
import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.api.client.http.HttpStatusCodes;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.vision.barcode.common.Barcode;
import com.google.mlkit.vision.codescanner.GmsBarcodeScanner;
import com.google.mlkit.vision.codescanner.GmsBarcodeScannerOptions;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes3.dex */
public final class zze implements GmsBarcodeScanner {
    public static final AtomicReference i = new AtomicReference();
    public static final Object j = new Object();
    public static boolean k;

    /* renamed from: c, reason: collision with root package name */
    public final Context f12806c;
    public final GmsBarcodeScannerOptions f;
    public final zzny g;
    public final zzoa h;

    public zze(Context context, GmsBarcodeScannerOptions gmsBarcodeScannerOptions) {
        zzoa zzoaVar = new zzoa(context);
        this.g = zzoj.b();
        this.f12806c = context;
        this.f = gmsBarcodeScannerOptions;
        this.h = zzoaVar;
    }

    public static void c(Barcode barcode, int i2) {
        Pair pair = (Pair) i.getAndSet(null);
        if (pair != null) {
            if (barcode != null) {
                ((TaskCompletionSource) pair.first).b(barcode);
                return;
            } else if (i2 == 201) {
                ((CancellationTokenSource) pair.second).a();
                return;
            } else {
                ((TaskCompletionSource) pair.first).a(new MlKitException("Failed to scan code.", i2));
                return;
            }
        }
        Log.e("GmsBarcodeScannerImpl", "Scanning task source doesn't exist when setting back result.");
    }

    public final Task a() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.getInstance();
        Context context = this.f12806c;
        if (googleApiAvailabilityLight.getApkVersion(context) < 221500000) {
            b(SystemClock.elapsedRealtime(), System.currentTimeMillis(), 207);
            return Tasks.d(new MlKitException("Code scanner module is not supported on current Google Play Services version, please upgrade.", 207));
        }
        return ModuleInstall.getClient(context).areModulesAvailable(zzc.f12804c).q(new SuccessContinuation() { // from class: com.google.mlkit.vision.codescanner.internal.zzd
            /* JADX WARN: Removed duplicated region for block: B:8:0x0033  */
            @Override // com.google.android.gms.tasks.SuccessContinuation
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final com.google.android.gms.tasks.Task then(java.lang.Object r11) {
                /*
                    r10 = this;
                    com.google.mlkit.vision.codescanner.internal.zze r0 = com.google.mlkit.vision.codescanner.internal.zze.this
                    com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse r11 = (com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse) r11
                    boolean r11 = r11.areModulesAvailable()
                    r1 = 0
                    r2 = 1
                    if (r11 == 0) goto L2f
                    android.content.Context r11 = r0.f12806c
                    android.content.Context r11 = r11.getApplicationContext()
                    android.content.pm.PackageManager r11 = r11.getPackageManager()
                    android.content.Intent r3 = new android.content.Intent
                    r3.<init>()
                    java.lang.String r4 = "com.google.android.gms"
                    android.content.Intent r3 = r3.setPackage(r4)
                    java.lang.String r4 = "com.google.android.gms.mlkit.ACTION_SCAN_BARCODE"
                    android.content.Intent r3 = r3.setAction(r4)
                    android.content.ComponentName r11 = r3.resolveActivity(r11)
                    if (r11 == 0) goto L2f
                    r11 = r2
                    goto L30
                L2f:
                    r11 = r1
                L30:
                    java.lang.Object r6 = com.google.mlkit.vision.codescanner.internal.zze.j
                    monitor-enter(r6)
                    r3 = r1
                    r4 = r2
                    long r1 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L4f
                    r5 = r3
                    r7 = r4
                    long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L4f
                    if (r11 != 0) goto L67
                    boolean r11 = com.google.mlkit.vision.codescanner.internal.zze.k     // Catch: java.lang.Throwable -> L4f
                    if (r11 != 0) goto L53
                    android.content.Context r11 = r0.f12806c     // Catch: java.lang.Throwable -> L4f
                    java.lang.String r5 = "barcode_ui"
                    com.google.mlkit.common.sdkinternal.OptionalModuleUtils.a(r11, r5)     // Catch: java.lang.Throwable -> L4f
                    com.google.mlkit.vision.codescanner.internal.zze.k = r7     // Catch: java.lang.Throwable -> L4f
                    goto L53
                L4f:
                    r0 = move-exception
                    r11 = r0
                    goto Lcc
                L53:
                    r5 = 200(0xc8, float:2.8E-43)
                    r0.b(r1, r3, r5)     // Catch: java.lang.Throwable -> L4f
                    com.google.mlkit.common.MlKitException r11 = new com.google.mlkit.common.MlKitException     // Catch: java.lang.Throwable -> L4f
                    java.lang.String r0 = "Waiting for the Barcode UI module to be downloaded."
                    r1 = 200(0xc8, float:2.8E-43)
                    r11.<init>(r0, r1)     // Catch: java.lang.Throwable -> L4f
                    com.google.android.gms.tasks.Task r11 = com.google.android.gms.tasks.Tasks.d(r11)     // Catch: java.lang.Throwable -> L4f
                    monitor-exit(r6)     // Catch: java.lang.Throwable -> L4f
                    return r11
                L67:
                    java.util.concurrent.atomic.AtomicReference r11 = com.google.mlkit.vision.codescanner.internal.zze.i     // Catch: java.lang.Throwable -> L4f
                    r7 = 0
                    java.lang.Object r7 = r11.getAndSet(r7)     // Catch: java.lang.Throwable -> L4f
                    android.util.Pair r7 = (android.util.Pair) r7     // Catch: java.lang.Throwable -> L4f
                    if (r7 == 0) goto L79
                    java.lang.Object r7 = r7.second     // Catch: java.lang.Throwable -> L4f
                    com.google.android.gms.tasks.CancellationTokenSource r7 = (com.google.android.gms.tasks.CancellationTokenSource) r7     // Catch: java.lang.Throwable -> L4f
                    r7.a()     // Catch: java.lang.Throwable -> L4f
                L79:
                    com.google.android.gms.tasks.CancellationTokenSource r7 = new com.google.android.gms.tasks.CancellationTokenSource     // Catch: java.lang.Throwable -> L4f
                    r7.<init>()     // Catch: java.lang.Throwable -> L4f
                    com.google.android.gms.tasks.TaskCompletionSource r8 = new com.google.android.gms.tasks.TaskCompletionSource     // Catch: java.lang.Throwable -> L4f
                    com.google.android.gms.tasks.zzb r9 = r7.f11603a     // Catch: java.lang.Throwable -> L4f
                    r8.<init>(r9)     // Catch: java.lang.Throwable -> L4f
                    android.util.Pair r9 = new android.util.Pair     // Catch: java.lang.Throwable -> L4f
                    r9.<init>(r8, r7)     // Catch: java.lang.Throwable -> L4f
                    r11.set(r9)     // Catch: java.lang.Throwable -> L4f
                    android.content.Intent r11 = new android.content.Intent     // Catch: java.lang.Throwable -> L4f
                    android.content.Context r7 = r0.f12806c     // Catch: java.lang.Throwable -> L4f
                    java.lang.Class<com.google.mlkit.vision.codescanner.internal.GmsBarcodeScanningDelegateActivity> r9 = com.google.mlkit.vision.codescanner.internal.GmsBarcodeScanningDelegateActivity.class
                    r11.<init>(r7, r9)     // Catch: java.lang.Throwable -> L4f
                    java.lang.String r7 = "extra_supported_formats"
                    com.google.mlkit.vision.codescanner.GmsBarcodeScannerOptions r9 = r0.f     // Catch: java.lang.Throwable -> L4f
                    r9.getClass()     // Catch: java.lang.Throwable -> L4f
                    r11.putExtra(r7, r5)     // Catch: java.lang.Throwable -> L4f
                    java.lang.String r7 = "extra_allow_manual_input"
                    com.google.mlkit.vision.codescanner.GmsBarcodeScannerOptions r9 = r0.f     // Catch: java.lang.Throwable -> L4f
                    r9.getClass()     // Catch: java.lang.Throwable -> L4f
                    r11.putExtra(r7, r5)     // Catch: java.lang.Throwable -> L4f
                    java.lang.String r5 = "extra_enable_auto_zoom"
                    com.google.mlkit.vision.codescanner.GmsBarcodeScannerOptions r7 = r0.f     // Catch: java.lang.Throwable -> L4f
                    boolean r7 = r7.f12800a     // Catch: java.lang.Throwable -> L4f
                    r11.putExtra(r5, r7)     // Catch: java.lang.Throwable -> L4f
                    r5 = 268435456(0x10000000, float:2.524355E-29)
                    r11.setFlags(r5)     // Catch: java.lang.Throwable -> L4f
                    android.content.Context r5 = r0.f12806c     // Catch: java.lang.Throwable -> L4f
                    r5.startActivity(r11)     // Catch: java.lang.Throwable -> L4f
                    com.google.android.gms.tasks.zzw r11 = r8.f11605a     // Catch: java.lang.Throwable -> L4f
                    r4 = r3
                    r2 = r1
                    r1 = r0
                    com.google.mlkit.vision.codescanner.internal.zzb r0 = new com.google.mlkit.vision.codescanner.internal.zzb     // Catch: java.lang.Throwable -> L4f
                    r0.<init>()     // Catch: java.lang.Throwable -> L4f
                    r11.c(r0)     // Catch: java.lang.Throwable -> L4f
                    monitor-exit(r6)     // Catch: java.lang.Throwable -> L4f
                    return r11
                Lcc:
                    monitor-exit(r6)     // Catch: java.lang.Throwable -> L4f
                    throw r11
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.vision.codescanner.internal.zzd.then(java.lang.Object):com.google.android.gms.tasks.Task");
            }
        });
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.mlkit_code_scanner.zzkc, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.android.gms.internal.mlkit_code_scanner.zziv, java.lang.Object] */
    public final void b(long j2, long j3, int i2) {
        zzka zzkaVar;
        final String version;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long currentTimeMillis = System.currentTimeMillis();
        final zzny zznyVar = this.g;
        ?? obj = new Object();
        ?? obj2 = new Object();
        this.f.getClass();
        obj2.f10599a = 0;
        this.f.getClass();
        obj2.d = Boolean.FALSE;
        obj2.b = Long.valueOf((elapsedRealtime - j2) & LongCompanionObject.MAX_VALUE);
        if (i2 != 0) {
            if (i2 != 207) {
                switch (i2) {
                    case HttpStatusCodes.STATUS_CODE_OK /* 200 */:
                        zzkaVar = zzka.CODE_SCANNER_UNAVAILABLE;
                        break;
                    case HttpStatusCodes.STATUS_CODE_CREATED /* 201 */:
                        zzkaVar = zzka.CODE_SCANNER_CANCELLED;
                        break;
                    case HttpStatusCodes.STATUS_CODE_ACCEPTED /* 202 */:
                        zzkaVar = zzka.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED;
                        break;
                    case 203:
                        zzkaVar = zzka.CODE_SCANNER_APP_NAME_UNAVAILABLE;
                        break;
                    case HttpStatusCodes.STATUS_CODE_NO_CONTENT /* 204 */:
                        zzkaVar = zzka.CODE_SCANNER_TASK_IN_PROGRESS;
                        break;
                    case 205:
                        zzkaVar = zzka.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR;
                        break;
                    default:
                        zzkaVar = zzka.UNKNOWN_ERROR;
                        break;
                }
            } else {
                zzkaVar = zzka.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD;
            }
        } else {
            zzkaVar = zzka.NO_ERROR;
        }
        obj2.f10600c = zzkaVar;
        obj.f10608c = new zzix(obj2);
        final zzob zzobVar = new zzob(obj);
        zzkb zzkbVar = zzkb.UNKNOWN_EVENT;
        Task task = zznyVar.e;
        if (task.p()) {
            version = (String) task.m();
        } else {
            version = LibraryVersion.getInstance().getVersion(zznyVar.g);
        }
        MLTaskExecutor.c().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_code_scanner.zznx
            {
                zzkb zzkbVar2 = zzkb.UNKNOWN_EVENT;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.internal.mlkit_code_scanner.zzmq, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.gms.internal.mlkit_code_scanner.zzj, java.lang.Object, com.google.android.gms.internal.mlkit_code_scanner.zzm] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    r10 = this;
                    com.google.android.gms.internal.mlkit_code_scanner.zzny r0 = r2
                    com.google.android.gms.internal.mlkit_code_scanner.zzob r1 = r3
                    com.google.android.gms.internal.mlkit_code_scanner.zzkb r2 = com.google.android.gms.internal.mlkit_code_scanner.zzkb.CODE_SCANNER_SCAN_API
                    java.lang.String r3 = r4
                    r0.getClass()
                    com.google.android.gms.internal.mlkit_code_scanner.zzkc r4 = r1.f10628a
                    r4.b = r2
                    com.google.android.gms.internal.mlkit_code_scanner.zzke r2 = new com.google.android.gms.internal.mlkit_code_scanner.zzke
                    r2.<init>(r4)
                    com.google.android.gms.internal.mlkit_code_scanner.zzms r2 = r2.f10609a
                    if (r2 == 0) goto L2c
                    java.lang.String r2 = r2.d
                    int r4 = com.google.android.gms.internal.mlkit_code_scanner.zze.f10484a
                    if (r2 == 0) goto L2c
                    boolean r4 = r2.isEmpty()
                    if (r4 == 0) goto L25
                    goto L2c
                L25:
                    java.lang.Object r2 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r2)
                    java.lang.String r2 = (java.lang.String) r2
                    goto L2e
                L2c:
                    java.lang.String r2 = "NA"
                L2e:
                    com.google.android.gms.internal.mlkit_code_scanner.zzmq r4 = new com.google.android.gms.internal.mlkit_code_scanner.zzmq
                    r4.<init>()
                    java.lang.String r5 = r0.f10624a
                    r4.f10612a = r5
                    java.lang.String r5 = r0.b
                    r4.b = r5
                    java.lang.Class<com.google.android.gms.internal.mlkit_code_scanner.zzny> r5 = com.google.android.gms.internal.mlkit_code_scanner.zzny.class
                    monitor-enter(r5)
                    com.google.android.gms.internal.mlkit_code_scanner.zzp r6 = com.google.android.gms.internal.mlkit_code_scanner.zzny.i     // Catch: java.lang.Throwable -> L71
                    if (r6 == 0) goto L44
                    monitor-exit(r5)
                    goto L8a
                L44:
                    android.content.res.Resources r6 = android.content.res.Resources.getSystem()     // Catch: java.lang.Throwable -> L71
                    android.content.res.Configuration r6 = r6.getConfiguration()     // Catch: java.lang.Throwable -> L71
                    androidx.core.os.LocaleListCompat r6 = androidx.core.os.ConfigurationCompat.a(r6)     // Catch: java.lang.Throwable -> L71
                    com.google.android.gms.internal.mlkit_code_scanner.zzm r7 = new com.google.android.gms.internal.mlkit_code_scanner.zzm     // Catch: java.lang.Throwable -> L71
                    r7.<init>()     // Catch: java.lang.Throwable -> L71
                    r8 = 4
                    java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch: java.lang.Throwable -> L71
                    r7.f10603a = r8     // Catch: java.lang.Throwable -> L71
                    r8 = 0
                    r7.b = r8     // Catch: java.lang.Throwable -> L71
                L5d:
                    int r9 = r6.e()     // Catch: java.lang.Throwable -> L71
                    if (r8 >= r9) goto L73
                    java.util.Locale r9 = r6.c(r8)     // Catch: java.lang.Throwable -> L71
                    java.lang.String r9 = com.google.mlkit.common.sdkinternal.CommonUtils.b(r9)     // Catch: java.lang.Throwable -> L71
                    r7.a(r9)     // Catch: java.lang.Throwable -> L71
                    int r8 = r8 + 1
                    goto L5d
                L71:
                    r0 = move-exception
                    goto Lc5
                L73:
                    r6 = 1
                    r7.f10604c = r6     // Catch: java.lang.Throwable -> L71
                    java.lang.Object[] r6 = r7.f10603a     // Catch: java.lang.Throwable -> L71
                    int r7 = r7.b     // Catch: java.lang.Throwable -> L71
                    com.google.android.gms.internal.mlkit_code_scanner.zzab r8 = com.google.android.gms.internal.mlkit_code_scanner.zzp.f     // Catch: java.lang.Throwable -> L71
                    if (r7 != 0) goto L81
                    com.google.android.gms.internal.mlkit_code_scanner.zzp r6 = com.google.android.gms.internal.mlkit_code_scanner.zzt.i     // Catch: java.lang.Throwable -> L71
                    goto L87
                L81:
                    com.google.android.gms.internal.mlkit_code_scanner.zzt r8 = new com.google.android.gms.internal.mlkit_code_scanner.zzt     // Catch: java.lang.Throwable -> L71
                    r8.<init>(r6, r7)     // Catch: java.lang.Throwable -> L71
                    r6 = r8
                L87:
                    com.google.android.gms.internal.mlkit_code_scanner.zzny.i = r6     // Catch: java.lang.Throwable -> L71
                    monitor-exit(r5)
                L8a:
                    r4.e = r6
                    java.lang.Boolean r5 = java.lang.Boolean.TRUE
                    r4.h = r5
                    r4.d = r2
                    r4.f10613c = r3
                    com.google.android.gms.tasks.Task r2 = r0.f
                    boolean r2 = r2.p()
                    if (r2 == 0) goto La5
                    com.google.android.gms.tasks.Task r2 = r0.f
                    java.lang.Object r2 = r2.m()
                    java.lang.String r2 = (java.lang.String) r2
                    goto Lab
                La5:
                    com.google.mlkit.common.sdkinternal.SharedPrefManager r2 = r0.d
                    java.lang.String r2 = r2.a()
                Lab:
                    r4.f = r2
                    r2 = 10
                    java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                    r4.j = r2
                    int r2 = r0.h
                    java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                    r4.k = r2
                    r1.b = r4
                    com.google.android.gms.internal.mlkit_code_scanner.zznu r0 = r0.f10625c
                    r0.a(r1)
                    return
                Lc5:
                    monitor-exit(r5)     // Catch: java.lang.Throwable -> L71
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_code_scanner.zznx.run():void");
            }
        });
        final zzoa zzoaVar = this.h;
        synchronized (zzoaVar) {
            final long elapsedRealtime2 = SystemClock.elapsedRealtime();
            if (zzoaVar.b.get() != -1 && elapsedRealtime2 - zzoaVar.b.get() <= TimeUnit.MINUTES.toMillis(30L)) {
                return;
            }
            zzoaVar.f10627a.log(new TelemetryData(0, Arrays.asList(new MethodInvocation(24323, i2, 0, j3, currentTimeMillis, null, null, 0)))).e(new OnFailureListener() { // from class: com.google.android.gms.internal.mlkit_code_scanner.zznz
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void c(Exception exc) {
                    zzoa.this.b.set(elapsedRealtime2);
                }
            });
        }
    }

    @Override // com.google.android.gms.common.api.OptionalModuleApi
    public final Feature[] getOptionalFeatures() {
        return new Feature[]{OptionalModuleUtils.i};
    }
}
