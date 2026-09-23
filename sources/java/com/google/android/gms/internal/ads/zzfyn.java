package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfyn extends SuspendLambda implements Function2 {

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f7725c;
    public final /* synthetic */ zzfxs f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfyn(zzfxs zzfxsVar, Continuation continuation) {
        super(2, continuation);
        this.f = zzfxsVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzfyn zzfynVar = new zzfyn(this.f, continuation);
        zzfynVar.f7725c = obj;
        return zzfynVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfyn) create((zzfxw) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzfxu builder = (zzfxu) ((zzfxw) this.f7725c).v();
        Intrinsics.checkNotNullParameter(builder, "builder");
        Map unmodifiableMap = DesugarCollections.unmodifiableMap(((zzfxw) builder.f).E());
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "getQueryIdToAdQualityDataMapMap(...)");
        zzidv zzidvVar = new zzidv(unmodifiableMap);
        zzfxs value = this.f;
        String key = value.G();
        Intrinsics.checkNotNullExpressionValue(key, "getGwsQueryId(...)");
        Intrinsics.checkNotNullParameter(zzidvVar, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        key.getClass();
        builder.k();
        ((zzfxw) builder.f).H().put(key, value);
        zziar m = builder.m();
        Intrinsics.checkNotNullExpressionValue(m, "build(...)");
        return (zzfxw) m;
    }
}
