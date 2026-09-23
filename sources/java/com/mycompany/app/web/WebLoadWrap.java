package com.mycompany.app.web;

import android.view.ViewGroup;
import com.mycompany.app.main.MainActivity;

/* loaded from: classes3.dex */
public class WebLoadWrap {

    /* loaded from: classes3.dex */
    public interface EmgLoadListener {
        void a();

        void b(int i, String str);

        void c();
    }

    /* JADX WARN: Type inference failed for: r7v1, types: [com.mycompany.app.web.WebLoadWrap, java.lang.Object] */
    public static WebLoadWrap a(int i, MainActivity mainActivity, ViewGroup viewGroup, String str, int i2, boolean z, EmgLoadListener emgLoadListener) {
        if (i == 1) {
            return new WebEmgLoad(mainActivity, viewGroup, str, i2, z, emgLoadListener);
        }
        if (i == 2) {
            return new WebHmgLoad(mainActivity, viewGroup, str, i2, z, emgLoadListener);
        }
        return new Object();
    }

    public void b() {
    }

    public void c(int i) {
    }

    public void d(int i, String str) {
    }
}
