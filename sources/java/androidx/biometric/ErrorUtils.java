package androidx.biometric;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
class ErrorUtils {
    public static String a(Context context, int i) {
        if (context == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (i != 1) {
            if (i != 7) {
                switch (i) {
                    case 9:
                        break;
                    case 10:
                        return context.getString(R.string.fingerprint_error_user_canceled);
                    case 11:
                        return context.getString(R.string.fingerprint_error_no_fingerprints);
                    case 12:
                        return context.getString(R.string.fingerprint_error_hw_not_present);
                    default:
                        Log.e("BiometricUtils", "Unknown error code: " + i);
                        return context.getString(R.string.default_error_msg);
                }
            }
            return context.getString(R.string.fingerprint_error_lockout);
        }
        return context.getString(R.string.fingerprint_error_hw_not_available);
    }
}
