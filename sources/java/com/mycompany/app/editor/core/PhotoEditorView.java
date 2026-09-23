package com.mycompany.app.editor.core;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.work.impl.workers.a;
import com.mycompany.app.editor.core.PhotoEditor;
import com.mycompany.app.editor.core.PhotoEffectView;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class PhotoEditorView extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public int f15670c;
    public ImageView f;
    public PhotoEffectView g;
    public PhotoDrawView h;
    public int i;
    public Bitmap j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.editor.core.PhotoEditorView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ PhotoEffectView.PhotoSaveListener f15671c;

        /* renamed from: com.mycompany.app.editor.core.PhotoEditorView$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes3.dex */
        class C01281 implements PhotoEffectView.PhotoSaveListener {
            public C01281() {
            }

            @Override // com.mycompany.app.editor.core.PhotoEffectView.PhotoSaveListener
            public final void a(final Bitmap bitmap) {
                ImageView imageView = PhotoEditorView.this.f;
                if (imageView == null) {
                    return;
                }
                imageView.post(new Runnable() { // from class: com.mycompany.app.editor.core.PhotoEditorView.1.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        PhotoEditorView photoEditorView = PhotoEditorView.this;
                        if (photoEditorView.f == null) {
                            return;
                        }
                        photoEditorView.j = photoEditorView.getImageBitmap();
                        PhotoEditorView.this.f.setImageBitmap(bitmap);
                        PhotoEditorView.this.f.post(new Runnable() { // from class: com.mycompany.app.editor.core.PhotoEditorView.1.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                RunnableC01291 runnableC01291 = RunnableC01291.this;
                                PhotoEffectView photoEffectView = PhotoEditorView.this.g;
                                if (photoEffectView == null) {
                                    return;
                                }
                                photoEffectView.setVisibility(8);
                                AnonymousClass1.this.f15671c.a(null);
                            }
                        });
                    }
                });
            }

            @Override // com.mycompany.app.editor.core.PhotoEffectView.PhotoSaveListener
            public final void w() {
                ((PhotoEditor.AnonymousClass5) AnonymousClass1.this.f15671c).w();
            }
        }

        public AnonymousClass1(PhotoEffectView.PhotoSaveListener photoSaveListener) {
            this.f15671c = photoSaveListener;
        }

        @Override // java.lang.Runnable
        public final void run() {
            PhotoEditorView photoEditorView = PhotoEditorView.this;
            PhotoEffectView photoEffectView = photoEditorView.g;
            if (photoEffectView != null) {
                if (photoEditorView.i == 0) {
                    ((PhotoEditor.AnonymousClass5) this.f15671c).a(null);
                    return;
                }
                C01281 c01281 = new C01281();
                if (photoEffectView.n != null) {
                    return;
                }
                photoEffectView.n = c01281;
                photoEffectView.requestRender();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap getImageBitmap() {
        Drawable drawable;
        ImageView imageView = this.f;
        if (imageView == null || (drawable = imageView.getDrawable()) == null || !(drawable instanceof BitmapDrawable)) {
            return null;
        }
        return ((BitmapDrawable) drawable).getBitmap();
    }

    public final RelativeLayout.LayoutParams b(boolean z) {
        RelativeLayout.LayoutParams g = a.g(-1, -2, 13);
        if (!z) {
            g.addRule(18, this.f15670c);
            g.addRule(19, this.f15670c);
            g.addRule(6, this.f15670c);
            g.addRule(8, this.f15670c);
        }
        return g;
    }

    public PhotoDrawView getDrawView() {
        return this.h;
    }

    public ImageView getImageView() {
        return this.f;
    }

    public void setEffectType(int i) {
        PhotoEffectView photoEffectView = this.g;
        if (photoEffectView == null || this.i == i) {
            return;
        }
        this.i = i;
        photoEffectView.setEffectType(i);
        if (this.i == 0) {
            this.g.setVisibility(8);
        } else {
            this.g.setVisibility(0);
        }
    }

    public void setImageBitmap(Bitmap bitmap) {
        if (this.f == null) {
            return;
        }
        if (MainUtil.f6(bitmap)) {
            View view = (View) getParent();
            boolean z = false;
            if (view != null) {
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                if (measuredWidth > 0 && measuredHeight > 0 && bitmap.getHeight() / bitmap.getWidth() > measuredHeight / measuredWidth) {
                    z = true;
                }
            }
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                if (z) {
                    layoutParams.width = -2;
                    layoutParams.height = -1;
                } else {
                    layoutParams.width = -1;
                    layoutParams.height = -2;
                }
            }
            ViewGroup.LayoutParams layoutParams2 = this.f.getLayoutParams();
            if (layoutParams2 != null) {
                if (z) {
                    layoutParams2.width = -2;
                    layoutParams2.height = -1;
                } else {
                    layoutParams2.width = -1;
                    layoutParams2.height = -2;
                }
            }
        }
        this.f.setImageBitmap(bitmap);
        this.g.setImageBitmap(bitmap);
    }
}
