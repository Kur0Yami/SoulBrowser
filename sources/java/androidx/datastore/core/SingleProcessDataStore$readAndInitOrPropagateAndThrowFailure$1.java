package androidx.datastore.core;

import com.google.api.client.http.HttpStatusCodes;
import java.util.LinkedHashSet;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", i = {0}, l = {HttpStatusCodes.STATUS_CODE_FOUND}, m = "readAndInitOrPropagateAndThrowFailure", n = {"this"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public SingleProcessDataStore f972c;
    public /* synthetic */ Object f;
    public final /* synthetic */ SingleProcessDataStore g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1(SingleProcessDataStore singleProcessDataStore, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= IntCompanionObject.MIN_VALUE;
        LinkedHashSet linkedHashSet = SingleProcessDataStore.i;
        return this.g.e(this);
    }
}
