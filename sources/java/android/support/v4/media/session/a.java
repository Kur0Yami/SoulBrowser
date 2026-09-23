package android.support.v4.media.session;

import android.content.Context;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ MediaSession a(Context context, String str, Bundle bundle) {
        return new MediaSession(context, str, bundle);
    }

    public static /* synthetic */ WindowInsets.Builder b() {
        return new WindowInsets.Builder();
    }

    public static /* synthetic */ WindowInsets.Builder c(WindowInsets windowInsets) {
        return new WindowInsets.Builder(windowInsets);
    }
}
