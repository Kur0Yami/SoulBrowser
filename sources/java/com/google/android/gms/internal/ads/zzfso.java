package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
final class zzfso extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfsp f7628a = zzfsp.d;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean equals = intent.getAction().equals("android.intent.action.SCREEN_OFF");
        zzfsp zzfspVar = this.f7628a;
        if (equals) {
            zzfspVar.a(true, zzfspVar.f7630c);
            zzfspVar.b = true;
        } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
            zzfspVar.a(false, zzfspVar.f7630c);
            zzfspVar.b = false;
        }
    }
}
