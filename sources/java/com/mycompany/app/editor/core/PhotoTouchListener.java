package com.mycompany.app.editor.core;

import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.editor.core.ScaleGestureDetector;

/* loaded from: classes3.dex */
public class PhotoTouchListener implements View.OnTouchListener {

    /* renamed from: c, reason: collision with root package name */
    public float f15676c;
    public ScaleGestureDetector f;
    public GestureDetector g;
    public PhotoObjectListener h;
    public ImageView i;
    public ObjHolder j;
    public boolean k;
    public boolean l;
    public int m;
    public boolean n;
    public float o;
    public float p;
    public float q;
    public float r;

    /* renamed from: com.mycompany.app.editor.core.PhotoTouchListener$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends ScaleGestureDetector.SimpleOnScaleGestureListener {

        /* renamed from: a, reason: collision with root package name */
        public float f15677a;
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public final Vector2D f15678c = new PointF();

        /* JADX WARN: Type inference failed for: r1v1, types: [android.graphics.PointF, com.mycompany.app.editor.core.Vector2D] */
        public AnonymousClass1() {
        }

        public final void a(ScaleGestureDetector scaleGestureDetector) {
            this.f15677a = scaleGestureDetector.f;
            this.b = scaleGestureDetector.g;
            this.f15678c.set(scaleGestureDetector.e);
        }
    }

    /* loaded from: classes3.dex */
    public static class ObjHolder {

        /* renamed from: a, reason: collision with root package name */
        public FrameLayout f15681a;
        public FrameLayout b;

        /* renamed from: c, reason: collision with root package name */
        public AppCompatTextView f15682c;
        public ImageView d;
    }

    /* loaded from: classes3.dex */
    public interface PhotoObjectListener {
        void a(ObjHolder objHolder, boolean z);
    }

    /* loaded from: classes3.dex */
    public static class TransformInfo {

        /* renamed from: a, reason: collision with root package name */
        public float f15683a;
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public float f15684c;
        public float d;
        public float e;
        public float f;
    }

    public static void a(View view, float f, float f2) {
        if (view == null) {
            return;
        }
        float[] fArr = {f, f2};
        view.getMatrix().mapVectors(fArr);
        view.setTranslationX(view.getTranslationX() + fArr[0]);
        view.setTranslationY(view.getTranslationY() + fArr[1]);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x037b  */
    /* JADX WARN: Type inference failed for: r8v6, types: [com.mycompany.app.editor.core.PhotoTouchListener$TransformInfo, java.lang.Object] */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r19, android.view.MotionEvent r20) {
        /*
            Method dump skipped, instructions count: 978
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.editor.core.PhotoTouchListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
