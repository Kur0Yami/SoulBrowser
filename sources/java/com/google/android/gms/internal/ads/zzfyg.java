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
public final class zzfyg extends SuspendLambda implements Function2 {

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f7719c;
    public final /* synthetic */ String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfyg(String str, Continuation continuation) {
        super(2, continuation);
        this.f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzfyg zzfygVar = new zzfyg(this.f, continuation);
        zzfygVar.f7719c = obj;
        return zzfygVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfyg) create((zzfxw) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzfxu builder = (zzfxu) ((zzfxw) this.f7719c).v();
        Intrinsics.checkNotNullParameter(builder, "builder");
        Map unmodifiableMap = DesugarCollections.unmodifiableMap(((zzfxw) builder.f).E());
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "getQueryIdToAdQualityDataMapMap(...)");
        Intrinsics.checkNotNullParameter(new zzidv(unmodifiableMap), "<this>");
        String key = this.f;
        Intrinsics.checkNotNullParameter(key, "key");
        key.getClass();
        builder.k();
        ((zzfxw) builder.f).H().remove(key);
        zziar m = builder.m();
        Intrinsics.checkNotNullExpressionValue(m, "build(...)");
        return (zzfxw) m;
    }
}
