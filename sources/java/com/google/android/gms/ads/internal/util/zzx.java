package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbgk;
import java.util.Locale;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@TargetApi(28)
/* loaded from: classes.dex */
public class zzx extends zzv {
    public static final WindowInsets a(Activity activity, View view, WindowInsets windowInsets) {
        int i;
        if (com.google.android.gms.ads.internal.zzt.zzh().i().zzu() == null) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (displayCutout != null) {
                zzj i2 = com.google.android.gms.ads.internal.zzt.zzh().i();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    Locale locale = Locale.US;
                    int i3 = rect.left;
                    int i4 = rect.top;
                    int i5 = rect.right;
                    int i6 = rect.bottom;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i3);
                    sb.append(",");
                    sb.append(i4);
                    sb.append(",");
                    sb.append(i5);
                    String r = a.r(i6, ",", sb);
                    if (!TextUtils.isEmpty(str)) {
                        str = str.concat("|");
                    }
                    str = str.concat(r);
                }
                i2.zzv(str);
            } else {
                com.google.android.gms.ads.internal.zzt.zzh().i().zzv(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
        }
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        i = attributes.layoutInDisplayCutoutMode;
        if (2 != i) {
            attributes.layoutInDisplayCutoutMode = 2;
            window.setAttributes(attributes);
        }
        return view.onApplyWindowInsets(windowInsets);
    }

    @Override // com.google.android.gms.ads.internal.util.zzz
    public final void zzj(final Activity activity) {
        int i;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K1)).booleanValue() && com.google.android.gms.ads.internal.zzt.zzh().i().zzu() == null && !activity.isInMultiWindowMode()) {
            Window window = activity.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            i = attributes.layoutInDisplayCutoutMode;
            if (1 != i) {
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
            }
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.google.android.gms.ads.internal.util.zzw
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final /* synthetic */ WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return zzx.a(activity, view, windowInsets);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzz
    public final int zzk(AudioManager audioManager) {
        return audioManager.getStreamMinVolume(3);
    }
}
