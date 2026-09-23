package com.google.android.material.internal;

import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import com.google.android.material.internal.MaterialCheckable;

@RestrictTo
@UiThread
/* loaded from: classes3.dex */
public class CheckableGroup<T extends MaterialCheckable<T>> {

    /* renamed from: com.google.android.material.internal.CheckableGroup$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements MaterialCheckable.OnCheckedChangeListener<MaterialCheckable<Object>> {
        @Override // com.google.android.material.internal.MaterialCheckable.OnCheckedChangeListener
        public final void a(Object obj, boolean z) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public interface OnCheckedStateChangeListener {
    }
}
