package com.mycompany.app.data.book;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DataBookLink extends DataBookList {

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f12908c;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookLink, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookLink, java.lang.Object] */
    public static DataBookLink m(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.v0 == null) {
            synchronized (DataBookLink.class) {
                try {
                    if (p.v0 == null) {
                        p.v0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.v0;
    }

    public final void k(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                ArrayList arrayList = this.f12908c;
                if (arrayList == null) {
                    this.f12908c = new ArrayList();
                } else if (arrayList.contains(str)) {
                    return;
                }
                this.f12908c.add(str);
            } catch (Exception unused) {
            }
        }
    }

    public final boolean l(String str) {
        try {
            ArrayList arrayList = this.f12908c;
            if (arrayList != null && !arrayList.isEmpty()) {
                String S6 = MainUtil.S6(str);
                if (!TextUtils.isEmpty(S6)) {
                    if (this.f12908c.contains(S6)) {
                        return true;
                    }
                    String I1 = MainUtil.I1(S6, false);
                    if (!TextUtils.isEmpty(I1)) {
                        return this.f12908c.contains(I1);
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public final boolean n(String str) {
        try {
            ArrayList arrayList = this.f12908c;
            if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str)) {
                return this.f12908c.contains(str);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean o(String str) {
        try {
            ArrayList arrayList = this.f12908c;
            if (arrayList != null && !arrayList.isEmpty()) {
                String S6 = MainUtil.S6(str);
                if (!TextUtils.isEmpty(S6)) {
                    return this.f12908c.contains(S6);
                }
                return false;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
