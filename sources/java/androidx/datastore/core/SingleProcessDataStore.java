package androidx.datastore.core;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzfxz;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.internal.ContextScope;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0003\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Landroidx/datastore/core/SingleProcessDataStore;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Landroidx/datastore/core/DataStore;", "Companion", "Message", "UncloseableOutputStream", "datastore-core"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SingleProcessDataStore<T> implements DataStore<T> {
    public static final LinkedHashSet i = new LinkedHashSet();
    public static final Object j = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Function0 f952a;
    public final CorruptionHandler b;

    /* renamed from: c, reason: collision with root package name */
    public final Flow f953c;
    public final String d;
    public final Lazy e;
    public final MutableStateFlow f;
    public List g;
    public final SimpleActor h;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/datastore/core/SingleProcessDataStore$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "datastore-core"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002:\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Landroidx/datastore/core/SingleProcessDataStore$Message;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Read", "Update", "Landroidx/datastore/core/SingleProcessDataStore$Message$Read;", "Landroidx/datastore/core/SingleProcessDataStore$Message$Update;", "datastore-core"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class Message<T> {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002¨\u0006\u0003"}, d2 = {"Landroidx/datastore/core/SingleProcessDataStore$Message$Read;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Landroidx/datastore/core/SingleProcessDataStore$Message;", "datastore-core"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Read<T> extends Message<T> {

            /* renamed from: a, reason: collision with root package name */
            public final State f957a;

            public Read(State state) {
                this.f957a = state;
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002¨\u0006\u0003"}, d2 = {"Landroidx/datastore/core/SingleProcessDataStore$Message$Update;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Landroidx/datastore/core/SingleProcessDataStore$Message;", "datastore-core"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Update<T> extends Message<T> {

            /* renamed from: a, reason: collision with root package name */
            public final SuspendLambda f958a;
            public final CompletableDeferred b;

            /* renamed from: c, reason: collision with root package name */
            public final State f959c;
            public final CoroutineContext d;

            /* JADX WARN: Multi-variable type inference failed */
            public Update(Function2 transform, CompletableDeferred ack, State state, CoroutineContext callerContext) {
                Intrinsics.checkNotNullParameter(transform, "transform");
                Intrinsics.checkNotNullParameter(ack, "ack");
                Intrinsics.checkNotNullParameter(callerContext, "callerContext");
                this.f958a = (SuspendLambda) transform;
                this.b = ack;
                this.f959c = state;
                this.d = callerContext;
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/datastore/core/SingleProcessDataStore$UncloseableOutputStream;", "Ljava/io/OutputStream;", "datastore-core"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class UncloseableOutputStream extends OutputStream {

        /* renamed from: c, reason: collision with root package name */
        public final FileOutputStream f960c;

        public UncloseableOutputStream(FileOutputStream fileOutputStream) {
            Intrinsics.checkNotNullParameter(fileOutputStream, "fileOutputStream");
            this.f960c = fileOutputStream;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() {
            this.f960c.flush();
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            this.f960c.write(i);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] b) {
            Intrinsics.checkNotNullParameter(b, "b");
            this.f960c.write(b);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bytes, int i, int i2) {
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            this.f960c.write(bytes, i, i2);
        }
    }

    public SingleProcessDataStore(Function0 produceFile, List initTasksList, CorruptionHandler corruptionHandler, ContextScope scope) {
        zzfxz serializer = zzfxz.f7713a;
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(initTasksList, "initTasksList");
        Intrinsics.checkNotNullParameter(corruptionHandler, "corruptionHandler");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f952a = produceFile;
        this.b = corruptionHandler;
        this.f953c = FlowKt.e(new SingleProcessDataStore$data$1(this, null));
        this.d = ".tmp";
        this.e = LazyKt.lazy(new Function0<File>() { // from class: androidx.datastore.core.SingleProcessDataStore$file$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final File invoke() {
                File file = (File) SingleProcessDataStore.this.f952a.invoke();
                String it = file.getAbsolutePath();
                synchronized (SingleProcessDataStore.j) {
                    LinkedHashSet linkedHashSet = SingleProcessDataStore.i;
                    if (!linkedHashSet.contains(it)) {
                        Intrinsics.checkNotNullExpressionValue(it, "it");
                        linkedHashSet.add(it);
                    } else {
                        throw new IllegalStateException(("There are multiple DataStores active for the same file: " + file + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
                    }
                }
                return file;
            }
        });
        this.f = StateFlowKt.a(UnInitialized.f979a);
        this.g = CollectionsKt.toList(initTasksList);
        this.h = new SimpleActor(scope, new SingleProcessDataStore$actor$1(this), SingleProcessDataStore$actor$2.f962c, new SingleProcessDataStore$actor$3(this, null));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:1|(2:3|(5:5|6|7|(8:(1:(1:(2:12|13))(3:15|16|17))|30|31|21|22|(1:24)(1:27)|25|26)(5:32|33|34|(8:36|(1:38)|20|21|22|(0)(0)|25|26)(3:39|(1:41)(1:56)|(2:43|(2:45|(1:47))(2:48|49))(2:50|(2:52|53)(2:54|55)))|29)|18))|61|6|7|(0)(0)|18|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a6, code lost:
    
        if (r8 != r1) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0034, code lost:
    
        r9 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Type inference failed for: r2v8, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r2v9, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(androidx.datastore.core.SingleProcessDataStore r8, androidx.datastore.core.SingleProcessDataStore.Message.Update r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.b(androidx.datastore.core.SingleProcessDataStore, androidx.datastore.core.SingleProcessDataStore$Message$Update, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.datastore.core.DataStore
    public final Object a(Function2 function2, ContinuationImpl continuationImpl) {
        CompletableDeferred a2 = CompletableDeferredKt.a();
        this.h.a(new Message.Update(function2, a2, (State) this.f.getValue(), continuationImpl.getF()));
        return a2.A(continuationImpl);
    }

    public final File c() {
        return (File) this.e.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.d(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1 r0 = (androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1 r0 = new androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            androidx.datastore.core.SingleProcessDataStore r0 = r0.f972c
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L2b
            goto L43
        L2b:
            r5 = move-exception
            goto L48
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.f972c = r4     // Catch: java.lang.Throwable -> L46
            r0.h = r3     // Catch: java.lang.Throwable -> L46
            java.lang.Object r5 = r4.d(r0)     // Catch: java.lang.Throwable -> L46
            if (r5 != r1) goto L43
            return r1
        L43:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L46:
            r5 = move-exception
            r0 = r4
        L48:
            kotlinx.coroutines.flow.MutableStateFlow r0 = r0.f
            androidx.datastore.core.ReadException r1 = new androidx.datastore.core.ReadException
            r1.<init>(r5)
            r0.setValue(r1)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.e(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1 r0 = (androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1 r0 = new androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            androidx.datastore.core.SingleProcessDataStore r0 = r0.f973c
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L2b
            goto L4f
        L2b:
            r5 = move-exception
            goto L45
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.f973c = r4     // Catch: java.lang.Throwable -> L43
            r0.h = r3     // Catch: java.lang.Throwable -> L43
            java.lang.Object r5 = r4.d(r0)     // Catch: java.lang.Throwable -> L43
            if (r5 != r1) goto L4f
            return r1
        L43:
            r5 = move-exception
            r0 = r4
        L45:
            kotlinx.coroutines.flow.MutableStateFlow r0 = r0.f
            androidx.datastore.core.ReadException r1 = new androidx.datastore.core.ReadException
            r1.<init>(r5)
            r0.setValue(r1)
        L4f:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.f(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v16, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.datastore.core.SingleProcessDataStore$readData$1] */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.datastore.core.SingleProcessDataStore$readData$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.datastore.core.SingleProcessDataStore$readData$1 r0 = (androidx.datastore.core.SingleProcessDataStore$readData$1) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$readData$1 r0 = new androidx.datastore.core.SingleProcessDataStore$readData$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.io.FileInputStream r1 = r0.f
            androidx.datastore.core.SingleProcessDataStore r0 = r0.f974c
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L2d
            goto L5b
        L2d:
            r5 = move-exception
            goto L68
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r5)
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> L6e
            java.io.File r2 = r4.c()     // Catch: java.io.FileNotFoundException -> L6e
            r5.<init>(r2)     // Catch: java.io.FileNotFoundException -> L6e
            com.google.android.gms.internal.ads.zzfxz r2 = com.google.android.gms.internal.ads.zzfxz.f7713a     // Catch: java.lang.Throwable -> L66
            r0.f974c = r4     // Catch: java.lang.Throwable -> L66
            r0.f = r5     // Catch: java.lang.Throwable -> L66
            r0.i = r3     // Catch: java.lang.Throwable -> L66
            com.google.android.gms.internal.ads.zzfxw r0 = com.google.android.gms.internal.ads.zzfxw.F(r5)     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L66
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L66
            goto L55
        L53:
            com.google.android.gms.internal.ads.zzfxw r0 = com.google.android.gms.internal.ads.zzfxz.b     // Catch: java.lang.Throwable -> L66
        L55:
            if (r0 != r1) goto L58
            return r1
        L58:
            r1 = r5
            r5 = r0
            r0 = r4
        L5b:
            r2 = 0
            kotlin.io.CloseableKt.closeFinally(r1, r2)     // Catch: java.io.FileNotFoundException -> L60
            return r5
        L60:
            r5 = move-exception
            goto L70
        L62:
            r1 = r5
            r5 = r0
            r0 = r4
            goto L68
        L66:
            r0 = move-exception
            goto L62
        L68:
            throw r5     // Catch: java.lang.Throwable -> L69
        L69:
            r2 = move-exception
            kotlin.io.CloseableKt.closeFinally(r1, r5)     // Catch: java.io.FileNotFoundException -> L60
            throw r2     // Catch: java.io.FileNotFoundException -> L60
        L6e:
            r5 = move-exception
            r0 = r4
        L70:
            java.io.File r0 = r0.c()
            boolean r0 = r0.exists()
            if (r0 != 0) goto L7f
            com.google.android.gms.internal.ads.zzfxz r5 = com.google.android.gms.internal.ads.zzfxz.f7713a
            com.google.android.gms.internal.ads.zzfxw r5 = com.google.android.gms.internal.ads.zzfxz.b
            return r5
        L7f:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.g(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.datastore.core.DataStore
    /* renamed from: getData, reason: from getter */
    public final Flow getF953c() {
        return this.f953c;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1 r0 = (androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1 r0 = new androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L68
            if (r2 == r4) goto L5e
            r4 = 3
            if (r2 == r3) goto L3f
            if (r2 != r4) goto L37
            java.lang.Object r1 = r0.f
            java.lang.Object r0 = r0.f975c
            androidx.datastore.core.CorruptionException r0 = (androidx.datastore.core.CorruptionException) r0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.io.IOException -> L35
            return r1
        L35:
            r6 = move-exception
            goto L5a
        L37:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3f:
            java.lang.Object r2 = r0.f
            androidx.datastore.core.CorruptionException r2 = (androidx.datastore.core.CorruptionException) r2
            java.lang.Object r3 = r0.f975c
            androidx.datastore.core.SingleProcessDataStore r3 = (androidx.datastore.core.SingleProcessDataStore) r3
            kotlin.ResultKt.throwOnFailure(r6)
            r0.f975c = r2     // Catch: java.io.IOException -> L58
            r0.f = r6     // Catch: java.io.IOException -> L58
            r0.i = r4     // Catch: java.io.IOException -> L58
            java.lang.Object r0 = r3.j(r6, r0)     // Catch: java.io.IOException -> L58
            if (r0 != r1) goto L57
            goto L75
        L57:
            return r6
        L58:
            r6 = move-exception
            r0 = r2
        L5a:
            kotlin.ExceptionsKt.addSuppressed(r0, r6)
            throw r0
        L5e:
            java.lang.Object r1 = r0.f975c
            androidx.datastore.core.SingleProcessDataStore r1 = (androidx.datastore.core.SingleProcessDataStore) r1
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: androidx.datastore.core.CorruptionException -> L66
            return r6
        L66:
            r6 = move-exception
            goto L79
        L68:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.f975c = r5     // Catch: androidx.datastore.core.CorruptionException -> L77
            r0.i = r4     // Catch: androidx.datastore.core.CorruptionException -> L77
            java.lang.Object r6 = r5.g(r0)     // Catch: androidx.datastore.core.CorruptionException -> L77
            if (r6 != r1) goto L76
        L75:
            return r1
        L76:
            return r6
        L77:
            r6 = move-exception
            r1 = r5
        L79:
            androidx.datastore.core.CorruptionHandler r2 = r1.b
            r0.f975c = r1
            r0.f = r6
            r0.i = r3
            r2.a(r6)
            r6 = 0
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.h(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(kotlin.coroutines.CoroutineContext r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11, kotlin.jvm.functions.Function2 r12) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1
            if (r0 == 0) goto L13
            r0 = r11
            androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1 r0 = (androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1) r0
            int r1 = r0.j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.j = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1 r0 = new androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.j
            java.lang.String r3 = "Data in DataStore was mutated but DataStore is only compatible with Immutable types."
            r4 = 0
            r5 = 0
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L49
            if (r2 == r7) goto L3d
            if (r2 != r6) goto L35
            java.lang.Object r10 = r0.f
            androidx.datastore.core.SingleProcessDataStore r12 = r0.f976c
            kotlin.ResultKt.throwOnFailure(r11)
            goto La2
        L35:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L3d:
            java.lang.Object r10 = r0.g
            java.lang.Object r12 = r0.f
            androidx.datastore.core.Data r12 = (androidx.datastore.core.Data) r12
            androidx.datastore.core.SingleProcessDataStore r2 = r0.f976c
            kotlin.ResultKt.throwOnFailure(r11)
            goto L7c
        L49:
            kotlin.ResultKt.throwOnFailure(r11)
            kotlinx.coroutines.flow.MutableStateFlow r11 = r9.f
            java.lang.Object r11 = r11.getValue()
            androidx.datastore.core.Data r11 = (androidx.datastore.core.Data) r11
            java.lang.Object r2 = r11.f941a
            if (r2 == 0) goto L5d
            int r2 = r2.hashCode()
            goto L5e
        L5d:
            r2 = r4
        L5e:
            int r8 = r11.b
            if (r2 != r8) goto Lb9
            java.lang.Object r2 = r11.f941a
            androidx.datastore.core.SingleProcessDataStore$transformAndWrite$newData$1 r8 = new androidx.datastore.core.SingleProcessDataStore$transformAndWrite$newData$1
            r8.<init>(r12, r2, r5)
            r0.f976c = r9
            r0.f = r11
            r0.g = r2
            r0.j = r7
            java.lang.Object r10 = kotlinx.coroutines.BuildersKt.c(r10, r0, r8)
            if (r10 != r1) goto L78
            goto L9f
        L78:
            r12 = r11
            r11 = r10
            r10 = r2
            r2 = r9
        L7c:
            java.lang.Object r7 = r12.f941a
            if (r7 == 0) goto L85
            int r7 = r7.hashCode()
            goto L86
        L85:
            r7 = r4
        L86:
            int r12 = r12.b
            if (r7 != r12) goto Lb3
            boolean r12 = kotlin.jvm.internal.Intrinsics.areEqual(r10, r11)
            if (r12 == 0) goto L91
            return r10
        L91:
            r0.f976c = r2
            r0.f = r11
            r0.g = r5
            r0.j = r6
            java.lang.Object r10 = r2.j(r11, r0)
            if (r10 != r1) goto La0
        L9f:
            return r1
        La0:
            r10 = r11
            r12 = r2
        La2:
            kotlinx.coroutines.flow.MutableStateFlow r11 = r12.f
            androidx.datastore.core.Data r12 = new androidx.datastore.core.Data
            if (r10 == 0) goto Lac
            int r4 = r10.hashCode()
        Lac:
            r12.<init>(r4, r10)
            r11.setValue(r12)
            return r10
        Lb3:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            r10.<init>(r3)
            throw r10
        Lb9:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            r10.<init>(r3)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.i(kotlin.coroutines.CoroutineContext, kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.jvm.functions.Function2):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a9 A[Catch: IOException -> 0x00c0, TRY_ENTER, TryCatch #3 {IOException -> 0x00c0, blocks: (B:14:0x0099, B:19:0x00a9, B:20:0x00bf, B:27:0x00c8, B:28:0x00cb, B:44:0x006c, B:24:0x00c6), top: B:43:0x006c, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(java.lang.Object r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.j(java.lang.Object, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
