package androidx.activity;

import android.app.PictureInPictureParams;
import android.graphics.Rect;
import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@RequiresApi
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/activity/Api26Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Api26Impl {
    public static void a(Rect hint) {
        Intrinsics.checkNotNullParameter(null, "activity");
        Intrinsics.checkNotNullParameter(hint, "hint");
        new PictureInPictureParams.Builder().setSourceRectHint(hint).build();
        throw null;
    }
}
