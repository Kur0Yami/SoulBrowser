package com.google.android.gms.auth;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.internal.auth.zzby;

/* loaded from: classes.dex */
final class zzj implements zzk {
    @Override // com.google.android.gms.auth.zzk
    public final Object a(IBinder iBinder) {
        zzby zzbyVar;
        Bundle zzg = com.google.android.gms.internal.auth.zze.f2(iBinder).zzg();
        zzl.d(zzg);
        String string = zzg.getString("Error");
        Intent intent = (Intent) zzg.getParcelable("userRecoveryIntent");
        PendingIntent pendingIntent = (PendingIntent) zzg.getParcelable("userRecoveryPendingIntent");
        zzby[] values = zzby.values();
        int length = values.length;
        int i = 0;
        while (true) {
            if (i < length) {
                zzbyVar = values[i];
                if (zzbyVar.f9499c.equals(string)) {
                    break;
                }
                i++;
            } else {
                zzbyVar = zzby.UNKNOWN;
                break;
            }
        }
        if (zzby.SUCCESS.equals(zzbyVar)) {
            return Boolean.TRUE;
        }
        zzl.g(null, "requestGoogleAccountsAccess", string, intent, pendingIntent);
        throw null;
    }
}
