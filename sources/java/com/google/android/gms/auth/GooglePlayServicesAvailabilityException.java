package com.google.android.gms.auth;

import android.content.Intent;

/* loaded from: classes.dex */
public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {
    public final int h;

    public GooglePlayServicesAvailabilityException(int i, String str, Intent intent) {
        super(str, intent);
        this.h = i;
    }
}
