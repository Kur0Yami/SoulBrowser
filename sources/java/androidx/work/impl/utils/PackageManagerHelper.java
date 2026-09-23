package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.support.v4.media.a;
import androidx.work.Logger;

/* loaded from: classes.dex */
public class PackageManagerHelper {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1950a = Logger.e("PackageManagerHelper");

    public static void a(Context context, Class cls, boolean z) {
        int i;
        String str;
        String str2 = "disabled";
        String str3 = f1950a;
        try {
            PackageManager packageManager = context.getPackageManager();
            ComponentName componentName = new ComponentName(context, cls.getName());
            if (z) {
                i = 1;
            } else {
                i = 2;
            }
            packageManager.setComponentEnabledSetting(componentName, i, 1);
            Logger c2 = Logger.c();
            String name = cls.getName();
            if (!z) {
                str = "disabled";
            } else {
                str = "enabled";
            }
            c2.a(str3, name + " " + str, new Throwable[0]);
        } catch (Exception e) {
            Logger c3 = Logger.c();
            String name2 = cls.getName();
            if (z) {
                str2 = "enabled";
            }
            c3.a(str3, a.D(name2, " could not be ", str2), e);
        }
    }
}
