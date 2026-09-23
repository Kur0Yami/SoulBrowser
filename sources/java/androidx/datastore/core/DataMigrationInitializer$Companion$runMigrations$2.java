package androidx.datastore.core;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u0002H\u0001H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "startingData"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2", f = "DataMigrationInitializer.kt", i = {0, 0}, l = {44, 46}, m = "invokeSuspend", n = {"migration", "data"}, s = {"L$2", "L$3"})
/* loaded from: classes.dex */
public final class DataMigrationInitializer$Companion$runMigrations$2 extends SuspendLambda implements Function2<Object, Continuation<Object>, Object> {

    /* renamed from: c, reason: collision with root package name */
    public Iterator f944c;
    public DataMigration f;
    public Object g;
    public int h;
    public /* synthetic */ Object i;
    public final /* synthetic */ List j;
    public final /* synthetic */ ArrayList k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataMigrationInitializer$Companion$runMigrations$2(List list, ArrayList arrayList, Continuation continuation) {
        super(2, continuation);
        this.j = list;
        this.k = arrayList;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DataMigrationInitializer$Companion$runMigrations$2 dataMigrationInitializer$Companion$runMigrations$2 = new DataMigrationInitializer$Companion$runMigrations$2(this.j, this.k, continuation);
        dataMigrationInitializer$Companion$runMigrations$2.i = obj;
        return dataMigrationInitializer$Companion$runMigrations$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<Object> continuation) {
        return ((DataMigrationInitializer$Companion$runMigrations$2) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0068 -> B:6:0x003e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.h
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L31
            if (r1 == r3) goto L20
            if (r1 != r2) goto L18
            java.util.Iterator r1 = r8.f944c
            java.lang.Object r4 = r8.i
            java.util.List r4 = (java.util.List) r4
            kotlin.ResultKt.throwOnFailure(r9)
            goto L3e
        L18:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L20:
            java.lang.Object r1 = r8.g
            androidx.datastore.core.DataMigration r4 = r8.f
            java.util.Iterator r5 = r8.f944c
            java.lang.Object r6 = r8.i
            java.util.List r6 = (java.util.List) r6
            kotlin.ResultKt.throwOnFailure(r9)
            r7 = r6
            r6 = r4
            r4 = r7
            goto L60
        L31:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.i
            java.util.List r1 = r8.j
            java.util.Iterator r1 = r1.iterator()
            java.util.ArrayList r4 = r8.k
        L3e:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto L82
            java.lang.Object r5 = r1.next()
            androidx.datastore.core.DataMigration r5 = (androidx.datastore.core.DataMigration) r5
            r8.i = r4
            r8.f944c = r1
            r8.f = r5
            r8.g = r9
            r8.h = r3
            java.lang.Boolean r6 = r5.i(r8)
            if (r6 != r0) goto L5b
            return r0
        L5b:
            r7 = r1
            r1 = r9
            r9 = r6
            r6 = r5
            r5 = r7
        L60:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 != 0) goto L6b
            r9 = r1
            r1 = r5
            goto L3e
        L6b:
            androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1 r9 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1
            r0 = 0
            r9.<init>(r6, r0)
            r4.add(r9)
            r8.i = r4
            r8.f944c = r5
            r8.f = r0
            r8.g = r0
            r8.h = r2
            r6.h()
            throw r0
        L82:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
