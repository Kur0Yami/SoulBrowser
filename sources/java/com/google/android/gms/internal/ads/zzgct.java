package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.InputEvent;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public interface zzgct {
    ListenableFuture a(Context context, View view, Activity activity);

    ListenableFuture b(Context context);

    void c(InputEvent inputEvent);

    ListenableFuture d(Context context, String str, View view);

    String zza();

    ListenableFuture zzb();

    int zzg();
}
