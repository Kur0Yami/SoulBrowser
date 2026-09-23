package com.google.android.gms.internal.play_billing;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzi {
    public static /* synthetic */ boolean a(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, zzo zzoVar, Object obj, Object obj2) {
        while (!atomicReferenceFieldUpdater.compareAndSet(zzoVar, obj, obj2)) {
            if (atomicReferenceFieldUpdater.get(zzoVar) != obj && atomicReferenceFieldUpdater.get(zzoVar) != obj) {
                return false;
            }
        }
        return true;
    }
}
