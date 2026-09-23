package com.google.android.gms.internal.ads;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.IntCompanionObject;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfyi extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Mutex f7721c;
    public /* synthetic */ Object f;
    public final /* synthetic */ zzfza g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfyi(zzfza zzfzaVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = zzfzaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= IntCompanionObject.MIN_VALUE;
        return this.g.i(this);
    }
}
