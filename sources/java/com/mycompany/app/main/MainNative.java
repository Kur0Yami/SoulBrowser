package com.mycompany.app.main;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class MainNative {
    public static ArrayList A;
    public static String B;
    public static String C;
    public static ArrayList D;
    public static ArrayList E;
    public static ArrayList F;
    public static ArrayList G;
    public static ArrayList H;
    public static ArrayList I;
    public static ArrayList J;
    public static ArrayList K;
    public static ArrayList L;

    /* renamed from: a, reason: collision with root package name */
    public static String f16825a;
    public static ArrayList b;

    /* renamed from: c, reason: collision with root package name */
    public static ArrayList f16826c;
    public static ArrayList d;
    public static String e;
    public static String f;
    public static String g;
    public static String h;
    public static String i;
    public static String j;
    public static String k;
    public static String l;
    public static String m;
    public static String n;
    public static ArrayList o;
    public static ArrayList p;
    public static ArrayList q;
    public static ArrayList r;
    public static ArrayList s;
    public static String t;
    public static String u;
    public static String v;
    public static ArrayList w;
    public static ArrayList x;
    public static ArrayList y;
    public static ArrayList z;

    public static boolean a(int i2, List list) {
        if (list == null || list.size() != i2) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (TextUtils.isEmpty((String) it.next())) {
                return false;
            }
        }
        return true;
    }

    public static void b() {
        f16825a = null;
        b = null;
        f16826c = null;
        d = null;
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
        j = null;
        k = null;
        l = null;
        m = null;
        n = null;
        o = null;
        p = null;
        q = null;
        r = null;
        s = null;
        t = null;
        u = null;
        v = null;
        w = null;
        x = null;
        y = null;
        z = null;
        A = null;
        B = null;
        C = null;
        D = null;
        E = null;
        F = null;
        G = null;
        H = null;
        I = null;
        J = null;
        K = null;
        L = null;
    }

    public static String c() {
        if (!MainApp.R1) {
            return null;
        }
        if (TextUtils.isEmpty(e)) {
            e = MainUtil.getTransContain();
        }
        return e;
    }

    public static String d() {
        if (!MainApp.R1) {
            return null;
        }
        if (TextUtils.isEmpty(f)) {
            f = MainUtil.getTransElement();
        }
        return f;
    }
}
