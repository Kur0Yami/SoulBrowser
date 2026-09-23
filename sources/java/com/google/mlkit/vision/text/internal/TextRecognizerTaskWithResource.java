package com.google.mlkit.vision.text.internal;

import android.graphics.Bitmap;
import android.media.Image;
import android.os.SystemClock;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.internal.mlkit_vision_text_common.zzes;
import com.google.android.gms.internal.mlkit_vision_text_common.zzob;
import com.google.android.gms.internal.mlkit_vision_text_common.zzod;
import com.google.android.gms.internal.mlkit_vision_text_common.zzoj;
import com.google.android.gms.internal.mlkit_vision_text_common.zzot;
import com.google.android.gms.internal.mlkit_vision_text_common.zzou;
import com.google.android.gms.internal.mlkit_vision_text_common.zzov;
import com.google.android.gms.internal.mlkit_vision_text_common.zzrz;
import com.google.android.gms.internal.mlkit_vision_text_common.zzsd;
import com.google.android.gms.internal.mlkit_vision_text_common.zzub;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuc;
import com.google.android.gms.internal.mlkit_vision_text_common.zzue;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuf;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.MLTask;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.MLTaskInput;
import com.google.mlkit.common.sdkinternal.TaskQueue;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.common.internal.ImageUtils;
import com.google.mlkit.vision.text.Text;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.google.mlkit.vision.text.internal.TextRecognizerTaskWithResource;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes3.dex */
public class TextRecognizerTaskWithResource extends MLTask<Text, InputImage> {
    public static boolean i = true;
    public final zzm d;
    public final zzuc e;
    public final zzue f;
    public final TextRecognizerOptionsInterface g;
    public static final ImageUtils j = ImageUtils.f12810a;
    public static final TaskQueue h = new TaskQueue();

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextRecognizerTaskWithResource(com.google.android.gms.internal.mlkit_vision_text_common.zzuc r3, com.google.mlkit.vision.text.internal.zzm r4, com.google.mlkit.vision.text.TextRecognizerOptionsInterface r5) {
        /*
            r2 = this;
            int r0 = r5.d()
            r1 = 8
            if (r0 == r1) goto L13
            int r0 = r5.d()
            r1 = 7
            if (r0 != r1) goto L10
            goto L13
        L10:
            com.google.mlkit.common.sdkinternal.TaskQueue r0 = com.google.mlkit.vision.text.internal.TextRecognizerTaskWithResource.h
            goto L18
        L13:
            com.google.mlkit.common.sdkinternal.TaskQueue r0 = new com.google.mlkit.common.sdkinternal.TaskQueue
            r0.<init>()
        L18:
            r2.<init>(r0)
            r2.e = r3
            r2.d = r4
            com.google.mlkit.common.sdkinternal.MlKitContext r3 = com.google.mlkit.common.sdkinternal.MlKitContext.c()
            android.content.Context r3 = r3.b()
            com.google.android.gms.internal.mlkit_vision_text_common.zzue r4 = new com.google.android.gms.internal.mlkit_vision_text_common.zzue
            r4.<init>(r3)
            r2.f = r4
            r2.g = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.vision.text.internal.TextRecognizerTaskWithResource.<init>(com.google.android.gms.internal.mlkit_vision_text_common.zzuc, com.google.mlkit.vision.text.internal.zzm, com.google.mlkit.vision.text.TextRecognizerOptionsInterface):void");
    }

    @Override // com.google.mlkit.common.sdkinternal.ModelResource
    public final synchronized void b() {
        this.d.zzb();
    }

    @Override // com.google.mlkit.common.sdkinternal.ModelResource
    public final synchronized void c() {
        i = true;
        this.d.zzc();
    }

    @Override // com.google.mlkit.common.sdkinternal.MLTask
    public final Text d(MLTaskInput mLTaskInput) {
        zzou zzouVar;
        Text a2;
        InputImage inputImage = (InputImage) mLTaskInput;
        synchronized (this) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                a2 = this.d.a(inputImage);
                e(zzou.NO_ERROR, elapsedRealtime, inputImage);
                i = false;
            } catch (MlKitException e) {
                if (e.f12762c == 14) {
                    zzouVar = zzou.MODEL_NOT_DOWNLOADED;
                } else {
                    zzouVar = zzou.UNKNOWN_ERROR;
                }
                e(zzouVar, elapsedRealtime, inputImage);
                throw e;
            }
        }
        return a2;
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzeq, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzsa, java.lang.Object] */
    public final void e(final zzou zzouVar, long j2, final InputImage inputImage) {
        final long elapsedRealtime = SystemClock.elapsedRealtime() - j2;
        this.e.b(new zzub() { // from class: com.google.mlkit.vision.text.internal.zzq
            /* JADX WARN: Type inference failed for: r1v15, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzsa, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzow] */
            /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzrx, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r6v0, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzoh, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzoa] */
            @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzub
            public final zzuf zza() {
                int limit;
                zzob zzobVar;
                zzot zzotVar;
                TextRecognizerTaskWithResource textRecognizerTaskWithResource = TextRecognizerTaskWithResource.this;
                long j3 = elapsedRealtime;
                zzou zzouVar2 = zzouVar;
                InputImage inputImage2 = inputImage;
                ?? obj = new Object();
                ?? obj2 = new Object();
                obj2.f11385a = Long.valueOf(j3 & LongCompanionObject.MAX_VALUE);
                obj2.b = zzouVar2;
                obj2.f11386c = Boolean.valueOf(TextRecognizerTaskWithResource.i);
                Boolean bool = Boolean.TRUE;
                obj2.d = bool;
                obj2.e = bool;
                obj.f11400a = new zzoj(obj2);
                TextRecognizerTaskWithResource.j.getClass();
                int i2 = inputImage2.d;
                if (i2 == -1) {
                    limit = ((Bitmap) Preconditions.checkNotNull(inputImage2.f12808a)).getAllocationByteCount();
                } else if (i2 != 17 && i2 != 842094169) {
                    if (i2 != 35) {
                        limit = 0;
                    } else {
                        limit = (((Image.Plane[]) Preconditions.checkNotNull(null))[0].getBuffer().limit() * 3) / 2;
                    }
                } else {
                    limit = ((ByteBuffer) Preconditions.checkNotNull(null)).limit();
                }
                ?? obj3 = new Object();
                if (i2 != -1) {
                    if (i2 != 35) {
                        if (i2 != 842094169) {
                            if (i2 != 16) {
                                if (i2 != 17) {
                                    zzobVar = zzob.UNKNOWN_FORMAT;
                                } else {
                                    zzobVar = zzob.NV21;
                                }
                            } else {
                                zzobVar = zzob.NV16;
                            }
                        } else {
                            zzobVar = zzob.YV12;
                        }
                    } else {
                        zzobVar = zzob.YUV_420_888;
                    }
                } else {
                    zzobVar = zzob.BITMAP;
                }
                obj3.f11382a = zzobVar;
                obj3.b = Integer.valueOf(Integer.MAX_VALUE & limit);
                obj.b = new zzod(obj3);
                ?? obj4 = new Object();
                obj4.f11404a = LoggingUtils.a(textRecognizerTaskWithResource.g.d());
                obj.f11401c = new zzsd(obj4);
                zzrz zzrzVar = new zzrz(obj);
                ?? obj5 = new Object();
                if (textRecognizerTaskWithResource.g.g()) {
                    zzotVar = zzot.TYPE_THICK;
                } else {
                    zzotVar = zzot.TYPE_THIN;
                }
                obj5.f11393c = zzotVar;
                obj5.d = zzrzVar;
                return new zzuf(obj5, 0);
            }
        }, zzov.ON_DEVICE_TEXT_DETECT);
        ?? obj = new Object();
        obj.f11159a = zzouVar;
        obj.b = Boolean.valueOf(i);
        ?? obj2 = new Object();
        obj2.f11404a = LoggingUtils.a(this.g.d());
        obj.f11160c = new zzsd(obj2);
        final zzes zzesVar = new zzes(obj);
        final zzr zzrVar = new zzr(this);
        Executor c2 = MLTaskExecutor.c();
        final zzuc zzucVar = this.e;
        c2.execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_text_common.zzua
            {
                zzov zzovVar = zzov.UNKNOWN_EVENT;
            }

            /* JADX WARN: Type inference failed for: r3v4, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzal, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                zzov zzovVar = zzov.AGGREGATED_ON_DEVICE_TEXT_DETECTION;
                final zzuc zzucVar2 = zzucVar;
                HashMap hashMap = zzucVar2.j;
                if (!hashMap.containsKey(zzovVar)) {
                    zzba zzbaVar = new zzba();
                    ?? obj3 = new Object();
                    if (zzbaVar.isEmpty()) {
                        obj3.g = zzbaVar;
                        hashMap.put(zzovVar, obj3);
                    } else {
                        throw new IllegalArgumentException();
                    }
                }
                ((zzbp) hashMap.get(zzovVar)).b(zzesVar, Long.valueOf(elapsedRealtime));
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                if (!zzucVar2.d(zzovVar, elapsedRealtime2)) {
                    return;
                }
                zzucVar2.i.put(zzovVar, Long.valueOf(elapsedRealtime2));
                Executor c3 = MLTaskExecutor.c();
                final com.google.mlkit.vision.text.internal.zzr zzrVar2 = zzrVar;
                c3.execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_text_common.zztx
                    {
                        zzov zzovVar2 = zzov.UNKNOWN_EVENT;
                    }

                    /* JADX WARN: Type inference failed for: r10v19, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzow] */
                    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zznu] */
                    /* JADX WARN: Type inference failed for: r7v8, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzep, java.lang.Object] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzot zzotVar;
                        zzov zzovVar2 = zzov.AGGREGATED_ON_DEVICE_TEXT_DETECTION;
                        zzuc zzucVar3 = zzucVar2;
                        HashMap hashMap2 = zzucVar3.j;
                        zzbp zzbpVar = (zzbp) hashMap2.get(zzovVar2);
                        if (zzbpVar != null) {
                            for (Object obj4 : zzbpVar.zzo()) {
                                ArrayList arrayList = new ArrayList(zzbpVar.a(obj4));
                                Collections.sort(arrayList);
                                ?? obj5 = new Object();
                                int size = arrayList.size();
                                long j3 = 0;
                                int i2 = 0;
                                while (i2 < size) {
                                    Object obj6 = arrayList.get(i2);
                                    i2++;
                                    j3 += ((Long) obj6).longValue();
                                }
                                obj5.f11379c = Long.valueOf((j3 / arrayList.size()) & LongCompanionObject.MAX_VALUE);
                                obj5.f11378a = Long.valueOf(zzuc.a(arrayList, 100.0d) & LongCompanionObject.MAX_VALUE);
                                obj5.f = Long.valueOf(zzuc.a(arrayList, 75.0d) & LongCompanionObject.MAX_VALUE);
                                obj5.e = Long.valueOf(zzuc.a(arrayList, 50.0d) & LongCompanionObject.MAX_VALUE);
                                obj5.d = Long.valueOf(zzuc.a(arrayList, 25.0d) & LongCompanionObject.MAX_VALUE);
                                obj5.b = Long.valueOf(zzuc.a(arrayList, 0.0d) & LongCompanionObject.MAX_VALUE);
                                zznw zznwVar = new zznw(obj5);
                                int size2 = arrayList.size();
                                TextRecognizerTaskWithResource textRecognizerTaskWithResource = zzrVar2.f12832a;
                                zzes zzesVar2 = (zzes) obj4;
                                ?? obj7 = new Object();
                                if (textRecognizerTaskWithResource.g.g()) {
                                    zzotVar = zzot.TYPE_THICK;
                                } else {
                                    zzotVar = zzot.TYPE_THIN;
                                }
                                obj7.f11393c = zzotVar;
                                ?? obj8 = new Object();
                                obj8.b = Integer.valueOf(size2 & Integer.MAX_VALUE);
                                obj8.f11157a = zzesVar2;
                                obj8.f11158c = zznwVar;
                                obj7.f = new zzeu(obj8);
                                MLTaskExecutor.c().execute(new zztw(zzucVar3, new zzuf(obj7, 0), zzovVar2, zzucVar3.c()));
                            }
                            hashMap2.remove(zzovVar2);
                        }
                    }
                });
            }
        });
        long currentTimeMillis = System.currentTimeMillis();
        long j3 = currentTimeMillis - elapsedRealtime;
        final zzue zzueVar = this.f;
        int h2 = this.g.h();
        int i2 = zzouVar.f11390c;
        synchronized (zzueVar) {
            AtomicLong atomicLong = zzueVar.b;
            final long elapsedRealtime2 = SystemClock.elapsedRealtime();
            if (atomicLong.get() != -1 && elapsedRealtime2 - zzueVar.b.get() <= TimeUnit.MINUTES.toMillis(30L)) {
                return;
            }
            zzueVar.f11424a.log(new TelemetryData(0, Arrays.asList(new MethodInvocation(h2, i2, 0, j3, currentTimeMillis, null, null, 0, -1)))).e(new OnFailureListener() { // from class: com.google.android.gms.internal.mlkit_vision_text_common.zzud
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void c(Exception exc) {
                    zzue.this.b.set(elapsedRealtime2);
                }
            });
        }
    }
}
