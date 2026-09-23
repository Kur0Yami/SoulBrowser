package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build;
import androidx.activity.g;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.profileinstaller.ProfileInstaller;
import com.google.android.gms.common.ConnectionResult;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;

@RequiresApi
@RestrictTo
/* loaded from: classes.dex */
public class DeviceProfileWriter {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f1472a;
    public final ProfileInstaller.DiagnosticsCallback b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f1473c;
    public final File d;
    public final String e;
    public boolean f = false;
    public DexProfileData[] g;
    public byte[] h;

    public DeviceProfileWriter(AssetManager assetManager, Executor executor, ProfileInstaller.DiagnosticsCallback diagnosticsCallback, String str, File file) {
        this.f1472a = executor;
        this.b = diagnosticsCallback;
        this.e = str;
        this.d = file;
        int i = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i >= 24 && i <= 34) {
            switch (i) {
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                case 25:
                    bArr = ProfileVersion.e;
                    break;
                case 26:
                    bArr = ProfileVersion.d;
                    break;
                case 27:
                    bArr = ProfileVersion.f1485c;
                    break;
                case 28:
                case 29:
                case 30:
                    bArr = ProfileVersion.b;
                    break;
                case 31:
                case 32:
                case 33:
                case 34:
                    bArr = ProfileVersion.f1484a;
                    break;
            }
        }
        this.f1473c = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message != null && message.contains("compressed")) {
                this.b.a();
                return null;
            }
            return null;
        }
    }

    public final void b(int i, Serializable serializable) {
        this.f1472a.execute(new g(i, 2, this, serializable));
    }
}
