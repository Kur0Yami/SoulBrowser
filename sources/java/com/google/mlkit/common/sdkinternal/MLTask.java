package com.google.mlkit.common.sdkinternal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.mlkit.common.sdkinternal.MLTaskInput;
import com.google.mlkit.vision.text.Text;

@KeepForSdk
/* loaded from: classes3.dex */
public abstract class MLTask<T, S extends MLTaskInput> extends ModelResource {
    public abstract Text d(MLTaskInput mLTaskInput);
}
