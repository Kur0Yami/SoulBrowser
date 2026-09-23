package androidx.webkit.internal;

import android.webkit.SafeBrowsingResponse;
import androidx.annotation.RequiresApi;

@RequiresApi
/* loaded from: classes.dex */
public class ApiHelperForOMR1 {
    public static void a(SafeBrowsingResponse safeBrowsingResponse) {
        safeBrowsingResponse.showInterstitial(true);
    }
}
