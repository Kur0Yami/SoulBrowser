package androidx.core.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class AppOpsManagerCompat {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static String a(Context context) {
            return context.getOpPackageName();
        }
    }

    public static int a(int i, Context context, String str, String str2) {
        int checkOpNoThrow;
        if (Build.VERSION.SDK_INT >= 29) {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
            int callingUid = Binder.getCallingUid();
            if (appOpsManager == null) {
                checkOpNoThrow = 1;
            } else {
                checkOpNoThrow = appOpsManager.checkOpNoThrow(str, callingUid, str2);
            }
            if (checkOpNoThrow != 0) {
                return checkOpNoThrow;
            }
            String a2 = Api29Impl.a(context);
            if (appOpsManager == null) {
                return 1;
            }
            return appOpsManager.checkOpNoThrow(str, i, a2);
        }
        return ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(str, str2);
    }
}
