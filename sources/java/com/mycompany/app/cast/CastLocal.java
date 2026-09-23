package com.mycompany.app.cast;

import android.content.Context;
import android.text.TextUtils;
import fi.iki.elonen.NanoHTTPD;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class CastLocal {
    public static CastLocal b;

    /* renamed from: a, reason: collision with root package name */
    public CastServer f12852a;

    /* JADX WARN: Type inference failed for: r1v2, types: [com.mycompany.app.cast.CastLocal, java.lang.Object] */
    public static CastLocal a() {
        if (b == null) {
            synchronized (CastLocal.class) {
                try {
                    if (b == null) {
                        b = new Object();
                    }
                } finally {
                }
            }
        }
        return b;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.mycompany.app.cast.CastServer, fi.iki.elonen.NanoHTTPD] */
    public final boolean b(Context context) {
        String str;
        if (this.f12852a != null) {
            return true;
        }
        ?? nanoHTTPD = new NanoHTTPD();
        try {
            nanoHTTPD.k();
            nanoHTTPD.f();
            try {
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                loop0: while (networkInterfaces.hasMoreElements()) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress nextElement = inetAddresses.nextElement();
                        if (nextElement.isSiteLocalAddress()) {
                            str = nextElement.getHostAddress();
                            break loop0;
                        }
                    }
                }
            } catch (Exception unused) {
            }
            str = null;
            if (!TextUtils.isEmpty(str)) {
                nanoHTTPD.i = context.getApplicationContext();
                nanoHTTPD.j = "http://" + str + ":8080/";
                nanoHTTPD.k = new HashMap();
                nanoHTTPD.l = new HashMap();
                nanoHTTPD.m = new HashMap();
                this.f12852a = nanoHTTPD;
                return true;
            }
        } catch (Exception unused2) {
        }
        nanoHTTPD.k();
        return false;
    }

    public final void c() {
        CastServer castServer = this.f12852a;
        if (castServer != null) {
            castServer.k();
            this.f12852a = null;
        }
    }
}
