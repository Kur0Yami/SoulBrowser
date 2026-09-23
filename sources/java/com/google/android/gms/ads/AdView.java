package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public final class AdView extends BaseAdView {
    public AdView(@NonNull Context context) {
        super(context);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    @NonNull
    public final VideoController zza() {
        return this.f2941c.zzy();
    }

    public AdView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
    }
}
