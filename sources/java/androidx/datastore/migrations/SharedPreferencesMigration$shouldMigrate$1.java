package androidx.datastore.migrations;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.datastore.migrations.SharedPreferencesMigration", f = "SharedPreferencesMigration.kt", i = {0}, l = {147}, m = "shouldMigrate", n = {"this"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class SharedPreferencesMigration$shouldMigrate$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public SharedPreferencesMigration f980c;
    public /* synthetic */ Object f;
    public final /* synthetic */ SharedPreferencesMigration g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration$shouldMigrate$1(SharedPreferencesMigration sharedPreferencesMigration, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = sharedPreferencesMigration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= IntCompanionObject.MIN_VALUE;
        return this.g.i(this);
    }
}
