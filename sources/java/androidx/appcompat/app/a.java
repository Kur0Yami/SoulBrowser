package androidx.appcompat.app;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.app.AppLocalesStorageHelper;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f126c;
    public final /* synthetic */ Context f;

    public /* synthetic */ a(Context context, int i) {
        this.f126c = i;
        this.f = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f126c;
        Context context = this.f;
        switch (i) {
            case 0:
                if (Build.VERSION.SDK_INT >= 33) {
                    AppCompatDelegate.SerialExecutor serialExecutor = AppCompatDelegate.f84c;
                    ComponentName componentName = new ComponentName(context, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                    if (context.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                        if (AppCompatDelegate.h().d()) {
                            String b = AppLocalesStorageHelper.b(context);
                            Object systemService = context.getSystemService("locale");
                            if (systemService != null) {
                                AppCompatDelegate.Api33Impl.b(systemService, AppCompatDelegate.Api24Impl.a(b));
                            }
                        }
                        context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                    }
                }
                AppCompatDelegate.j = true;
                return;
            default:
                AppCompatDelegate.G(context);
                return;
        }
    }
}
