package androidx.datastore.core;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzfxz;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.ContextScope;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/datastore/core/DataStoreFactory;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "datastore-core"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class DataStoreFactory {
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, androidx.datastore.core.CorruptionHandler] */
    public static SingleProcessDataStore a(List migrations, ContextScope scope, Function0 produceFile) {
        zzfxz serializer = zzfxz.f7713a;
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        ?? obj = new Object();
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        return new SingleProcessDataStore(produceFile, CollectionsKt.listOf(new DataMigrationInitializer$Companion$getInitializer$1(migrations, null)), obj, scope);
    }
}
