package com.google.mlkit.vision.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

@KeepForSdk
/* loaded from: classes3.dex */
public class MultiFlavorDetectorCreator {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f12812a = new HashMap();

    @KeepForSdk
    /* loaded from: classes3.dex */
    public interface DetectorCreator<DetectorT extends MultiFlavorDetector, OptionsT extends DetectorOptions<DetectorT>> {
    }

    @KeepForSdk
    /* loaded from: classes3.dex */
    public interface DetectorOptions<DetectorT> {
    }

    @KeepForSdk
    /* loaded from: classes3.dex */
    public interface MultiFlavorDetector {
    }

    @KeepForSdk
    /* loaded from: classes3.dex */
    public static class Registration {
    }

    public MultiFlavorDetectorCreator(Set set) {
        HashMap hashMap = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((Registration) it.next()).getClass();
            if (!this.f12812a.containsKey(null) || ((Integer) Preconditions.checkNotNull((Integer) hashMap.get(null))).intValue() <= 0) {
                this.f12812a.put(null, null);
                hashMap.put(null, 0);
            }
        }
    }
}
