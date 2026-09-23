package com.google.android.gms.internal.ads;

import androidx.datastore.core.DataStore;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorCoroutineDispatcherImpl;
import kotlinx.coroutines.sync.MutexImpl;

/* loaded from: classes.dex */
public final class zzfza implements zzfxt {

    /* renamed from: a, reason: collision with root package name */
    public final CoroutineScope f7739a;
    public final MutexImpl b;

    /* renamed from: c, reason: collision with root package name */
    public final MutexImpl f7740c;
    public final MutexImpl d;
    public boolean e;
    public zzfxr f;
    public boolean g;
    public final DataStore h;
    public final zzduo i;

    public zzfza(DataStore adQualityDataStore, zzfzc coroutineScopeProvider, zzduo dataPinger, zzfyc clock) {
        Intrinsics.checkNotNullParameter(adQualityDataStore, "adQualityDataStore");
        Intrinsics.checkNotNullParameter(coroutineScopeProvider, "coroutineScopeProvider");
        Intrinsics.checkNotNullParameter(dataPinger, "dataPinger");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.i = dataPinger;
        this.f7739a = CoroutineScopeKt.a(new ExecutorCoroutineDispatcherImpl(((zzfzd) coroutineScopeProvider).f7742a));
        this.b = new MutexImpl();
        this.f7740c = new MutexImpl();
        this.d = new MutexImpl();
        this.h = adQualityDataStore;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x010a, code lost:
    
        if (i(r2) == r3) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x006a, code lost:
    
        if (r0 == r3) goto L63;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
    /* JADX WARN: Type inference failed for: r17v0, types: [com.google.android.gms.internal.ads.zzfza] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v17, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v5, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r18) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfza.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0056 A[Catch: all -> 0x005c, TRY_LEAVE, TryCatch #0 {all -> 0x005c, blocks: (B:12:0x0052, B:14:0x0056, B:18:0x005e), top: B:11:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005e A[Catch: all -> 0x005c, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x005c, blocks: (B:12:0x0052, B:14:0x0056, B:18:0x005e), top: B:11:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.lang.String r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.google.android.gms.internal.ads.zzfyo
            if (r0 == 0) goto L13
            r0 = r8
            com.google.android.gms.internal.ads.zzfyo r0 = (com.google.android.gms.internal.ads.zzfyo) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfyo r0 = new com.google.android.gms.internal.ads.zzfyo
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            long r1 = r0.f
            kotlinx.coroutines.sync.MutexImpl r7 = r0.f7726c
            java.lang.String r0 = r0.j
            kotlin.ResultKt.throwOnFailure(r8)
            goto L51
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L37:
            kotlin.ResultKt.throwOnFailure(r8)
            long r4 = java.lang.System.currentTimeMillis()
            r0.j = r7
            kotlinx.coroutines.sync.MutexImpl r8 = r6.b
            r0.f7726c = r8
            r0.f = r4
            r0.i = r3
            java.lang.Object r0 = r8.b(r0)
            if (r0 == r1) goto L8f
            r0 = r7
            r7 = r8
            r1 = r4
        L51:
            r8 = 0
            boolean r4 = r6.e     // Catch: java.lang.Throwable -> L5c
            if (r4 == 0) goto L5e
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L5c
            r7.a(r8)
            return r0
        L5c:
            r0 = move-exception
            goto L8b
        L5e:
            r6.e = r3     // Catch: java.lang.Throwable -> L5c
            com.google.android.gms.internal.ads.zzfxs r3 = com.google.android.gms.internal.ads.zzfxs.U()     // Catch: java.lang.Throwable -> L5c
            com.google.android.gms.internal.ads.zzial r3 = r3.v()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r4 = "toBuilder(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)     // Catch: java.lang.Throwable -> L5c
            com.google.android.gms.internal.ads.zzfxr r3 = (com.google.android.gms.internal.ads.zzfxr) r3     // Catch: java.lang.Throwable -> L5c
            r6.f = r3     // Catch: java.lang.Throwable -> L5c
            r3.k()     // Catch: java.lang.Throwable -> L5c
            com.google.android.gms.internal.ads.zziar r4 = r3.f     // Catch: java.lang.Throwable -> L5c
            com.google.android.gms.internal.ads.zzfxs r4 = (com.google.android.gms.internal.ads.zzfxs) r4     // Catch: java.lang.Throwable -> L5c
            r4.V(r0)     // Catch: java.lang.Throwable -> L5c
            r3.k()     // Catch: java.lang.Throwable -> L5c
            com.google.android.gms.internal.ads.zziar r0 = r3.f     // Catch: java.lang.Throwable -> L5c
            com.google.android.gms.internal.ads.zzfxs r0 = (com.google.android.gms.internal.ads.zzfxs) r0     // Catch: java.lang.Throwable -> L5c
            r0.b0(r1)     // Catch: java.lang.Throwable -> L5c
            r7.a(r8)
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L8b:
            r7.a(r8)
            throw r0
        L8f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfza.b(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ad, code lost:
    
        if (k(r0) == r1) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a5, code lost:
    
        if (j(r5, r0) == r1) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x005b, code lost:
    
        if (r2.b(r0) != r1) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0087 A[Catch: all -> 0x008e, TryCatch #1 {all -> 0x008e, blocks: (B:24:0x0083, B:26:0x0087, B:27:0x0090), top: B:23:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0061 A[Catch: all -> 0x0067, TRY_LEAVE, TryCatch #0 {all -> 0x0067, blocks: (B:37:0x005d, B:39:0x0061, B:42:0x0069), top: B:36:0x005d }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0069 A[Catch: all -> 0x0067, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0067, blocks: (B:37:0x005d, B:39:0x0061, B:42:0x0069), top: B:36:0x005d }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof com.google.android.gms.internal.ads.zzfyk
            if (r0 == 0) goto L13
            r0 = r11
            com.google.android.gms.internal.ads.zzfyk r0 = (com.google.android.gms.internal.ads.zzfyk) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfyk r0 = new com.google.android.gms.internal.ads.zzfyk
            r0.<init>(r10, r11)
        L18:
            java.lang.Object r11 = r0.g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L4e
            if (r2 == r6) goto L48
            if (r2 == r5) goto L40
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            kotlin.ResultKt.throwOnFailure(r11)
            goto Lb0
        L34:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L3c:
            kotlin.ResultKt.throwOnFailure(r11)
            goto La7
        L40:
            long r5 = r0.f
            kotlinx.coroutines.sync.MutexImpl r2 = r0.f7722c
            kotlin.ResultKt.throwOnFailure(r11)
            goto L83
        L48:
            kotlinx.coroutines.sync.MutexImpl r2 = r0.f7722c
            kotlin.ResultKt.throwOnFailure(r11)
            goto L5d
        L4e:
            kotlin.ResultKt.throwOnFailure(r11)
            kotlinx.coroutines.sync.MutexImpl r2 = r10.f7740c
            r0.f7722c = r2
            r0.i = r6
            java.lang.Object r11 = r2.b(r0)
            if (r11 == r1) goto Lbb
        L5d:
            boolean r11 = r10.g     // Catch: java.lang.Throwable -> L67
            if (r11 == 0) goto L69
            kotlin.Unit r11 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L67
            r2.a(r7)
            return r11
        L67:
            r11 = move-exception
            goto Lb7
        L69:
            r10.g = r6     // Catch: java.lang.Throwable -> L67
            kotlin.Unit r11 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L67
            r2.a(r7)
            long r8 = java.lang.System.currentTimeMillis()
            kotlinx.coroutines.sync.MutexImpl r2 = r10.b
            r0.f7722c = r2
            r0.f = r8
            r0.i = r5
            java.lang.Object r11 = r2.b(r0)
            if (r11 == r1) goto Lbb
            r5 = r8
        L83:
            com.google.android.gms.internal.ads.zzfxr r11 = r10.f     // Catch: java.lang.Throwable -> L8e
            if (r11 != 0) goto L90
            java.lang.String r11 = "adQualityDataBuilder"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r11)     // Catch: java.lang.Throwable -> L8e
            r11 = r7
            goto L90
        L8e:
            r11 = move-exception
            goto Lb3
        L90:
            r11.k()     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.ads.zziar r11 = r11.f     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.ads.zzfxs r11 = (com.google.android.gms.internal.ads.zzfxs) r11     // Catch: java.lang.Throwable -> L8e
            r11.e0(r5)     // Catch: java.lang.Throwable -> L8e
            r2.a(r7)
            r0.f7722c = r7
            r0.i = r4
            java.lang.Object r11 = r10.j(r5, r0)
            if (r11 == r1) goto Lbb
        La7:
            r0.i = r3
            java.lang.Object r11 = r10.k(r0)
            if (r11 != r1) goto Lb0
            goto Lbb
        Lb0:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        Lb3:
            r2.a(r7)
            throw r11
        Lb7:
            r2.a(r7)
            throw r11
        Lbb:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfza.c(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x004c, code lost:
    
        if (r2.b(r0) != r1) goto L76;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d A[Catch: all -> 0x0082, TRY_ENTER, TryCatch #0 {all -> 0x0082, blocks: (B:12:0x0077, B:15:0x007d, B:16:0x0085, B:19:0x0091, B:21:0x0095, B:22:0x0099, B:24:0x00bd, B:25:0x00c1, B:27:0x00d1, B:29:0x00d5, B:30:0x00d9, B:31:0x00ec, B:33:0x00f0, B:34:0x00f4, B:36:0x00fe, B:38:0x0102, B:39:0x0106, B:41:0x012a, B:42:0x012e, B:43:0x0141, B:45:0x0145, B:46:0x0149), top: B:11:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0091 A[Catch: all -> 0x0082, TRY_ENTER, TryCatch #0 {all -> 0x0082, blocks: (B:12:0x0077, B:15:0x007d, B:16:0x0085, B:19:0x0091, B:21:0x0095, B:22:0x0099, B:24:0x00bd, B:25:0x00c1, B:27:0x00d1, B:29:0x00d5, B:30:0x00d9, B:31:0x00ec, B:33:0x00f0, B:34:0x00f4, B:36:0x00fe, B:38:0x0102, B:39:0x0106, B:41:0x012a, B:42:0x012e, B:43:0x0141, B:45:0x0145, B:46:0x0149), top: B:11:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f0 A[Catch: all -> 0x0082, TryCatch #0 {all -> 0x0082, blocks: (B:12:0x0077, B:15:0x007d, B:16:0x0085, B:19:0x0091, B:21:0x0095, B:22:0x0099, B:24:0x00bd, B:25:0x00c1, B:27:0x00d1, B:29:0x00d5, B:30:0x00d9, B:31:0x00ec, B:33:0x00f0, B:34:0x00f4, B:36:0x00fe, B:38:0x0102, B:39:0x0106, B:41:0x012a, B:42:0x012e, B:43:0x0141, B:45:0x0145, B:46:0x0149), top: B:11:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00fe A[Catch: all -> 0x0082, TryCatch #0 {all -> 0x0082, blocks: (B:12:0x0077, B:15:0x007d, B:16:0x0085, B:19:0x0091, B:21:0x0095, B:22:0x0099, B:24:0x00bd, B:25:0x00c1, B:27:0x00d1, B:29:0x00d5, B:30:0x00d9, B:31:0x00ec, B:33:0x00f0, B:34:0x00f4, B:36:0x00fe, B:38:0x0102, B:39:0x0106, B:41:0x012a, B:42:0x012e, B:43:0x0141, B:45:0x0145, B:46:0x0149), top: B:11:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0145 A[Catch: all -> 0x0082, TryCatch #0 {all -> 0x0082, blocks: (B:12:0x0077, B:15:0x007d, B:16:0x0085, B:19:0x0091, B:21:0x0095, B:22:0x0099, B:24:0x00bd, B:25:0x00c1, B:27:0x00d1, B:29:0x00d5, B:30:0x00d9, B:31:0x00ec, B:33:0x00f0, B:34:0x00f4, B:36:0x00fe, B:38:0x0102, B:39:0x0106, B:41:0x012a, B:42:0x012e, B:43:0x0141, B:45:0x0145, B:46:0x0149), top: B:11:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0052 A[Catch: all -> 0x0058, TRY_LEAVE, TryCatch #1 {all -> 0x0058, blocks: (B:59:0x004e, B:61:0x0052, B:65:0x005c), top: B:58:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfza.d(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0113, code lost:
    
        if (h(r14, r0) == r1) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f8, code lost:
    
        if (k(r0) == r1) goto L67;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094 A[Catch: all -> 0x0099, TRY_ENTER, TryCatch #1 {all -> 0x0099, blocks: (B:26:0x008e, B:29:0x0094, B:30:0x009c, B:32:0x00a0, B:33:0x00a4, B:35:0x00b2, B:36:0x00b6, B:38:0x00cd, B:39:0x00d1, B:41:0x00df, B:42:0x00e3), top: B:25:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a0 A[Catch: all -> 0x0099, TryCatch #1 {all -> 0x0099, blocks: (B:26:0x008e, B:29:0x0094, B:30:0x009c, B:32:0x00a0, B:33:0x00a4, B:35:0x00b2, B:36:0x00b6, B:38:0x00cd, B:39:0x00d1, B:41:0x00df, B:42:0x00e3), top: B:25:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b2 A[Catch: all -> 0x0099, TryCatch #1 {all -> 0x0099, blocks: (B:26:0x008e, B:29:0x0094, B:30:0x009c, B:32:0x00a0, B:33:0x00a4, B:35:0x00b2, B:36:0x00b6, B:38:0x00cd, B:39:0x00d1, B:41:0x00df, B:42:0x00e3), top: B:25:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cd A[Catch: all -> 0x0099, TryCatch #1 {all -> 0x0099, blocks: (B:26:0x008e, B:29:0x0094, B:30:0x009c, B:32:0x00a0, B:33:0x00a4, B:35:0x00b2, B:36:0x00b6, B:38:0x00cd, B:39:0x00d1, B:41:0x00df, B:42:0x00e3), top: B:25:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00df A[Catch: all -> 0x0099, TryCatch #1 {all -> 0x0099, blocks: (B:26:0x008e, B:29:0x0094, B:30:0x009c, B:32:0x00a0, B:33:0x00a4, B:35:0x00b2, B:36:0x00b6, B:38:0x00cd, B:39:0x00d1, B:41:0x00df, B:42:0x00e3), top: B:25:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x006b A[Catch: all -> 0x0071, TRY_LEAVE, TryCatch #0 {all -> 0x0071, blocks: (B:52:0x0067, B:54:0x006b, B:58:0x0075), top: B:51:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfza.e(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0125, code lost:
    
        if (h(r14, r0) == r1) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x010a, code lost:
    
        if (k(r0) == r1) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094 A[Catch: all -> 0x0099, TRY_ENTER, TryCatch #1 {all -> 0x0099, blocks: (B:26:0x008e, B:29:0x0094, B:30:0x009c, B:32:0x00a0, B:33:0x00a4, B:35:0x00b2, B:36:0x00b6, B:38:0x00cd, B:39:0x00d1, B:41:0x00df, B:42:0x00e3, B:44:0x00f1, B:45:0x00f5), top: B:25:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a0 A[Catch: all -> 0x0099, TryCatch #1 {all -> 0x0099, blocks: (B:26:0x008e, B:29:0x0094, B:30:0x009c, B:32:0x00a0, B:33:0x00a4, B:35:0x00b2, B:36:0x00b6, B:38:0x00cd, B:39:0x00d1, B:41:0x00df, B:42:0x00e3, B:44:0x00f1, B:45:0x00f5), top: B:25:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b2 A[Catch: all -> 0x0099, TryCatch #1 {all -> 0x0099, blocks: (B:26:0x008e, B:29:0x0094, B:30:0x009c, B:32:0x00a0, B:33:0x00a4, B:35:0x00b2, B:36:0x00b6, B:38:0x00cd, B:39:0x00d1, B:41:0x00df, B:42:0x00e3, B:44:0x00f1, B:45:0x00f5), top: B:25:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cd A[Catch: all -> 0x0099, TryCatch #1 {all -> 0x0099, blocks: (B:26:0x008e, B:29:0x0094, B:30:0x009c, B:32:0x00a0, B:33:0x00a4, B:35:0x00b2, B:36:0x00b6, B:38:0x00cd, B:39:0x00d1, B:41:0x00df, B:42:0x00e3, B:44:0x00f1, B:45:0x00f5), top: B:25:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00df A[Catch: all -> 0x0099, TryCatch #1 {all -> 0x0099, blocks: (B:26:0x008e, B:29:0x0094, B:30:0x009c, B:32:0x00a0, B:33:0x00a4, B:35:0x00b2, B:36:0x00b6, B:38:0x00cd, B:39:0x00d1, B:41:0x00df, B:42:0x00e3, B:44:0x00f1, B:45:0x00f5), top: B:25:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f1 A[Catch: all -> 0x0099, TryCatch #1 {all -> 0x0099, blocks: (B:26:0x008e, B:29:0x0094, B:30:0x009c, B:32:0x00a0, B:33:0x00a4, B:35:0x00b2, B:36:0x00b6, B:38:0x00cd, B:39:0x00d1, B:41:0x00df, B:42:0x00e3, B:44:0x00f1, B:45:0x00f5), top: B:25:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x006b A[Catch: all -> 0x0071, TRY_LEAVE, TryCatch #0 {all -> 0x0071, blocks: (B:55:0x0067, B:57:0x006b, B:61:0x0075), top: B:54:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfza.f(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0051 A[Catch: all -> 0x0058, TryCatch #0 {all -> 0x0058, blocks: (B:12:0x004d, B:14:0x0051, B:15:0x005a), top: B:11:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.google.android.gms.internal.ads.zzfyq
            if (r0 == 0) goto L13
            r0 = r7
            com.google.android.gms.internal.ads.zzfyq r0 = (com.google.android.gms.internal.ads.zzfyq) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfyq r0 = new com.google.android.gms.internal.ads.zzfyq
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            long r1 = r0.f7728c
            kotlinx.coroutines.sync.MutexImpl r0 = r0.f
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4c
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            long r4 = java.lang.System.currentTimeMillis()
            kotlinx.coroutines.sync.MutexImpl r7 = r6.b
            r0.f = r7
            r0.f7728c = r4
            r0.i = r3
            java.lang.Object r0 = r7.b(r0)
            if (r0 == r1) goto L6e
            r0 = r7
            r1 = r4
        L4c:
            r7 = 0
            com.google.android.gms.internal.ads.zzfxr r3 = r6.f     // Catch: java.lang.Throwable -> L58
            if (r3 != 0) goto L5a
            java.lang.String r3 = "adQualityDataBuilder"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)     // Catch: java.lang.Throwable -> L58
            r3 = r7
            goto L5a
        L58:
            r1 = move-exception
            goto L6a
        L5a:
            r3.k()     // Catch: java.lang.Throwable -> L58
            com.google.android.gms.internal.ads.zziar r3 = r3.f     // Catch: java.lang.Throwable -> L58
            com.google.android.gms.internal.ads.zzfxs r3 = (com.google.android.gms.internal.ads.zzfxs) r3     // Catch: java.lang.Throwable -> L58
            r3.E(r1)     // Catch: java.lang.Throwable -> L58
            r0.a(r7)
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L6a:
            r0.a(r7)
            throw r1
        L6e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfza.g(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
    
        if (r9.b(r0) != r1) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(java.lang.String r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.google.android.gms.internal.ads.zzfyf
            if (r0 == 0) goto L13
            r0 = r9
            com.google.android.gms.internal.ads.zzfyf r0 = (com.google.android.gms.internal.ads.zzfyf) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfyf r0 = new com.google.android.gms.internal.ads.zzfyf
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r8 = r0.f7718c
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L31
            goto L6e
        L31:
            r9 = move-exception
            goto L7a
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            kotlinx.coroutines.sync.MutexImpl r8 = r0.f
            java.lang.Object r2 = r0.f7718c
            java.lang.String r2 = (java.lang.String) r2
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r2
            goto L58
        L47:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.f7718c = r8
            kotlinx.coroutines.sync.MutexImpl r9 = r7.d
            r0.f = r9
            r0.i = r4
            java.lang.Object r2 = r9.b(r0)
            if (r2 == r1) goto L7e
        L58:
            androidx.datastore.core.DataStore r2 = r7.h     // Catch: java.lang.Throwable -> L76
            com.google.android.gms.internal.ads.zzfyg r4 = new com.google.android.gms.internal.ads.zzfyg     // Catch: java.lang.Throwable -> L76
            r4.<init>(r8, r5)     // Catch: java.lang.Throwable -> L76
            r0.f7718c = r9     // Catch: java.lang.Throwable -> L76
            r0.f = r5     // Catch: java.lang.Throwable -> L76
            r0.i = r3     // Catch: java.lang.Throwable -> L76
            java.lang.Object r8 = r2.a(r4, r0)     // Catch: java.lang.Throwable -> L76
            if (r8 == r1) goto L7e
            r6 = r9
            r9 = r8
            r8 = r6
        L6e:
            com.google.android.gms.internal.ads.zzfxw r9 = (com.google.android.gms.internal.ads.zzfxw) r9     // Catch: java.lang.Throwable -> L31
            r8.a(r5)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L76:
            r8 = move-exception
            r6 = r9
            r9 = r8
            r8 = r6
        L7a:
            r8.a(r5)
            throw r9
        L7e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfza.h(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x004d, code lost:
    
        if (r8.b(r0) != r1) goto L33;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.datastore.core.DataStore] */
    /* JADX WARN: Type inference failed for: r2v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r3v1, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.google.android.gms.internal.ads.zzfyi
            if (r0 == 0) goto L13
            r0 = r8
            com.google.android.gms.internal.ads.zzfyi r0 = (com.google.android.gms.internal.ads.zzfyi) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfyi r0 = new com.google.android.gms.internal.ads.zzfyi
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            r4 = 2
            r5 = 0
            if (r2 == 0) goto L40
            if (r2 == r3) goto L39
            if (r2 != r4) goto L31
            kotlinx.coroutines.sync.Mutex r0 = r0.f7721c
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L2f
            goto L63
        L2f:
            r8 = move-exception
            goto L6f
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L39:
            kotlinx.coroutines.sync.Mutex r2 = r0.f7721c
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L4f
        L40:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.MutexImpl r8 = r7.d
            r0.f7721c = r8
            r0.h = r3
            java.lang.Object r2 = r8.b(r0)
            if (r2 == r1) goto L73
        L4f:
            androidx.datastore.core.DataStore r2 = r7.h     // Catch: java.lang.Throwable -> L6b
            com.google.android.gms.internal.ads.zzfyj r3 = new com.google.android.gms.internal.ads.zzfyj     // Catch: java.lang.Throwable -> L6b
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L6b
            r0.f7721c = r8     // Catch: java.lang.Throwable -> L6b
            r0.h = r4     // Catch: java.lang.Throwable -> L6b
            java.lang.Object r0 = r2.a(r3, r0)     // Catch: java.lang.Throwable -> L6b
            if (r0 == r1) goto L73
            r6 = r0
            r0 = r8
            r8 = r6
        L63:
            com.google.android.gms.internal.ads.zzfxw r8 = (com.google.android.gms.internal.ads.zzfxw) r8     // Catch: java.lang.Throwable -> L2f
            r0.a(r5)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L6b:
            r0 = move-exception
            r6 = r0
            r0 = r8
            r8 = r6
        L6f:
            r0.a(r5)
            throw r8
        L73:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfza.i(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004e A[Catch: all -> 0x0053, TRY_ENTER, TryCatch #0 {all -> 0x0053, blocks: (B:12:0x0048, B:15:0x004e, B:16:0x0055, B:18:0x0059, B:19:0x005d, B:21:0x006a, B:22:0x006e), top: B:11:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0059 A[Catch: all -> 0x0053, TryCatch #0 {all -> 0x0053, blocks: (B:12:0x0048, B:15:0x004e, B:16:0x0055, B:18:0x0059, B:19:0x005d, B:21:0x006a, B:22:0x006e), top: B:11:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006a A[Catch: all -> 0x0053, TryCatch #0 {all -> 0x0053, blocks: (B:12:0x0048, B:15:0x004e, B:16:0x0055, B:18:0x0059, B:19:0x005d, B:21:0x006a, B:22:0x006e), top: B:11:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(long r6, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.google.android.gms.internal.ads.zzfyh
            if (r0 == 0) goto L13
            r0 = r8
            com.google.android.gms.internal.ads.zzfyh r0 = (com.google.android.gms.internal.ads.zzfyh) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfyh r0 = new com.google.android.gms.internal.ads.zzfyh
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            long r6 = r0.f7720c
            kotlinx.coroutines.sync.MutexImpl r0 = r0.f
            kotlin.ResultKt.throwOnFailure(r8)
            goto L47
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.MutexImpl r8 = r5.b
            r0.f = r8
            r0.f7720c = r6
            r0.i = r3
            java.lang.Object r0 = r8.b(r0)
            if (r0 == r1) goto L8b
            r0 = r8
        L47:
            r8 = 0
            com.google.android.gms.internal.ads.zzfxr r1 = r5.f     // Catch: java.lang.Throwable -> L53
            java.lang.String r2 = "adQualityDataBuilder"
            if (r1 != 0) goto L55
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)     // Catch: java.lang.Throwable -> L53
            r1 = r8
            goto L55
        L53:
            r6 = move-exception
            goto L87
        L55:
            com.google.android.gms.internal.ads.zzfxr r3 = r5.f     // Catch: java.lang.Throwable -> L53
            if (r3 != 0) goto L5d
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)     // Catch: java.lang.Throwable -> L53
            r3 = r8
        L5d:
            com.google.android.gms.internal.ads.zziar r3 = r3.f     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.internal.ads.zzfxs r3 = (com.google.android.gms.internal.ads.zzfxs) r3     // Catch: java.lang.Throwable -> L53
            long r3 = r3.M()     // Catch: java.lang.Throwable -> L53
            long r6 = r6 - r3
            com.google.android.gms.internal.ads.zzfxr r3 = r5.f     // Catch: java.lang.Throwable -> L53
            if (r3 != 0) goto L6e
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)     // Catch: java.lang.Throwable -> L53
            r3 = r8
        L6e:
            com.google.android.gms.internal.ads.zziar r2 = r3.f     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.internal.ads.zzfxs r2 = (com.google.android.gms.internal.ads.zzfxs) r2     // Catch: java.lang.Throwable -> L53
            long r2 = r2.L()     // Catch: java.lang.Throwable -> L53
            long r6 = r6 - r2
            r1.k()     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.internal.ads.zziar r1 = r1.f     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.internal.ads.zzfxs r1 = (com.google.android.gms.internal.ads.zzfxs) r1     // Catch: java.lang.Throwable -> L53
            r1.W(r6)     // Catch: java.lang.Throwable -> L53
            r0.a(r8)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L87:
            r0.a(r8)
            throw r6
        L8b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfza.j(long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x005e, code lost:
    
        if (r2.b(r0) != r1) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0064 A[Catch: all -> 0x006b, TryCatch #2 {all -> 0x006b, blocks: (B:35:0x0060, B:37:0x0064, B:38:0x006d), top: B:34:0x0060 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object k(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.google.android.gms.internal.ads.zzfym
            if (r0 == 0) goto L13
            r0 = r8
            com.google.android.gms.internal.ads.zzfym r0 = (com.google.android.gms.internal.ads.zzfym) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfym r0 = new com.google.android.gms.internal.ads.zzfym
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L51
            if (r2 == r5) goto L49
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r0 = r0.f7724c
            kotlinx.coroutines.sync.Mutex r0 = (kotlinx.coroutines.sync.Mutex) r0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L34
            goto L9c
        L34:
            r8 = move-exception
            goto La6
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3f:
            kotlinx.coroutines.sync.MutexImpl r2 = r0.f
            java.lang.Object r4 = r0.f7724c
            com.google.android.gms.internal.ads.zzfxs r4 = (com.google.android.gms.internal.ads.zzfxs) r4
            kotlin.ResultKt.throwOnFailure(r8)
            goto L88
        L49:
            java.lang.Object r2 = r0.f7724c
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L60
        L51:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.MutexImpl r2 = r7.b
            r0.f7724c = r2
            r0.i = r5
            java.lang.Object r8 = r2.b(r0)
            if (r8 == r1) goto Lae
        L60:
            com.google.android.gms.internal.ads.zzfxr r8 = r7.f     // Catch: java.lang.Throwable -> L6b
            if (r8 != 0) goto L6d
            java.lang.String r8 = "adQualityDataBuilder"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r8)     // Catch: java.lang.Throwable -> L6b
            r8 = r6
            goto L6d
        L6b:
            r8 = move-exception
            goto Laa
        L6d:
            com.google.android.gms.internal.ads.zziar r8 = r8.m()     // Catch: java.lang.Throwable -> L6b
            com.google.android.gms.internal.ads.zzfxs r8 = (com.google.android.gms.internal.ads.zzfxs) r8     // Catch: java.lang.Throwable -> L6b
            r2.a(r6)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8)
            r0.f7724c = r8
            kotlinx.coroutines.sync.MutexImpl r2 = r7.d
            r0.f = r2
            r0.i = r4
            java.lang.Object r4 = r2.b(r0)
            if (r4 == r1) goto Lae
            r4 = r8
        L88:
            androidx.datastore.core.DataStore r8 = r7.h     // Catch: java.lang.Throwable -> La4
            com.google.android.gms.internal.ads.zzfyn r5 = new com.google.android.gms.internal.ads.zzfyn     // Catch: java.lang.Throwable -> La4
            r5.<init>(r4, r6)     // Catch: java.lang.Throwable -> La4
            r0.f7724c = r2     // Catch: java.lang.Throwable -> La4
            r0.f = r6     // Catch: java.lang.Throwable -> La4
            r0.i = r3     // Catch: java.lang.Throwable -> La4
            java.lang.Object r8 = r8.a(r5, r0)     // Catch: java.lang.Throwable -> La4
            if (r8 == r1) goto Lae
            r0 = r2
        L9c:
            com.google.android.gms.internal.ads.zzfxw r8 = (com.google.android.gms.internal.ads.zzfxw) r8     // Catch: java.lang.Throwable -> L34
            r0.a(r6)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        La4:
            r8 = move-exception
            r0 = r2
        La6:
            r0.a(r6)
            throw r8
        Laa:
            r2.a(r6)
            throw r8
        Lae:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfza.k(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
