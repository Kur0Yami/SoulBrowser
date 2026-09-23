package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzr extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzs f3162a;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean equals = Objects.equals(intent.getAction(), "android.intent.action.USER_PRESENT");
        zzs zzsVar = this.f3162a;
        if (equals) {
            zzsVar.e = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            zzsVar.e = false;
        }
    }
}
