package com.mycompany.app.vpn;

import android.content.Context;
import android.content.res.Resources;
import android.net.VpnService;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import backend.Backend;
import backend.DoHServer;
import backend.Session;
import com.google.android.gms.common.ConnectionResult;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.soulbrowser.R;
import java.io.IOException;

/* loaded from: classes3.dex */
public class VpnAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final VpnSvc f19051a;
    public VpnListener b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public ParcelFileDescriptor f19052c;
    public Session d;

    /* loaded from: classes3.dex */
    public static class VpnItem {

        /* renamed from: a, reason: collision with root package name */
        public String f19053a;
        public String b;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.mycompany.app.vpn.VpnListener, java.lang.Object] */
    public VpnAdapter(VpnSvc vpnSvc) {
        this.f19051a = vpnSvc;
        ParcelFileDescriptor parcelFileDescriptor = null;
        if (vpnSvc != null) {
            try {
                VpnService.Builder allowBypass = new VpnService.Builder(vpnSvc).setSession("Soul DNS").setMtu(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).addAddress("10.111.222.1", 24).addRoute("0.0.0.0", 0).addDnsServer("10.111.222.3").addAllowedApplication(vpnSvc.getPackageName()).allowBypass();
                if (Build.VERSION.SDK_INT >= 29) {
                    allowBypass.setMetered(false);
                }
                parcelFileDescriptor = allowBypass.establish();
            } catch (Exception unused) {
            }
        }
        this.f19052c = parcelFileDescriptor;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.mycompany.app.vpn.VpnAdapter$VpnItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.mycompany.app.vpn.VpnAdapter$VpnItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v4, types: [com.mycompany.app.vpn.VpnAdapter$VpnItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.mycompany.app.vpn.VpnAdapter$VpnItem, java.lang.Object] */
    public static VpnItem c(Context context) {
        String[] split2;
        if (PrefTts.z == -1 && !TextUtils.isEmpty(PrefTts.A) && !TextUtils.isEmpty(PrefTts.B)) {
            ?? obj = new Object();
            obj.f19053a = PrefTts.A;
            String str = PrefTts.B;
            String str2 = null;
            if (!TextUtils.isEmpty(str) && (split2 = str.split(",")) != null && split2.length == 4) {
                StringBuilder sb = null;
                for (int i = 0; i < 4; i++) {
                    String str3 = split2[i];
                    if (!TextUtils.isEmpty(str3) && !"x".equals(str3)) {
                        if (sb == null) {
                            sb = new StringBuilder();
                        } else {
                            sb.append(",");
                        }
                        sb.append(str3);
                    }
                }
                if (sb != null) {
                    str2 = sb.toString();
                }
            }
            obj.b = str2;
            return obj;
        }
        Resources resources = context.getResources();
        int i2 = PrefTts.z;
        if (i2 >= 0 && i2 < 18) {
            String[] stringArray = resources.getStringArray(R.array.urls);
            String[] stringArray2 = resources.getStringArray(R.array.ips);
            if (stringArray != null && stringArray2 != null && stringArray.length == 18 && stringArray2.length == 18) {
                ?? obj2 = new Object();
                int i3 = PrefTts.z;
                obj2.f19053a = stringArray[i3];
                obj2.b = stringArray2[i3];
                return obj2;
            }
            ?? obj3 = new Object();
            obj3.f19053a = resources.getString(R.string.url0);
            obj3.b = resources.getString(R.string.ips0);
            return obj3;
        }
        PrefTts.z = 0;
        ?? obj4 = new Object();
        obj4.f19053a = resources.getString(R.string.url0);
        obj4.b = resources.getString(R.string.ips0);
        return obj4;
    }

    public final synchronized void a() {
        try {
            Session session = this.d;
            if (session != null) {
                session.disconnect();
                this.d = null;
            }
            ParcelFileDescriptor parcelFileDescriptor = this.f19052c;
            if (parcelFileDescriptor != null) {
                try {
                    parcelFileDescriptor.close();
                } catch (IOException unused) {
                }
                this.f19052c = null;
            }
            this.b = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean b() {
        DoHServer doHServer;
        if (this.f19052c != null) {
            if (this.d == null) {
                VpnSvc vpnSvc = this.f19051a;
                try {
                    VpnItem c2 = c(vpnSvc);
                    doHServer = new DoHServer(c2.f19053a, c2.b, vpnSvc, this.b);
                } catch (Exception | UnsatisfiedLinkError unused) {
                    doHServer = null;
                }
                DoHServer doHServer2 = doHServer;
                if (doHServer2 != null) {
                    try {
                        this.d = Backend.connectSession(this.f19052c.getFd(), "10.111.222.3:53", doHServer2, this.f19051a, this.b);
                        return true;
                    } catch (Exception | UnsatisfiedLinkError unused2) {
                        return false;
                    }
                }
                return false;
            }
            return true;
        }
        return false;
    }
}
