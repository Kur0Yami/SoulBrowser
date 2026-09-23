package androidx.mediarouter.app;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.media.MediaRouter2;
import androidx.annotation.RequiresApi;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class SystemOutputSwitcherDialogController {

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class Api23Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static MediaRouter2 a(Context context) {
            return MediaRouter2.getInstance(context);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api34Impl {
        public static boolean a(MediaRouter2 mediaRouter2) {
            return mediaRouter2.showSystemOutputSwitcher();
        }
    }

    public static boolean a(Context context) {
        ApplicationInfo applicationInfo;
        Intent putExtra = new Intent().addFlags(268435456).setAction("com.android.settings.panel.action.MEDIA_OUTPUT").putExtra("com.android.settings.panel.extra.PACKAGE_NAME", context.getPackageName());
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(putExtra, 0).iterator();
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            if (activityInfo != null && (applicationInfo = activityInfo.applicationInfo) != null && (applicationInfo.flags & 129) != 0) {
                putExtra.setPackage(applicationInfo.packageName);
                context.startActivity(putExtra);
                return true;
            }
        }
        return false;
    }
}
