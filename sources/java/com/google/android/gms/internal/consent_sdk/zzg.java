package com.google.android.gms.internal.consent_sdk;

import android.util.Log;
import com.google.android.ump.FormError;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzg extends Exception {
    public zzg(int i, String str) {
        super(str);
    }

    public final FormError a() {
        if (getCause() == null) {
            Log.w("UserMessagingPlatform", super.getMessage());
        } else {
            Log.w("UserMessagingPlatform", super.getMessage(), getCause());
        }
        return new FormError(super.getMessage());
    }

    public zzg(int i, IOException iOException, String str) {
        super(str, iOException);
    }
}
