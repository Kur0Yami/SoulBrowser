package androidx.datastore.core;

import java.io.FileInputStream;
import java.util.LinkedHashSet;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", i = {0}, l = {381}, m = "readData", n = {"this"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class SingleProcessDataStore$readData$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public SingleProcessDataStore f974c;
    public FileInputStream f;
    public /* synthetic */ Object g;
    public final /* synthetic */ SingleProcessDataStore h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$readData$1(SingleProcessDataStore singleProcessDataStore, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.h = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= IntCompanionObject.MIN_VALUE;
        LinkedHashSet linkedHashSet = SingleProcessDataStore.i;
        return this.h.g(this);
    }
}
