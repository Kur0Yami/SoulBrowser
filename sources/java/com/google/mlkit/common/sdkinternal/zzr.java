package com.google.mlkit.common.sdkinternal;

import android.util.Log;
import com.google.android.gms.tasks.OnFailureListener;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzr implements OnFailureListener {
    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void c(Exception exc) {
        Log.e("OptionalModuleUtils", "Failed to check feature availability", exc);
    }
}
