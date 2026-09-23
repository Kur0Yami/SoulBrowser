package com.mycompany.app.editor.core;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.work.impl.workers.a;
import com.mycompany.app.editor.core.PhotoDrawView;
import com.mycompany.app.editor.core.PhotoEditor;
import com.mycompany.app.editor.core.PhotoEditorView;
import com.mycompany.app.editor.core.PhotoEffectView;
import com.mycompany.app.editor.core.PhotoTouchListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import java.util.ArrayList;
import java.util.Stack;

/* loaded from: classes3.dex */
public class PhotoEditor {

    /* renamed from: a, reason: collision with root package name */
    public Context f15661a;
    public PhotoListener b;

    /* renamed from: c, reason: collision with root package name */
    public PhotoEditorView f15662c;
    public ImageView d;
    public PhotoDrawView e;
    public ArrayList f = new ArrayList();
    public ArrayList g = new ArrayList();
    public int h;

    /* renamed from: com.mycompany.app.editor.core.PhotoEditor$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements PhotoTouchListener.PhotoObjectListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f15665a;

        public AnonymousClass3(int i) {
            this.f15665a = i;
        }

        @Override // com.mycompany.app.editor.core.PhotoTouchListener.PhotoObjectListener
        public final void a(PhotoTouchListener.ObjHolder objHolder, boolean z) {
            PhotoEditor photoEditor = PhotoEditor.this;
            if (z) {
                if (objHolder == null || photoEditor.h == 2) {
                    return;
                }
                photoEditor.h = 2;
                photoEditor.b(objHolder.f15681a);
                return;
            }
            photoEditor.h = 0;
        }
    }

    /* renamed from: com.mycompany.app.editor.core.PhotoEditor$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements PhotoEffectView.PhotoSaveListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ PhotoEffectView.PhotoSaveListener f15667a;

        public AnonymousClass5(PhotoEffectView.PhotoSaveListener photoSaveListener) {
            this.f15667a = photoSaveListener;
        }

        @Override // com.mycompany.app.editor.core.PhotoEffectView.PhotoSaveListener
        public final void a(Bitmap bitmap) {
            PhotoEditor photoEditor = PhotoEditor.this;
            photoEditor.b(null);
            if (photoEditor.f15662c == null) {
                return;
            }
            MainApp.J(photoEditor.f15661a, new Runnable() { // from class: com.mycompany.app.editor.core.PhotoEditor.5.1
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoEditor photoEditor2 = PhotoEditor.this;
                    final long U = MainUtil.U(photoEditor2.f15661a);
                    PhotoEditorView photoEditorView = photoEditor2.f15662c;
                    if (photoEditorView == null) {
                        return;
                    }
                    photoEditorView.post(new Runnable() { // from class: com.mycompany.app.editor.core.PhotoEditor.5.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                            PhotoEditorView photoEditorView2 = PhotoEditor.this.f15662c;
                            Bitmap bitmap2 = null;
                            if (photoEditorView2.g != null) {
                                Bitmap g4 = MainUtil.g4(photoEditorView2, 0, 1.0f, U, null);
                                if (MainUtil.f6(photoEditorView2.j)) {
                                    photoEditorView2.f.setImageBitmap(photoEditorView2.j);
                                    photoEditorView2.j = null;
                                }
                                if (photoEditorView2.i == 0) {
                                    photoEditorView2.g.setVisibility(8);
                                } else {
                                    photoEditorView2.g.setVisibility(0);
                                }
                                bitmap2 = g4;
                            }
                            if (MainUtil.f6(bitmap2)) {
                                anonymousClass5.f15667a.a(bitmap2);
                            } else {
                                anonymousClass5.f15667a.w();
                            }
                        }
                    });
                }
            });
        }

        @Override // com.mycompany.app.editor.core.PhotoEffectView.PhotoSaveListener
        public final void w() {
            this.f15667a.w();
        }
    }

    /* loaded from: classes3.dex */
    public interface PhotoListener {
        void a(boolean z, boolean z2);

        void b(FrameLayout frameLayout, String str, int i);
    }

    public PhotoEditor(Context context, PhotoEditorView photoEditorView, PhotoListener photoListener) {
        this.f15661a = context;
        this.f15662c = photoEditorView;
        this.b = photoListener;
        PhotoEditorView photoEditorView2 = this.f15662c;
        if (photoEditorView2 != null) {
            this.d = photoEditorView2.getImageView();
            PhotoDrawView drawView = this.f15662c.getDrawView();
            this.e = drawView;
            drawView.setListener(new PhotoDrawView.PhotoDrawListener() { // from class: com.mycompany.app.editor.core.PhotoEditor.1
                @Override // com.mycompany.app.editor.core.PhotoDrawView.PhotoDrawListener
                public final void a(boolean z) {
                    PhotoEditor photoEditor = PhotoEditor.this;
                    if (z) {
                        if (photoEditor.h != 1) {
                            photoEditor.h = 1;
                            photoEditor.b(null);
                            return;
                        }
                        return;
                    }
                    if (photoEditor.h != 1) {
                        return;
                    }
                    photoEditor.h = 0;
                    photoEditor.g.clear();
                    photoEditor.f.add(photoEditor.e);
                    photoEditor.f();
                }

                @Override // com.mycompany.app.editor.core.PhotoDrawView.PhotoDrawListener
                public final boolean b() {
                    PhotoTouchListener.ObjHolder objHolder;
                    ImageView imageView;
                    PhotoEditor photoEditor = PhotoEditor.this;
                    PhotoEditorView photoEditorView3 = photoEditor.f15662c;
                    if (photoEditorView3 != null) {
                        int childCount = photoEditorView3.getChildCount();
                        for (int i = 0; i < childCount; i++) {
                            View childAt = photoEditor.f15662c.getChildAt(i);
                            if (childAt != null && (childAt instanceof FrameLayout)) {
                                Object tag = ((FrameLayout) childAt).getTag();
                                if (tag == null || !(tag instanceof PhotoTouchListener.ObjHolder)) {
                                    objHolder = null;
                                } else {
                                    objHolder = (PhotoTouchListener.ObjHolder) tag;
                                }
                                if (objHolder != null && (imageView = objHolder.d) != null && imageView.getVisibility() == 0) {
                                    return true;
                                }
                            }
                        }
                    }
                    return false;
                }

                @Override // com.mycompany.app.editor.core.PhotoDrawView.PhotoDrawListener
                public final boolean c() {
                    if (PhotoEditor.this.h != 0) {
                        return true;
                    }
                    return false;
                }
            });
        }
    }

    public final void a(final int i, final int i2, final String str) {
        PhotoEditorView photoEditorView = this.f15662c;
        if (photoEditorView == null) {
            return;
        }
        photoEditorView.post(new Runnable() { // from class: com.mycompany.app.editor.core.PhotoEditor.2
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v1, types: [com.mycompany.app.editor.core.PhotoTouchListener, java.lang.Object, android.view.View$OnTouchListener] */
            /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Object, com.mycompany.app.editor.core.PhotoTouchListener$ObjHolder] */
            @Override // java.lang.Runnable
            public final void run() {
                Context context;
                final PhotoEditor photoEditor = PhotoEditor.this;
                if (photoEditor.f15662c == null || (context = photoEditor.f15661a) == null) {
                    return;
                }
                FrameLayout frameLayout = new FrameLayout(context);
                FrameLayout frameLayout2 = new FrameLayout(context);
                frameLayout2.setBackgroundResource(R.drawable.text_border);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                int G = (int) MainUtil.G(context, 20.0f);
                layoutParams.setMarginStart(G);
                layoutParams.topMargin = G;
                layoutParams.setMarginEnd(MainApp.F1);
                layoutParams.bottomMargin = MainApp.F1;
                frameLayout.addView(frameLayout2, layoutParams);
                AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                appCompatTextView.setTextSize(1, 24.0f);
                appCompatTextView.setTextColor(-1);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                layoutParams2.setMarginStart(MainApp.G1);
                int i3 = MainApp.G1;
                layoutParams2.topMargin = i3;
                layoutParams2.setMarginEnd(i3);
                layoutParams2.bottomMargin = MainApp.G1;
                frameLayout2.addView(appCompatTextView, layoutParams2);
                ImageView imageView = new ImageView(context);
                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                imageView.setImageResource(R.drawable.outline_cancel_white_24);
                imageView.setBackgroundResource(R.drawable.selector_circle_close);
                int i4 = MainApp.f1;
                frameLayout.addView(imageView, i4, i4);
                int i5 = i2;
                if (i5 == 1) {
                    appCompatTextView.setLayerType(1, null);
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setTextSize(1, 36.0f);
                } else {
                    appCompatTextView.setTextColor(i);
                }
                appCompatTextView.setText(str);
                ?? obj = new Object();
                obj.f15681a = frameLayout;
                obj.b = frameLayout2;
                obj.f15682c = appCompatTextView;
                obj.d = imageView;
                frameLayout.setTag(obj);
                Context context2 = photoEditor.f15661a;
                ImageView imageView2 = photoEditor.d;
                AnonymousClass3 anonymousClass3 = new AnonymousClass3(i5);
                final ?? obj2 = new Object();
                if (context2 != null) {
                    obj2.f15676c = MainUtil.G(context2, 1.0f);
                    obj2.m = -1;
                    obj2.i = imageView2;
                    obj2.j = obj;
                    obj2.h = anonymousClass3;
                    obj2.f = new ScaleGestureDetector(new PhotoTouchListener.AnonymousClass1());
                    obj2.g = new GestureDetector(context2, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.editor.core.PhotoTouchListener.2
                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                        public final void onLongPress(MotionEvent motionEvent) {
                            PhotoObjectListener photoObjectListener;
                            PhotoTouchListener photoTouchListener = PhotoTouchListener.this;
                            if (photoTouchListener.k && !photoTouchListener.l && !photoTouchListener.n && (photoObjectListener = photoTouchListener.h) != null) {
                                ObjHolder objHolder = photoTouchListener.j;
                                PhotoEditor.AnonymousClass3 anonymousClass32 = (PhotoEditor.AnonymousClass3) photoObjectListener;
                                PhotoEditor photoEditor2 = PhotoEditor.this;
                                if (objHolder != null && anonymousClass32.f15665a != 1 && photoEditor2.b != null) {
                                    photoEditor2.b.b(objHolder.f15681a, objHolder.f15682c.getText().toString(), objHolder.f15682c.getCurrentTextColor());
                                }
                            }
                        }

                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                        public final boolean onSingleTapUp(MotionEvent motionEvent) {
                            ObjHolder objHolder;
                            PhotoTouchListener photoTouchListener = PhotoTouchListener.this;
                            if (photoTouchListener.k && photoTouchListener.h != null && (objHolder = photoTouchListener.j) != null) {
                                if (objHolder.d.getVisibility() == 0) {
                                    objHolder.b.setBackgroundResource(0);
                                    objHolder.d.setVisibility(8);
                                    return true;
                                }
                                objHolder.b.setBackgroundResource(R.drawable.text_border);
                                objHolder.d.setVisibility(0);
                            }
                            return true;
                        }
                    });
                }
                frameLayout.setOnTouchListener(obj2);
                imageView.setTag(frameLayout);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.core.PhotoEditor.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Object tag;
                        if (view != null && (tag = view.getTag()) != null && (tag instanceof FrameLayout)) {
                            FrameLayout frameLayout3 = (FrameLayout) tag;
                            PhotoEditor photoEditor2 = PhotoEditor.this;
                            PhotoEditorView photoEditorView2 = photoEditor2.f15662c;
                            if (photoEditorView2 == null || photoEditorView2.indexOfChild(frameLayout3) == -1) {
                                return;
                            }
                            photoEditor2.f15662c.removeView(frameLayout3);
                            photoEditor2.g.remove(frameLayout3);
                            photoEditor2.f.add(frameLayout3);
                            photoEditor2.f();
                        }
                    }
                });
                photoEditor.b(null);
                photoEditor.f15662c.addView(frameLayout, a.g(-2, -2, 13));
                photoEditor.g.clear();
                photoEditor.f.add(frameLayout);
                photoEditor.f();
            }
        });
    }

    public final void b(FrameLayout frameLayout) {
        PhotoTouchListener.ObjHolder objHolder;
        PhotoEditorView photoEditorView = this.f15662c;
        if (photoEditorView != null) {
            int childCount = photoEditorView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f15662c.getChildAt(i);
                if (childAt != null && (childAt instanceof FrameLayout)) {
                    FrameLayout frameLayout2 = (FrameLayout) childAt;
                    if (frameLayout == null || !frameLayout.equals(frameLayout2)) {
                        Object tag = frameLayout2.getTag();
                        if (tag == null || !(tag instanceof PhotoTouchListener.ObjHolder)) {
                            objHolder = null;
                        } else {
                            objHolder = (PhotoTouchListener.ObjHolder) tag;
                        }
                        if (objHolder != null) {
                            FrameLayout frameLayout3 = objHolder.b;
                            if (frameLayout3 != null) {
                                frameLayout3.setBackgroundResource(0);
                            }
                            ImageView imageView = objHolder.d;
                            if (imageView != null) {
                                imageView.setVisibility(8);
                            }
                        }
                    }
                }
            }
        }
    }

    public final void c() {
        int size;
        ArrayList arrayList = this.g;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return;
        }
        int i = size - 1;
        View view = (View) this.g.get(i);
        if (view instanceof PhotoDrawView) {
            PhotoDrawView photoDrawView = this.e;
            Stack stack = photoDrawView.o;
            if (stack != null && !stack.empty()) {
                photoDrawView.n.push((PhotoDrawView.SaveLine) photoDrawView.o.pop());
                photoDrawView.invalidate();
            }
        } else if (this.f15662c.indexOfChild(view) == -1) {
            this.f15662c.addView(view);
        } else {
            this.f15662c.removeView(view);
        }
        this.g.remove(i);
        this.f.add(view);
        f();
    }

    public final void d() {
        ArrayList arrayList = this.f;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            View view = (View) obj;
            if (!(view instanceof PhotoDrawView)) {
                this.f15662c.removeView(view);
            }
        }
        PhotoDrawView photoDrawView = this.e;
        Stack stack = photoDrawView.n;
        if (stack != null) {
            stack.clear();
            photoDrawView.o.clear();
            photoDrawView.invalidate();
        }
        this.f.clear();
        this.g.clear();
        f();
        this.f15662c.setEffectType(0);
    }

    public final void e(PhotoEffectView.PhotoSaveListener photoSaveListener) {
        PhotoEditorView photoEditorView = this.f15662c;
        if (photoEditorView != null) {
            AnonymousClass5 anonymousClass5 = new AnonymousClass5(photoSaveListener);
            PhotoDrawView photoDrawView = photoEditorView.h;
            if (photoDrawView == null) {
                return;
            }
            photoEditorView.removeView(photoDrawView);
            photoEditorView.addView(photoEditorView.h, 2, photoEditorView.b(false));
            photoEditorView.post(new PhotoEditorView.AnonymousClass1(anonymousClass5));
        }
    }

    public final void f() {
        boolean z;
        ArrayList arrayList = this.f;
        if (arrayList == null) {
            return;
        }
        PhotoListener photoListener = this.b;
        boolean z2 = false;
        if (arrayList.size() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (this.g.size() > 0) {
            z2 = true;
        }
        photoListener.a(z, z2);
    }

    public final void g() {
        int size;
        ArrayList arrayList = this.f;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return;
        }
        int i = size - 1;
        View view = (View) this.f.get(i);
        if (view instanceof PhotoDrawView) {
            PhotoDrawView photoDrawView = this.e;
            Stack stack = photoDrawView.n;
            if (stack != null && !stack.empty()) {
                photoDrawView.o.push((PhotoDrawView.SaveLine) photoDrawView.n.pop());
                photoDrawView.invalidate();
            }
        } else if (this.f15662c.indexOfChild(view) == -1) {
            this.f15662c.addView(view);
        } else {
            this.f15662c.removeView(view);
        }
        this.f.remove(i);
        this.g.add(view);
        f();
    }
}
