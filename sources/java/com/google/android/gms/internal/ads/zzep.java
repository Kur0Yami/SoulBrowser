package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzep {
    public static zzep f;

    /* renamed from: a, reason: collision with root package name */
    public final Executor f6777a;
    public final CopyOnWriteArrayList b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6778c;
    public int d;
    public boolean e;

    public zzep(final Context context) {
        Executor a2 = zzdh.a();
        this.f6777a = a2;
        this.b = new CopyOnWriteArrayList();
        this.f6778c = new Object();
        this.d = 0;
        a2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzem
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                context.registerReceiver(new zzeo(zzep.this), intentFilter);
            }
        });
    }

    public static synchronized zzep a(Context context) {
        zzep zzepVar;
        synchronized (zzep.class) {
            try {
                if (f == null) {
                    f = new zzep(context);
                }
                zzepVar = f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzepVar;
    }

    public final int b() {
        int i;
        synchronized (this.f6778c) {
            i = this.d;
        }
        return i;
    }

    public final /* synthetic */ void c(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i = 0;
        if (connectivityManager != null) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    i = 1;
                } else {
                    int type = activeNetworkInfo.getType();
                    if (type != 0) {
                        if (type != 1) {
                            if (type != 4 && type != 5) {
                                if (type != 6) {
                                    i = type != 9 ? 8 : 7;
                                }
                                i = 5;
                            }
                        }
                        i = 2;
                    }
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                        case 2:
                            i = 3;
                            break;
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 14:
                        case 15:
                        case 17:
                            i = 4;
                            break;
                        case 13:
                            i = 5;
                            break;
                        case 16:
                        case 19:
                        default:
                            i = 6;
                            break;
                        case 18:
                            i = 2;
                            break;
                        case 20:
                            if (Build.VERSION.SDK_INT >= 29) {
                                i = 9;
                                break;
                            }
                            break;
                    }
                }
            } catch (SecurityException unused) {
            }
        }
        if (Build.VERSION.SDK_INT >= 31 && i == 5) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    zzei zzeiVar = new zzei(this);
                    telephonyManager.registerTelephonyCallback(this.f6777a, zzeiVar);
                    telephonyManager.unregisterTelephonyCallback(zzeiVar);
                    return;
                }
                throw null;
            } catch (RuntimeException unused2) {
                d(5);
                return;
            }
        }
        d(i);
    }

    public final void d(int i) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.b;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zzel zzelVar = (zzel) it.next();
            if (zzelVar.f6622a.get() == null) {
                copyOnWriteArrayList.remove(zzelVar);
            }
        }
        synchronized (this.f6778c) {
            try {
                if (this.e && this.d == i) {
                    return;
                }
                this.e = true;
                this.d = i;
                Iterator it2 = this.b.iterator();
                while (it2.hasNext()) {
                    zzel zzelVar2 = (zzel) it2.next();
                    zzelVar2.getClass();
                    zzelVar2.b.execute(new zzek(zzelVar2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
