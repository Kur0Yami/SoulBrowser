package com.mycompany.app.vpn;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.VpnService;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.SettingVpn;
import com.mycompany.app.soulbrowser.R;
import java.util.concurrent.ExecutorService;
import protect.Protector;

/* loaded from: classes3.dex */
public class VpnSvc extends VpnService implements Protector {

    /* renamed from: c, reason: collision with root package name */
    public VpnSvcListener f19054c;
    public Handler f;
    public VpnAdapter g;
    public int h;
    public boolean i;
    public ExecutorService j;

    /* loaded from: classes3.dex */
    public interface VpnSvcListener {
        void a(int i);
    }

    public static void a(VpnSvc vpnSvc) {
        boolean b;
        vpnSvc.d(1);
        VpnAdapter vpnAdapter = vpnSvc.g;
        if (vpnAdapter != null) {
            vpnAdapter.a();
            vpnSvc.g = null;
        }
        try {
            if (VpnService.prepare(vpnSvc.getApplicationContext()) == null) {
                VpnAdapter vpnAdapter2 = new VpnAdapter(vpnSvc);
                vpnSvc.g = vpnAdapter2;
                synchronized (vpnAdapter2) {
                    b = vpnAdapter2.b();
                }
                if (b) {
                    vpnSvc.d(2);
                    return;
                } else {
                    vpnSvc.e();
                    return;
                }
            }
        } catch (Exception unused) {
        }
        vpnSvc.d(0);
    }

    public final void b() {
        c(new Runnable() { // from class: com.mycompany.app.vpn.VpnSvc.2
            @Override // java.lang.Runnable
            public final void run() {
                VpnSvc vpnSvc = VpnSvc.this;
                if (vpnSvc.g == null) {
                    vpnSvc.d(0);
                } else {
                    VpnSvc.a(vpnSvc);
                }
            }
        });
    }

    public final void c(Runnable runnable) {
        ExecutorService executorService = this.j;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(getApplicationContext());
            if (executorService == null) {
                return;
            } else {
                this.j = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    public final void d(int i) {
        Context applicationContext;
        NotificationManager q;
        if (this.h != i) {
            this.h = i;
            if (i != 1 && i != 2) {
                if (this.i) {
                    this.i = false;
                    Context applicationContext2 = getApplicationContext();
                    if (applicationContext2 != null) {
                        NotificationManager q2 = MainApp.q(applicationContext2);
                        if (q2 != null) {
                            q2.cancel(2147483640);
                        }
                        setUnderlyingNetworks(null);
                    }
                }
            } else if (!this.i && (applicationContext = getApplicationContext()) != null && (q = MainApp.q(applicationContext)) != null) {
                this.i = true;
                Intent intent = new Intent(applicationContext, (Class<?>) SettingVpn.class);
                intent.addFlags(268435456);
                PendingIntent activity = PendingIntent.getActivity(applicationContext, 7, intent, 201326592);
                NotificationCompat.Builder builder = new NotificationCompat.Builder(applicationContext, "DNS");
                builder.u.icon = R.drawable.outline_vpn_key_white_24;
                builder.e = NotificationCompat.Builder.c(getResources().getText(R.string.vpn_active));
                builder.g = activity;
                builder.i = 1;
                builder.r = -1;
                builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_VPN";
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 26) {
                    q.createNotificationChannel(new NotificationChannel("DNS", getString(R.string.vpn), 2));
                }
                Notification b = builder.b();
                b.flags = (b.flags | 32) & (-17);
                if (i2 >= 34) {
                    startForeground(2147483640, b, 1024);
                } else if (i2 >= 24) {
                    startForeground(2147483640, b);
                } else {
                    q.notify(2147483640, b);
                }
                setUnderlyingNetworks(new Network[]{((ConnectivityManager) getSystemService(ConnectivityManager.class)).getActiveNetwork()});
            }
            VpnSvcListener vpnSvcListener = this.f19054c;
            if (vpnSvcListener != null) {
                vpnSvcListener.a(this.h);
            }
            if (this.h == 0) {
                stopSelf();
                Handler handler = this.f;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.vpn.VpnSvc.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            VpnSvc vpnSvc = VpnSvc.this;
                            if (vpnSvc.h == 0) {
                                MainUtil.e8(vpnSvc.getApplicationContext(), R.string.vpn_deactive);
                            }
                        }
                    });
                }
            }
        }
    }

    public final void e() {
        int i = this.h;
        if (i != 3 && i != 0) {
            d(3);
            VpnAdapter vpnAdapter = this.g;
            if (vpnAdapter != null) {
                vpnAdapter.a();
                this.g = null;
            }
            d(0);
            return;
        }
        VpnSvcListener vpnSvcListener = this.f19054c;
        if (vpnSvcListener != null) {
            vpnSvcListener.a(i);
        }
    }

    @Override // protect.Protector
    public final String getResolvers() {
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // android.net.VpnService, android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        this.f = new Handler(Looper.getMainLooper());
    }

    @Override // android.app.Service
    public final void onDestroy() {
        e();
        this.j = null;
        MainApp p = MainApp.p(getApplicationContext());
        if (p != null) {
            p.E();
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        c(new Runnable() { // from class: com.mycompany.app.vpn.VpnSvc.1
            @Override // java.lang.Runnable
            public final void run() {
                VpnSvc vpnSvc = VpnSvc.this;
                VpnSvc.a(vpnSvc);
                MainApp p = MainApp.p(vpnSvc.getApplicationContext());
                if (p != null) {
                    p.D(vpnSvc);
                }
            }
        });
        return super.onStartCommand(intent, i, i2);
    }
}
