package com.google.android.gms.internal.ads;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.IntCompanionObject;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfym extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Object f7724c;
    public MutexImpl f;
    public /* synthetic */ Object g;
    public final /* synthetic */ zzfza h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfym(zzfza zzfzaVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.h = zzfzaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= IntCompanionObject.MIN_VALUE;
        return this.h.k(this);
    }
}
