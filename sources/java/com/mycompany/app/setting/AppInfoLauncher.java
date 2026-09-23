package com.mycompany.app.setting;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Process;
import android.provider.Settings;

/**
 * Opens the system App info screen for the running package in the current user
 * profile (avoids the personal/work "Complete action using" chooser).
 */
public final class AppInfoLauncher {
    private AppInfoLauncher() {
    }

    public static void open(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
            intent.setData(Uri.fromParts("package", activity.getPackageName(), null));
            // Tell Settings which profile owns this process so dual-profile installs
            // do not show a Personal/Work disambiguation dialog.
            intent.putExtra(Intent.EXTRA_USER, Process.myUserHandle());
            ResolveInfo resolved = activity.getPackageManager().resolveActivity(
                    intent, PackageManager.MATCH_DEFAULT_ONLY);
            if (resolved != null && resolved.activityInfo != null) {
                intent.setClassName(
                        resolved.activityInfo.packageName, resolved.activityInfo.name);
            }
            activity.startActivity(intent);
        } catch (Exception ignored) {
        }
    }
}
