package androidx.browser.customtabs;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.RequiresApi;

@RequiresApi
/* loaded from: classes.dex */
class Api33Impl {
    public static Object a(String str, Bundle bundle) {
        return bundle.getParcelable(str, Uri.class);
    }
}
