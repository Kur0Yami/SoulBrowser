package androidx.appcompat.view;

import android.content.Context;
import android.content.res.Configuration;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public class ActionBarPolicy {

    /* renamed from: a, reason: collision with root package name */
    public Context f142a;

    public final int a() {
        Configuration configuration = this.f142a.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp <= 600 && i <= 600) {
            if (i <= 960 || i2 <= 720) {
                if (i <= 720 || i2 <= 960) {
                    if (i < 500) {
                        if (i <= 640 || i2 <= 480) {
                            if (i <= 480 || i2 <= 640) {
                                if (i >= 360) {
                                    return 3;
                                }
                                return 2;
                            }
                            return 4;
                        }
                        return 4;
                    }
                    return 4;
                }
                return 5;
            }
            return 5;
        }
        return 5;
    }
}
