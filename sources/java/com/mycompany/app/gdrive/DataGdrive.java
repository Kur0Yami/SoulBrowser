package com.mycompany.app.gdrive;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DataGdrive {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f15708a;
    public ArrayList b;

    /* loaded from: classes3.dex */
    public static class GdriveItem {

        /* renamed from: a, reason: collision with root package name */
        public String f15709a;
        public String b;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.gdrive.DataGdrive, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.gdrive.DataGdrive, java.lang.Object] */
    public static DataGdrive b(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.G0 == null) {
            synchronized (DataGdrive.class) {
                try {
                    if (p.G0 == null) {
                        p.G0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.G0;
    }

    public final void a(GdriveItem gdriveItem) {
        if (!TextUtils.isEmpty(gdriveItem.f15709a)) {
            if (this.f15708a == null) {
                this.f15708a = new ArrayList();
            }
            ArrayList arrayList = this.b;
            if (arrayList == null) {
                this.b = new ArrayList();
            } else if (arrayList.contains(gdriveItem.f15709a)) {
                return;
            }
            this.f15708a.add(gdriveItem);
            this.b.add(gdriveItem.f15709a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.mycompany.app.gdrive.DataGdrive$GdriveItem] */
    public final void c(String str, String str2) {
        ArrayList arrayList;
        if (!TextUtils.isEmpty(str)) {
            ?? obj = new Object();
            obj.f15709a = str;
            obj.b = str2;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ArrayList arrayList2 = this.f15708a;
            if (arrayList2 != null && !arrayList2.isEmpty() && (arrayList = this.b) != null && !arrayList.isEmpty()) {
                int indexOf = this.b.indexOf(obj.f15709a);
                if (indexOf >= 0 && indexOf < this.f15708a.size()) {
                    this.f15708a.set(indexOf, obj);
                    return;
                } else {
                    a(obj);
                    return;
                }
            }
            a(obj);
        }
    }
}
