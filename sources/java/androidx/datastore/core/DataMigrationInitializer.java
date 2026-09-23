package androidx.datastore.core;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/datastore/core/DataMigrationInitializer;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "datastore-core"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class DataMigrationInitializer<T> {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/datastore/core/DataMigrationInitializer$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "datastore-core"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Throwable, T] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0084 -> B:13:0x0067). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0087 -> B:13:0x0067). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final java.lang.Object a(java.util.List r6, androidx.datastore.core.InitializerApi r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
            /*
                boolean r0 = r8 instanceof androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
                if (r0 == 0) goto L13
                r0 = r8
                androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = (androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1) r0
                int r1 = r0.h
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.h = r1
                goto L18
            L13:
                androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
                r0.<init>(r8)
            L18:
                java.lang.Object r8 = r0.g
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.h
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L44
                if (r2 == r4) goto L3c
                if (r2 != r3) goto L34
                java.util.Iterator r6 = r0.f
                java.io.Serializable r7 = r0.f943c
                kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
                kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L32
                goto L67
            L32:
                r8 = move-exception
                goto L80
            L34:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L3c:
                java.io.Serializable r6 = r0.f943c
                java.util.List r6 = (java.util.List) r6
                kotlin.ResultKt.throwOnFailure(r8)
                goto L5e
            L44:
                kotlin.ResultKt.throwOnFailure(r8)
                java.util.ArrayList r8 = new java.util.ArrayList
                r8.<init>()
                androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2 r2 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2
                r5 = 0
                r2.<init>(r6, r8, r5)
                r0.f943c = r8
                r0.h = r4
                java.lang.Object r6 = r7.a(r2, r0)
                if (r6 != r1) goto L5d
                goto L9a
            L5d:
                r6 = r8
            L5e:
                kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef
                r7.<init>()
                java.util.Iterator r6 = r6.iterator()
            L67:
                boolean r8 = r6.hasNext()
                if (r8 == 0) goto L92
                java.lang.Object r8 = r6.next()
                kotlin.jvm.functions.Function1 r8 = (kotlin.jvm.functions.Function1) r8
                r0.f943c = r7     // Catch: java.lang.Throwable -> L32
                r0.f = r6     // Catch: java.lang.Throwable -> L32
                r0.h = r3     // Catch: java.lang.Throwable -> L32
                java.lang.Object r8 = r8.invoke(r0)     // Catch: java.lang.Throwable -> L32
                if (r8 != r1) goto L67
                goto L9a
            L80:
                T r2 = r7.element
                if (r2 != 0) goto L87
                r7.element = r8
                goto L67
            L87:
                kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
                T r2 = r7.element
                java.lang.Throwable r2 = (java.lang.Throwable) r2
                kotlin.ExceptionsKt.addSuppressed(r2, r8)
                goto L67
            L92:
                T r6 = r7.element
                java.lang.Throwable r6 = (java.lang.Throwable) r6
                if (r6 != 0) goto L9b
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
            L9a:
                return r1
            L9b:
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataMigrationInitializer.Companion.a(java.util.List, androidx.datastore.core.InitializerApi, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }
    }
}
