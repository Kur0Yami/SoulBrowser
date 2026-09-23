package com.google.mlkit.common.sdkinternal;

import j$.util.DesugarCollections;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public class Cleaner {

    /* renamed from: a, reason: collision with root package name */
    public final ReferenceQueue f12765a = new ReferenceQueue();
    public final Set b = DesugarCollections.synchronizedSet(new HashSet());

    /* loaded from: classes3.dex */
    public interface Cleanable {
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.mlkit.common.sdkinternal.zza] */
    public static Cleaner a() {
        Cleaner cleaner = new Cleaner();
        ?? obj = new Object();
        final ReferenceQueue referenceQueue = cleaner.f12765a;
        final Set set = cleaner.b;
        set.add(new zzd(cleaner, referenceQueue, set, obj));
        Thread thread = new Thread(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.zzb
            @Override // java.lang.Runnable
            public final void run() {
                ReferenceQueue referenceQueue2 = referenceQueue;
                while (!set.isEmpty()) {
                    try {
                        zzd zzdVar = (zzd) referenceQueue2.remove();
                        if (zzdVar.f12786c.remove(zzdVar)) {
                            zzdVar.clear();
                            zzdVar.f.getClass();
                        }
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }, "MlKitCleaner");
        thread.setDaemon(true);
        thread.start();
        return cleaner;
    }
}
