package com.google.android.gms.internal.ads;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfyw extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Object f7734c;
    public long f;
    public /* synthetic */ Object g;
    public final /* synthetic */ zzfza h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfyw(zzfza zzfzaVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.h = zzfzaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= IntCompanionObject.MIN_VALUE;
        return this.h.f(this);
    }
}
