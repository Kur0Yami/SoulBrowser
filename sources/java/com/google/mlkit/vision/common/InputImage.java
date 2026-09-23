package com.google.mlkit.vision.common;

import android.graphics.Bitmap;
import android.os.SystemClock;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_common.zzii;
import com.google.android.gms.internal.mlkit_vision_common.zzio;
import com.google.android.gms.internal.mlkit_vision_common.zziq;
import com.google.android.gms.internal.mlkit_vision_common.zziv;
import com.google.android.gms.internal.mlkit_vision_common.zzmj;
import com.google.android.gms.internal.mlkit_vision_common.zzmk;
import com.google.android.gms.internal.mlkit_vision_common.zzms;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.MLTaskInput;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.Immutable;
import kotlin.jvm.internal.LongCompanionObject;

@Immutable
/* loaded from: classes3.dex */
public class InputImage implements MLTaskInput {

    /* renamed from: a, reason: collision with root package name */
    public volatile Bitmap f12808a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12809c;
    public final int d;

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3.dex */
    public @interface ImageFormat {
    }

    public InputImage(Bitmap bitmap) {
        this.f12808a = (Bitmap) Preconditions.checkNotNull(bitmap);
        this.b = bitmap.getWidth();
        this.f12809c = bitmap.getHeight();
        Preconditions.checkArgument(true, "Invalid rotation. Only 0, 90, 180, 270 are supported currently.");
        this.d = -1;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_vision_common.zzin, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_common.zziw] */
    public static InputImage a(Bitmap bitmap) {
        InputImage inputImage;
        int i;
        final String version;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        InputImage inputImage2 = new InputImage(bitmap);
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        int allocationByteCount = bitmap.getAllocationByteCount();
        final zzmj b = zzms.b();
        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
        Task task = b.e;
        long elapsedRealtime3 = SystemClock.elapsedRealtime();
        HashMap hashMap = b.i;
        final zziv zzivVar = zziv.INPUT_IMAGE_CONSTRUCTION;
        if (hashMap.get(zzivVar) == null) {
            inputImage = inputImage2;
            i = allocationByteCount;
        } else {
            inputImage = inputImage2;
            i = allocationByteCount;
            if (elapsedRealtime3 - ((Long) hashMap.get(zzivVar)).longValue() <= TimeUnit.SECONDS.toMillis(30L)) {
                return inputImage;
            }
        }
        hashMap.put(zzivVar, Long.valueOf(elapsedRealtime3));
        ?? obj = new Object();
        obj.f11082c = zzii.BITMAP;
        obj.b = zzio.BITMAP;
        obj.d = Integer.valueOf(i & Integer.MAX_VALUE);
        obj.f = Integer.valueOf(height & Integer.MAX_VALUE);
        obj.e = Integer.valueOf(Integer.MAX_VALUE & width);
        obj.f11081a = Long.valueOf(LongCompanionObject.MAX_VALUE & elapsedRealtime2);
        obj.g = 0;
        zziq zziqVar = new zziq(obj);
        ?? obj2 = new Object();
        obj2.f11088c = zziqVar;
        final zzmk zzmkVar = new zzmk(obj2);
        if (task.p()) {
            version = (String) task.m();
        } else {
            version = LibraryVersion.getInstance().getVersion(b.g);
        }
        MLTaskExecutor.c().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzmi
            /* JADX WARN: Removed duplicated region for block: B:10:0x003b A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_common.zzky] */
            /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.gms.internal.mlkit_vision_common.zzm, java.lang.Object, com.google.android.gms.internal.mlkit_vision_common.zzj] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    r10 = this;
                    com.google.android.gms.internal.mlkit_vision_common.zzmj r0 = com.google.android.gms.internal.mlkit_vision_common.zzmj.this
                    com.google.android.gms.internal.mlkit_vision_common.zzmk r1 = r2
                    com.google.android.gms.internal.mlkit_vision_common.zziv r2 = r3
                    java.lang.String r3 = r4
                    com.google.android.gms.internal.mlkit_vision_common.zziw r4 = r1.f11109a
                    r4.b = r2
                    com.google.android.gms.internal.mlkit_vision_common.zziy r2 = new com.google.android.gms.internal.mlkit_vision_common.zziy
                    r2.<init>(r4)
                    com.google.android.gms.internal.mlkit_vision_common.zzla r2 = r2.f11089a
                    if (r2 == 0) goto L29
                    java.lang.String r2 = r2.d
                    int r4 = com.google.android.gms.internal.mlkit_vision_common.zze.f10992a
                    if (r2 == 0) goto L29
                    boolean r4 = r2.isEmpty()
                    if (r4 == 0) goto L22
                    goto L29
                L22:
                    java.lang.Object r2 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r2)
                    java.lang.String r2 = (java.lang.String) r2
                    goto L2b
                L29:
                    java.lang.String r2 = "NA"
                L2b:
                    com.google.android.gms.internal.mlkit_vision_common.zzky r4 = new com.google.android.gms.internal.mlkit_vision_common.zzky
                    r4.<init>()
                    java.lang.String r5 = r0.f11107a
                    r4.f11093a = r5
                    java.lang.String r5 = r0.b
                    r4.b = r5
                    java.lang.Class<com.google.android.gms.internal.mlkit_vision_common.zzmj> r5 = com.google.android.gms.internal.mlkit_vision_common.zzmj.class
                    monitor-enter(r5)
                    com.google.android.gms.internal.mlkit_vision_common.zzp r6 = com.google.android.gms.internal.mlkit_vision_common.zzmj.j     // Catch: java.lang.Throwable -> L6e
                    if (r6 == 0) goto L41
                    monitor-exit(r5)
                    goto L7e
                L41:
                    android.content.res.Resources r6 = android.content.res.Resources.getSystem()     // Catch: java.lang.Throwable -> L6e
                    android.content.res.Configuration r6 = r6.getConfiguration()     // Catch: java.lang.Throwable -> L6e
                    androidx.core.os.LocaleListCompat r6 = androidx.core.os.ConfigurationCompat.a(r6)     // Catch: java.lang.Throwable -> L6e
                    com.google.android.gms.internal.mlkit_vision_common.zzm r7 = new com.google.android.gms.internal.mlkit_vision_common.zzm     // Catch: java.lang.Throwable -> L6e
                    r7.<init>()     // Catch: java.lang.Throwable -> L6e
                    r8 = 4
                    java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch: java.lang.Throwable -> L6e
                    r7.f11091a = r8     // Catch: java.lang.Throwable -> L6e
                    r8 = 0
                    r7.b = r8     // Catch: java.lang.Throwable -> L6e
                L5a:
                    int r9 = r6.e()     // Catch: java.lang.Throwable -> L6e
                    if (r8 >= r9) goto L70
                    java.util.Locale r9 = r6.c(r8)     // Catch: java.lang.Throwable -> L6e
                    java.lang.String r9 = com.google.mlkit.common.sdkinternal.CommonUtils.b(r9)     // Catch: java.lang.Throwable -> L6e
                    r7.a(r9)     // Catch: java.lang.Throwable -> L6e
                    int r8 = r8 + 1
                    goto L5a
                L6e:
                    r0 = move-exception
                    goto Lb9
                L70:
                    r6 = 1
                    r7.f11092c = r6     // Catch: java.lang.Throwable -> L6e
                    java.lang.Object[] r6 = r7.f11091a     // Catch: java.lang.Throwable -> L6e
                    int r7 = r7.b     // Catch: java.lang.Throwable -> L6e
                    com.google.android.gms.internal.mlkit_vision_common.zzp r6 = com.google.android.gms.internal.mlkit_vision_common.zzp.p(r7, r6)     // Catch: java.lang.Throwable -> L6e
                    com.google.android.gms.internal.mlkit_vision_common.zzmj.j = r6     // Catch: java.lang.Throwable -> L6e
                    monitor-exit(r5)
                L7e:
                    r4.e = r6
                    java.lang.Boolean r5 = java.lang.Boolean.TRUE
                    r4.h = r5
                    r4.d = r2
                    r4.f11094c = r3
                    com.google.android.gms.tasks.Task r2 = r0.f
                    boolean r2 = r2.p()
                    if (r2 == 0) goto L99
                    com.google.android.gms.tasks.Task r2 = r0.f
                    java.lang.Object r2 = r2.m()
                    java.lang.String r2 = (java.lang.String) r2
                    goto L9f
                L99:
                    com.google.mlkit.common.sdkinternal.SharedPrefManager r2 = r0.d
                    java.lang.String r2 = r2.a()
                L9f:
                    r4.f = r2
                    r2 = 10
                    java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                    r4.j = r2
                    int r2 = r0.h
                    java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                    r4.k = r2
                    r1.b = r4
                    com.google.android.gms.internal.mlkit_vision_common.zzmf r0 = r0.f11108c
                    r0.a(r1)
                    return
                Lb9:
                    monitor-exit(r5)     // Catch: java.lang.Throwable -> L6e
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_common.zzmi.run():void");
            }
        });
        return inputImage;
    }
}
