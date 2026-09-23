package com.google.android.gms.internal.cast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
final class zzec extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action != null) {
            if (!action.equals("android.intent.action.SCREEN_ON")) {
                if (!action.equals("android.intent.action.SCREEN_OFF")) {
                    return;
                } else {
                    throw null;
                }
            }
            throw null;
        }
    }
}
