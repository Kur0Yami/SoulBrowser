package com.google.android.gms.auth.api.signin;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.dynamite.DynamiteModule;

@Deprecated
/* loaded from: classes.dex */
public class GoogleSignInClient extends GoogleApi<GoogleSignInOptions> {

    /* renamed from: a, reason: collision with root package name */
    public static int f3377a = 1;

    public final synchronized int g() {
        int i;
        try {
            i = f3377a;
            if (i == 1) {
                Context applicationContext = getApplicationContext();
                GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
                int isGooglePlayServicesAvailable = googleApiAvailability.isGooglePlayServicesAvailable(applicationContext, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                if (isGooglePlayServicesAvailable == 0) {
                    i = 4;
                    f3377a = 4;
                } else if (googleApiAvailability.getErrorResolutionIntent(applicationContext, isGooglePlayServicesAvailable, null) == null && DynamiteModule.a(applicationContext, "com.google.android.gms.auth.api.fallback") != 0) {
                    i = 3;
                    f3377a = 3;
                } else {
                    i = 2;
                    f3377a = 2;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return i;
    }
}
