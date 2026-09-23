package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Predicate;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzbqs implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbnn f4833a;

    public /* synthetic */ zzbqs(zzbnn zzbnnVar) {
        this.f4833a = zzbnnVar;
    }

    @Override // com.google.android.gms.common.util.Predicate
    public final /* synthetic */ boolean apply(Object obj) {
        zzbnn zzbnnVar = (zzbnn) obj;
        if ((zzbnnVar instanceof zzbqn) && ((zzbqn) zzbnnVar).f4828a.equals(this.f4833a)) {
            return true;
        }
        return false;
    }
}
