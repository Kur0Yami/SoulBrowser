package com.google.mlkit.common.sdkinternal;

import com.google.mlkit.common.sdkinternal.Cleaner;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Set;

/* loaded from: classes3.dex */
final class zzd extends PhantomReference implements Cleaner.Cleanable {

    /* renamed from: c, reason: collision with root package name */
    public final Set f12786c;
    public final zza f;

    public /* synthetic */ zzd(Cleaner cleaner, ReferenceQueue referenceQueue, Set set, zza zzaVar) {
        super(cleaner, referenceQueue);
        this.f12786c = set;
        this.f = zzaVar;
    }
}
