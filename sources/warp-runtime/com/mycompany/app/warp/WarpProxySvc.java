package com.mycompany.app.warp;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * Runs the soulamz HTTP proxy binary and notifies {@link WarpController} when ready.
 */
public class WarpProxySvc extends Service {
    private static final String TAG = "WarpProxySvc";
    public static final String ACTION_START = "com.mycompany.app.warp.START";
    public static final String ACTION_STOP = "com.mycompany.app.warp.STOP";
    private static final String CHANNEL_ID = "warp_proxy";
    private static final int NOTIF_ID = 7142;

    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private Process process;
    private Thread readerThread;
    private final AtomicBoolean ready = new AtomicBoolean(false);

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        String action = intent != null ? intent.getAction() : ACTION_START;
        if (ACTION_STOP.equals(action)) {
            stopProxy();
            stopForeground(true);
            stopSelf();
            return START_NOT_STICKY;
        }
        ensureForeground();
        // Warm WebView provider so ProxyController calls do not fail with
        // "Must be started before we block!".
        try {
            new android.webkit.WebView(getApplicationContext()).destroy();
        } catch (Throwable t) {
            Log.w(TAG, "WebView warm-up failed", t);
        }
        if (process == null || !isProcessAlive(process)) {
            startProxy();
        }
        return START_STICKY;
    }

    private static boolean isProcessAlive(Process process) {
        try {
            process.exitValue();
            return false;
        } catch (IllegalThreadStateException e) {
            return true;
        }
    }

    @Override
    public void onDestroy() {
        stopProxy();
        super.onDestroy();
    }

    private void ensureForeground() {
        createChannel();
        Notification.Builder builder;
        if (Build.VERSION.SDK_INT >= 26) {
            builder = new Notification.Builder(this, CHANNEL_ID);
        } else {
            builder = new Notification.Builder(this);
        }
        String title = stringOr("warp", "WARP");
        String text = stringOr("warp_active", "WARP proxy is active");
        Notification notification =
                builder.setContentTitle(title)
                        .setContentText(text)
                        .setSmallIcon(android.R.drawable.ic_lock_lock)
                        .setOngoing(true)
                        .build();
        if (Build.VERSION.SDK_INT >= 29) {
            startForeground(NOTIF_ID, notification, ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC);
        } else {
            startForeground(NOTIF_ID, notification);
        }
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        NotificationManager nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        if (nm == null) {
            return;
        }
        NotificationChannel channel =
                new NotificationChannel(CHANNEL_ID, stringOr("warp", "WARP"), NotificationManager.IMPORTANCE_LOW);
        nm.createNotificationChannel(channel);
    }

    private String stringOr(String name, String fallback) {
        int id = getResources().getIdentifier(name, "string", getPackageName());
        if (id != 0) {
            return getString(id);
        }
        return fallback;
    }

    private void startProxy() {
        ready.set(false);
        try {
            File binary = new File(getApplicationInfo().nativeLibraryDir, "libsoulamz.so");
            if (!binary.isFile()) {
                throw new IllegalStateException("libsoulamz.so missing at " + binary.getAbsolutePath());
            }
            if (!binary.canExecute()) {
                //noinspection ResultOfMethodCallIgnored
                binary.setExecutable(true);
            }
            File storage = new File(getFilesDir(), "amz.state.json");
            String listen = PrefWarp.listenAddress(this);
            ProcessBuilder pb =
                    new ProcessBuilder(
                            binary.getAbsolutePath(),
                            "-listen",
                            listen,
                            "-storage",
                            storage.getAbsolutePath());
            pb.redirectErrorStream(true);
            pb.directory(getFilesDir());
            process = pb.start();
            readerThread =
                    new Thread(
                            () -> {
                                try (BufferedReader reader =
                                        new BufferedReader(
                                                new InputStreamReader(process.getInputStream()))) {
                                    String line;
                                    while ((line = reader.readLine()) != null) {
                                        Log.i(TAG, line);
                                        if (line.startsWith("READY ")) {
                                            ready.set(true);
                                            final String addr = line.substring(6).trim();
                                            mainHandler.post(
                                                    () -> WarpController.onProxyReady(WarpProxySvc.this, addr));
                                        }
                                    }
                                } catch (Exception e) {
                                    Log.e(TAG, "proxy reader failed", e);
                                } finally {
                                    int code = -1;
                                    try {
                                        if (process != null) {
                                            code = process.waitFor();
                                        }
                                    } catch (InterruptedException ignored) {
                                        Thread.currentThread().interrupt();
                                    }
                                    final int exit = code;
                                    mainHandler.post(
                                            () -> WarpController.onProxyExited(WarpProxySvc.this, exit));
                                }
                            },
                            "soulamz-stdout");
            readerThread.start();
        } catch (Exception e) {
            Log.e(TAG, "failed to start soulamz", e);
            mainHandler.post(() -> WarpController.onProxyFailed(this, e.getMessage()));
            stopForeground(true);
            stopSelf();
        }
    }

    private void stopProxy() {
        Process p = process;
        process = null;
        if (p != null) {
            p.destroy();
            try {
                Thread.sleep(500);
                if (isProcessAlive(p)) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        p.destroyForcibly();
                    } else {
                        p.destroy();
                    }
                }
                p.waitFor();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                if (Build.VERSION.SDK_INT >= 26) {
                    p.destroyForcibly();
                } else {
                    p.destroy();
                }
            }
        }
        ready.set(false);
    }

    public static void requestStart(Context context) {
        Intent i = new Intent(context, WarpProxySvc.class);
        i.setAction(ACTION_START);
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(i);
        } else {
            context.startService(i);
        }
    }

    public static void requestStop(Context context) {
        Intent i = new Intent(context, WarpProxySvc.class);
        i.setAction(ACTION_STOP);
        try {
            context.startService(i);
        } catch (Exception e) {
            context.stopService(new Intent(context, WarpProxySvc.class));
        }
    }
}
