package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import kotlin.text.Typography;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzfsm {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfsm f7625a = new Object();

    public static final void b(WebView webView, String str) {
        if (webView != null && !TextUtils.isEmpty(str)) {
            try {
                try {
                    webView.evaluateJavascript(str, null);
                } catch (IllegalStateException unused) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
                    sb.append("javascript: ");
                    sb.append(str);
                    webView.loadUrl(sb.toString());
                }
            } catch (Exception e) {
                e.getMessage();
            }
        }
    }

    public final void a(WebView webView, String str, Object... objArr) {
        if (webView != null) {
            StringBuilder sb = new StringBuilder(Uuid.SIZE_BITS);
            sb.append("if(window.omidBridge!==undefined){omidBridge.");
            sb.append(str);
            sb.append("(");
            for (Object obj : objArr) {
                if (obj == null) {
                    sb.append("null");
                } else if (obj instanceof String) {
                    String obj2 = obj.toString();
                    if (obj2.startsWith("{")) {
                        sb.append(obj2);
                    } else {
                        sb.append(Typography.quote);
                        sb.append(obj2);
                        sb.append(Typography.quote);
                    }
                } else {
                    sb.append(obj);
                }
                sb.append(",");
            }
            sb.setLength(sb.length() - 1);
            sb.append(")}");
            String sb2 = sb.toString();
            Handler handler = webView.getHandler();
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            if (Looper.myLooper() == handler.getLooper()) {
                b(webView, sb2);
            } else {
                handler.post(new zzfsl(this, webView, sb2));
            }
        }
    }
}
