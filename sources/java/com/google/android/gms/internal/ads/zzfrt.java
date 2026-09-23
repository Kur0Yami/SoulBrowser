package com.google.android.gms.internal.ads;

import android.view.View;
import android.webkit.WebView;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import androidx.webkit.internal.ApiFeature;
import androidx.webkit.internal.WebMessageListenerAdapter;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewProviderAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes.dex */
public final class zzfrt {

    /* renamed from: a, reason: collision with root package name */
    public final zzfrv f7605a;
    public final WebView b;

    /* renamed from: c, reason: collision with root package name */
    public final zzftw f7606c;
    public final HashMap d;
    public final zzfsj e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v18, types: [com.google.android.gms.internal.ads.zzftw, java.lang.ref.WeakReference] */
    public zzfrt(zzfrv zzfrvVar, WebView webView) {
        View view;
        HashMap hashMap = new HashMap();
        this.d = hashMap;
        this.e = new zzfsj();
        if (zzfrf.f7590a.f7591a) {
            this.f7605a = zzfrvVar;
            this.b = webView;
            zzftw zzftwVar = this.f7606c;
            if (zzftwVar == null) {
                view = null;
            } else {
                view = (View) zzftwVar.get();
            }
            if (view != webView) {
                Iterator it = hashMap.values().iterator();
                while (it.hasNext()) {
                    ((zzfrh) it.next()).a(webView);
                }
                this.f7606c = new WeakReference(webView);
            }
            if (WebViewFeature.a("WEB_MESSAGE_LISTENER")) {
                WebView webView2 = this.b;
                boolean z = WebViewCompat.f1792a;
                ApiFeature.NoFramework noFramework = WebViewFeatureInternal.j;
                if (noFramework.d()) {
                    WebViewCompat.b(webView2).f1815a.removeWebMessageListener("omidJsSessionService");
                    zzfrr zzfrrVar = new zzfrr(this);
                    WebView webView3 = this.b;
                    HashSet hashSet = new HashSet(Arrays.asList("*"));
                    if (noFramework.d()) {
                        WebViewProviderAdapter b = WebViewCompat.b(webView3);
                        b.f1815a.addWebMessageListener("omidJsSessionService", (String[]) hashSet.toArray(new String[0]), BoundaryInterfaceReflectionUtil.b(new WebMessageListenerAdapter(zzfrrVar)));
                        return;
                    }
                    throw WebViewFeatureInternal.a();
                }
                throw WebViewFeatureInternal.a();
            }
            throw new UnsupportedOperationException("The JavaScriptSessionService cannot be supported in this WebView version.");
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(String str) {
        View view;
        zzfrm zzfrmVar = zzfrm.DEFINED_BY_JAVASCRIPT;
        zzfrp zzfrpVar = zzfrp.DEFINED_BY_JAVASCRIPT;
        zzfru zzfruVar = zzfru.JAVASCRIPT;
        int i = 0;
        zzfrl zzfrlVar = new zzfrl(zzfri.a(zzfrmVar, zzfrpVar, zzfruVar, zzfruVar, false), new zzfrj(this.f7605a, this.b, null, null, zzfrk.HTML), str);
        this.d.put(str, zzfrlVar);
        zzftw zzftwVar = this.f7606c;
        if (zzftwVar == null) {
            view = null;
        } else {
            view = (View) zzftwVar.get();
        }
        zzfrlVar.a(view);
        ArrayList arrayList = this.e.f7622a;
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            zzfsi zzfsiVar = (zzfsi) obj;
            zzfrlVar.c((View) zzfsiVar.f7620a.get(), zzfsiVar.f7621c);
        }
        zzfrlVar.d();
    }
}
