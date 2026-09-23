package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import androidx.profileinstaller.BenchmarkOperation;
import androidx.profileinstaller.ProfileInstaller;
import java.io.File;

/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {

    /* loaded from: classes.dex */
    public class ResultDiagnostics implements ProfileInstaller.DiagnosticsCallback {
        public ResultDiagnostics() {
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public final void a() {
            ((ProfileInstaller.AnonymousClass2) ProfileInstaller.b).a();
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public final void b(int i, Object obj) {
            ((ProfileInstaller.AnonymousClass2) ProfileInstaller.b).b(i, obj);
            ProfileInstallReceiver.this.setResultCode(i);
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras;
        File codeCacheDir;
        if (intent != null) {
            String action = intent.getAction();
            if ("androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
                ProfileInstaller.b(context, new androidx.arch.core.executor.a(1), new ResultDiagnostics(), true);
                return;
            }
            if ("androidx.profileinstaller.action.SKIP_FILE".equals(action)) {
                Bundle extras2 = intent.getExtras();
                if (extras2 != null) {
                    String string = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
                    if ("WRITE_SKIP_FILE".equals(string)) {
                        ResultDiagnostics resultDiagnostics = new ResultDiagnostics();
                        try {
                            ProfileInstaller.a(context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0), context.getFilesDir());
                            resultDiagnostics.b(10, null);
                            return;
                        } catch (PackageManager.NameNotFoundException e) {
                            resultDiagnostics.b(7, e);
                            return;
                        }
                    }
                    if ("DELETE_SKIP_FILE".equals(string)) {
                        ResultDiagnostics resultDiagnostics2 = new ResultDiagnostics();
                        new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat").delete();
                        resultDiagnostics2.b(11, null);
                        return;
                    }
                    return;
                }
                return;
            }
            if ("androidx.profileinstaller.action.SAVE_PROFILE".equals(action)) {
                ResultDiagnostics resultDiagnostics3 = new ResultDiagnostics();
                if (Build.VERSION.SDK_INT >= 24) {
                    Process.sendSignal(Process.myPid(), 10);
                    resultDiagnostics3.b(12, null);
                    return;
                } else {
                    resultDiagnostics3.b(13, null);
                    return;
                }
            }
            if ("androidx.profileinstaller.action.BENCHMARK_OPERATION".equals(action) && (extras = intent.getExtras()) != null) {
                String string2 = extras.getString("EXTRA_BENCHMARK_OPERATION");
                ResultDiagnostics resultDiagnostics4 = new ResultDiagnostics();
                if ("DROP_SHADER_CACHE".equals(string2)) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        codeCacheDir = BenchmarkOperation.Api24ContextHelper.a(context);
                    } else {
                        codeCacheDir = context.getCodeCacheDir();
                    }
                    if (BenchmarkOperation.a(codeCacheDir)) {
                        resultDiagnostics4.b(14, null);
                        return;
                    } else {
                        resultDiagnostics4.b(15, null);
                        return;
                    }
                }
                resultDiagnostics4.b(16, null);
            }
        }
    }
}
