package androidx.profileinstaller;

import android.content.Context;
import androidx.annotation.RequiresApi;
import java.io.File;

/* loaded from: classes.dex */
class BenchmarkOperation {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21ContextHelper {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24ContextHelper {
        public static File a(Context context) {
            return context.createDeviceProtectedStorageContext().getCodeCacheDir();
        }
    }

    public static boolean a(File file) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return false;
            }
            boolean z = true;
            for (File file2 : listFiles) {
                if (a(file2) && z) {
                    z = true;
                } else {
                    z = false;
                }
            }
            return z;
        }
        file.delete();
        return true;
    }
}
