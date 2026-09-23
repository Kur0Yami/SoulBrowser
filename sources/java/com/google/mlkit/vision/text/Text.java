package com.google.mlkit.vision.text;

import android.graphics.Point;
import android.graphics.Rect;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.mlkit_vision_text_common.zzbu;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuz;
import com.google.android.gms.internal.mlkit_vision_text_common.zzvd;
import com.google.android.gms.internal.mlkit_vision_text_common.zzvf;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class Text {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f12818a;

    /* loaded from: classes3.dex */
    public static class Element extends TextBase {
        public final List d;

        public Element(String str, Rect rect, List list, String str2, List list2) {
            super(str, rect, list, str2);
            this.d = list2;
        }
    }

    /* loaded from: classes3.dex */
    public static class Symbol extends TextBase {
    }

    /* loaded from: classes3.dex */
    public static class TextBase {

        /* renamed from: a, reason: collision with root package name */
        public final String f12819a;
        public final Rect b;

        /* renamed from: c, reason: collision with root package name */
        public final String f12820c;

        public TextBase(String str, Rect rect, List list, String str2) {
            this.f12819a = str;
            this.b = new Rect(rect);
            Point[] pointArr = new Point[list.size()];
            for (int i = 0; i < list.size(); i++) {
                pointArr[i] = new Point((Point) list.get(i));
            }
            this.f12820c = str2;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzu] */
    public Text(zzvf zzvfVar) {
        ArrayList arrayList = new ArrayList();
        this.f12818a = arrayList;
        zzvfVar.getClass();
        arrayList.addAll(zzbu.a(zzvfVar.f, new Object()));
    }

    public Text(List list) {
        ArrayList arrayList = new ArrayList();
        this.f12818a = arrayList;
        arrayList.addAll(list);
    }

    /* loaded from: classes3.dex */
    public static class Line extends TextBase {
        public final float d;
        public final float e;

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzu] */
        public Line(zzvd zzvdVar, float f, float f2) {
            super(zzvdVar.f11438c, zzvdVar.f, zzvdVar.g, zzvdVar.h);
            zzbu.a(zzvdVar.i, new Object());
            this.d = f;
            this.e = f2;
        }

        public final Rect a() {
            return this.b;
        }

        public final String b() {
            return this.f12820c;
        }

        public final String c() {
            String str = this.f12819a;
            if (str == null) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return str;
        }

        public Line(String str, Rect rect, List list, String str2, AbstractList abstractList, float f, float f2) {
            super(str, rect, list, str2);
            this.d = f;
            this.e = f2;
        }
    }

    /* loaded from: classes3.dex */
    public static class TextBlock extends TextBase {
        public final AbstractList d;

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzu] */
        public TextBlock(zzuz zzuzVar) {
            super(zzuzVar.f11436c, zzuzVar.f, zzuzVar.g, zzuzVar.h);
            this.d = zzbu.a(zzuzVar.i, new Object());
        }

        public final String a() {
            String str = this.f12819a;
            if (str == null) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return str;
        }

        public TextBlock(String str, Rect rect, List list, String str2, AbstractList abstractList) {
            super(str, rect, list, str2);
            this.d = abstractList;
        }
    }
}
