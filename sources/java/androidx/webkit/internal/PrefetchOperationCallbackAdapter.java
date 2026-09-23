package androidx.webkit.internal;

import org.chromium.support_lib_boundary.PrefetchOperationCallbackBoundaryInterface;

/* loaded from: classes.dex */
public class PrefetchOperationCallbackAdapter {

    /* renamed from: androidx.webkit.internal.PrefetchOperationCallbackAdapter$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements PrefetchOperationCallbackBoundaryInterface {
        @Override // org.chromium.support_lib_boundary.PrefetchOperationCallbackBoundaryInterface
        public final void onFailure(int i, String str, int i2) {
            if (i == 1) {
                new Exception(str);
                throw null;
            }
            new Exception(str);
            throw null;
        }

        @Override // org.chromium.support_lib_boundary.PrefetchOperationCallbackBoundaryInterface
        public final void onSuccess() {
            throw null;
        }
    }
}
