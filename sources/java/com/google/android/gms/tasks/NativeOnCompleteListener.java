package com.google.android.gms.tasks;

import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes3.dex */
public class NativeOnCompleteListener implements OnCompleteListener<Object> {
    @KeepForSdk
    public native void nativeOnComplete(long j, @Nullable Object obj, boolean z, boolean z2, @Nullable String str);

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        Object obj;
        String str;
        Exception l;
        if (task.p()) {
            obj = task.m();
            str = null;
        } else if (!task.n() && (l = task.l()) != null) {
            str = l.getMessage();
            obj = null;
        } else {
            obj = null;
            str = null;
        }
        nativeOnComplete(0L, obj, task.p(), task.n(), str);
    }
}
