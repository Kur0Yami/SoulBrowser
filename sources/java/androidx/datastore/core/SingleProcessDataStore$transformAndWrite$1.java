package androidx.datastore.core;

import java.util.LinkedHashSet;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", i = {0, 0, 0}, l = {402, 410}, m = "transformAndWrite", n = {"this", "curDataAndHash", "curData"}, s = {"L$0", "L$1", "L$2"})
/* loaded from: classes.dex */
public final class SingleProcessDataStore$transformAndWrite$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public SingleProcessDataStore f976c;
    public Object f;
    public Object g;
    public /* synthetic */ Object h;
    public final /* synthetic */ SingleProcessDataStore i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$transformAndWrite$1(SingleProcessDataStore singleProcessDataStore, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.i = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= IntCompanionObject.MIN_VALUE;
        LinkedHashSet linkedHashSet = SingleProcessDataStore.i;
        return this.i.i(null, this, null);
    }
}
