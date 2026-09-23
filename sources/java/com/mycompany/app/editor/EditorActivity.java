package com.mycompany.app.editor;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.media.effect.Effect;
import android.net.Uri;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.transition.Transition;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.db.book.DbBookDown;
import com.mycompany.app.dialog.DialogDownEdit;
import com.mycompany.app.dialog.DialogDownPage;
import com.mycompany.app.dialog.DialogEditorEmoji;
import com.mycompany.app.dialog.DialogEditorErase;
import com.mycompany.app.dialog.DialogEditorPen;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogSaveConfirm;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.editor.EditorEffectAdapter;
import com.mycompany.app.editor.core.PhotoDrawView;
import com.mycompany.app.editor.core.PhotoEditor;
import com.mycompany.app.editor.core.PhotoEditorView;
import com.mycompany.app.editor.core.PhotoEffectView;
import com.mycompany.app.editor.core.PhotoTouchListener;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequest;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonRelative;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyGlideTarget;
import com.mycompany.app.view.MyRecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class EditorActivity extends MainActivity {
    public static final /* synthetic */ int l2 = 0;
    public MyButtonImage A1;
    public MyButtonImage B1;
    public MyFadeFrame C1;
    public MyButtonCheck D1;
    public LinearLayout E1;
    public MyButtonCheck F1;
    public MyButtonCheck G1;
    public MyButtonImage H1;
    public MyButtonImage I1;
    public MyButtonImage J1;
    public MyButtonImage K1;
    public MyRecyclerView L1;
    public MyCoverView M1;
    public PhotoEditor N1;
    public EditorEffectAdapter O1;
    public Uri P1;
    public boolean Q1;
    public DialogSetMsg R1;
    public DialogEditorPen S1;
    public DialogEditorErase T1;
    public DialogEditorText U1;
    public DialogEditorEmoji V1;
    public DialogSaveConfirm W1;
    public DialogDownEdit X1;
    public boolean Y1;
    public GlideRequests Z1;
    public boolean a2;
    public String b2;
    public Uri c2;
    public String d2;
    public boolean e2;
    public Context f1;
    public String g1;
    public String g2;
    public String h1;
    public Uri h2;
    public String i1;
    public String i2;
    public View j1;
    public boolean j2;
    public SystemRunnable k1;
    public RelativeLayout l1;
    public RelativeLayout m1;
    public MyButtonRelative n1;
    public MyButtonRelative o1;
    public FrameLayout p1;
    public PhotoEditorView q1;
    public MyButtonCheck r1;
    public LinearLayout s1;
    public MyButtonImage t1;
    public MyButtonImage u1;
    public MyButtonImage v1;
    public MyButtonImage w1;
    public MyButtonCheck x1;
    public LinearLayout y1;
    public MyButtonImage z1;
    public final MyGlideTarget f2 = new MyGlideTarget<Bitmap>() { // from class: com.mycompany.app.editor.EditorActivity.25
        @Override // com.bumptech.glide.request.target.Target
        public final void a(Object obj, Transition transition) {
            Bitmap bitmap = (Bitmap) obj;
            EditorActivity editorActivity = EditorActivity.this;
            String str = editorActivity.b2;
            Uri uri = editorActivity.c2;
            String str2 = editorActivity.d2;
            boolean z = editorActivity.e2;
            editorActivity.b2 = null;
            editorActivity.c2 = null;
            editorActivity.d2 = null;
            if (editorActivity.m1 == null) {
                return;
            }
            if (!MainUtil.f6(bitmap)) {
                if (z) {
                    editorActivity.m1.setVisibility(0);
                }
                editorActivity.M1.f(true);
                MainUtil.e8(editorActivity, R.string.image_fail);
                return;
            }
            if (!TextUtils.isEmpty(str)) {
                editorActivity.g1 = str;
                editorActivity.h1 = str2;
            } else if (uri != null) {
                editorActivity.g1 = uri.getPath();
                editorActivity.h1 = str2;
            }
            editorActivity.m1.setVisibility(8);
            editorActivity.p1.setVisibility(0);
            editorActivity.r1.q(false, false);
            editorActivity.r1.setVisibility(0);
            editorActivity.s1.setVisibility(8);
            editorActivity.x1.q(false, false);
            editorActivity.x1.setVisibility(0);
            editorActivity.y1.setVisibility(8);
            editorActivity.C1.setVisibility(0);
            editorActivity.D1.q(false, false);
            editorActivity.D1.setVisibility(0);
            editorActivity.E1.setVisibility(8);
            editorActivity.K1.setVisibility(8);
            editorActivity.L1.setVisibility(8);
            PhotoEditor photoEditor = editorActivity.N1;
            if (photoEditor != null) {
                photoEditor.d();
            }
            EditorEffectAdapter editorEffectAdapter = editorActivity.O1;
            if (editorEffectAdapter != null) {
                editorEffectAdapter.v(0);
            }
            editorActivity.q1.setImageBitmap(bitmap);
            editorActivity.M1.f(true);
        }

        @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
        public final void f(SingleRequest singleRequest) {
            EditorActivity editorActivity = EditorActivity.this;
            PhotoEditorView photoEditorView = editorActivity.q1;
            if (photoEditorView == null) {
                return;
            }
            singleRequest.b(photoEditorView.getWidth(), editorActivity.q1.getHeight());
        }

        @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
        public final void g(Drawable drawable) {
            EditorActivity editorActivity = EditorActivity.this;
            boolean z = editorActivity.e2;
            editorActivity.b2 = null;
            editorActivity.c2 = null;
            editorActivity.d2 = null;
            RelativeLayout relativeLayout = editorActivity.m1;
            if (relativeLayout == null) {
                return;
            }
            if (z) {
                relativeLayout.setVisibility(0);
            }
            editorActivity.M1.f(true);
            MainUtil.e8(editorActivity, R.string.image_fail);
        }
    };
    public final MyGlideTarget k2 = new MyGlideTarget<PictureDrawable>() { // from class: com.mycompany.app.editor.EditorActivity.27
        @Override // com.bumptech.glide.request.target.Target
        public final void a(Object obj, Transition transition) {
            PictureDrawable pictureDrawable = (PictureDrawable) obj;
            EditorActivity editorActivity = EditorActivity.this;
            String str = editorActivity.g2;
            Uri uri = editorActivity.h2;
            String str2 = editorActivity.i2;
            boolean z = editorActivity.j2;
            editorActivity.g2 = null;
            editorActivity.h2 = null;
            editorActivity.i2 = null;
            if (editorActivity.m1 == null) {
                return;
            }
            Bitmap H = MainUtil.H(pictureDrawable, 0);
            if (!MainUtil.f6(H)) {
                if (z) {
                    editorActivity.m1.setVisibility(0);
                }
                editorActivity.M1.f(true);
                MainUtil.e8(editorActivity, R.string.image_fail);
                return;
            }
            if (!TextUtils.isEmpty(str)) {
                editorActivity.g1 = str;
                editorActivity.h1 = str2;
            } else if (uri != null) {
                editorActivity.g1 = uri.getPath();
                editorActivity.h1 = str2;
            }
            editorActivity.m1.setVisibility(8);
            editorActivity.p1.setVisibility(0);
            editorActivity.r1.q(false, false);
            editorActivity.r1.setVisibility(0);
            editorActivity.s1.setVisibility(8);
            editorActivity.x1.q(false, false);
            editorActivity.x1.setVisibility(0);
            editorActivity.y1.setVisibility(8);
            editorActivity.C1.setVisibility(0);
            editorActivity.D1.q(false, false);
            editorActivity.D1.setVisibility(0);
            editorActivity.E1.setVisibility(8);
            editorActivity.K1.setVisibility(8);
            editorActivity.L1.setVisibility(8);
            PhotoEditor photoEditor = editorActivity.N1;
            if (photoEditor != null) {
                photoEditor.d();
            }
            EditorEffectAdapter editorEffectAdapter = editorActivity.O1;
            if (editorEffectAdapter != null) {
                editorEffectAdapter.v(0);
            }
            editorActivity.q1.setImageBitmap(H);
            editorActivity.M1.f(true);
        }

        @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
        public final void f(SingleRequest singleRequest) {
            EditorActivity editorActivity = EditorActivity.this;
            PhotoEditorView photoEditorView = editorActivity.q1;
            if (photoEditorView == null) {
                return;
            }
            singleRequest.b(photoEditorView.getWidth(), editorActivity.q1.getHeight());
        }

        @Override // com.mycompany.app.view.MyGlideTarget, com.bumptech.glide.request.target.Target
        public final void g(Drawable drawable) {
            EditorActivity editorActivity = EditorActivity.this;
            boolean z = editorActivity.j2;
            editorActivity.g2 = null;
            editorActivity.h2 = null;
            editorActivity.i2 = null;
            RelativeLayout relativeLayout = editorActivity.m1;
            if (relativeLayout == null) {
                return;
            }
            if (z) {
                relativeLayout.setVisibility(0);
            }
            editorActivity.M1.f(true);
            MainUtil.e8(editorActivity, R.string.image_fail);
        }
    };

    /* renamed from: com.mycompany.app.editor.EditorActivity$22, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass22 implements EditorEffectAdapter.EditorEffectListener {
        public AnonymousClass22() {
        }
    }

    /* renamed from: com.mycompany.app.editor.EditorActivity$44, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass44 implements MainActivity.SystemBarListener {
        @Override // com.mycompany.app.main.MainActivity.SystemBarListener
        public final boolean a() {
            return false;
        }

        @Override // com.mycompany.app.main.MainActivity.SystemBarListener
        public final boolean b() {
            return true;
        }

        @Override // com.mycompany.app.main.MainActivity.SystemBarListener
        public final boolean c() {
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public static class SaveTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final Bitmap g;
        public final boolean h;
        public final boolean i;
        public boolean j;

        public SaveTask(EditorActivity editorActivity, String str, Bitmap bitmap, boolean z, boolean z2) {
            WeakReference weakReference = new WeakReference(editorActivity);
            this.e = weakReference;
            EditorActivity editorActivity2 = (EditorActivity) weakReference.get();
            if (editorActivity2 == null) {
                return;
            }
            this.f = str;
            this.g = bitmap;
            this.h = z;
            this.i = z2;
            editorActivity2.Q1 = true;
            editorActivity2.B0(false);
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            EditorActivity editorActivity;
            Bitmap.CompressFormat compressFormat;
            MainUri.UriItem j;
            WeakReference weakReference = this.e;
            if (weakReference != null && (editorActivity = (EditorActivity) weakReference.get()) != null) {
                Bitmap bitmap = this.g;
                if (!MainUtil.f6(bitmap)) {
                    return;
                }
                Context context = editorActivity.f1;
                if (bitmap.hasAlpha()) {
                    compressFormat = Bitmap.CompressFormat.PNG;
                } else {
                    compressFormat = Bitmap.CompressFormat.JPEG;
                }
                String str = this.f;
                boolean q = MainUtil.q(context, bitmap, str, compressFormat);
                if (q && (j = MainUri.j(editorActivity.f1, str, MainUri.e())) != null) {
                    DbBookDown.i(editorActivity.f1, str, null, j);
                }
                this.j = q;
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            EditorActivity editorActivity;
            WeakReference weakReference = this.e;
            if (weakReference == null || (editorActivity = (EditorActivity) weakReference.get()) == null) {
                return;
            }
            editorActivity.Q1 = false;
            MyCoverView myCoverView = editorActivity.M1;
            if (myCoverView != null) {
                myCoverView.f(true);
            }
            MainUtil.e8(editorActivity, R.string.fail);
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            EditorActivity editorActivity;
            WeakReference weakReference = this.e;
            if (weakReference != null && (editorActivity = (EditorActivity) weakReference.get()) != null) {
                editorActivity.Q1 = false;
                MyCoverView myCoverView = editorActivity.M1;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
                if (!this.j) {
                    MainUtil.e8(editorActivity, R.string.fail);
                    return;
                }
                boolean z = this.h;
                String str = this.f;
                if (z) {
                    if (MainUtil.Z7(4, editorActivity, str, null, null)) {
                        editorActivity.B0(true);
                    }
                } else {
                    if (this.i) {
                        Intent intent = new Intent();
                        intent.putExtra("EXTRA_PATH", str);
                        editorActivity.setResult(-1, intent);
                        editorActivity.finish();
                        return;
                    }
                    MainUtil.e8(editorActivity, R.string.save_success);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class SystemRunnable implements Runnable {
        public SystemRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            EditorActivity editorActivity = EditorActivity.this;
            View view = editorActivity.j1;
            if (view == null || (view.getSystemUiVisibility() & 4) == 4) {
                return;
            }
            editorActivity.r0();
        }
    }

    public static void u0(EditorActivity editorActivity, final boolean z, final boolean z2) {
        if (editorActivity.N1 == null) {
            return;
        }
        editorActivity.B0(false);
        editorActivity.N1.e(new PhotoEffectView.PhotoSaveListener() { // from class: com.mycompany.app.editor.EditorActivity.28
            @Override // com.mycompany.app.editor.core.PhotoEffectView.PhotoSaveListener
            public final void a(Bitmap bitmap) {
                final EditorActivity editorActivity2 = EditorActivity.this;
                MyCoverView myCoverView = editorActivity2.M1;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
                String str = "image/jpg";
                if (z) {
                    if (!MainUtil.f6(bitmap)) {
                        MainUtil.e8(editorActivity2, R.string.image_fail);
                        return;
                    }
                    String V3 = MainUtil.V3(editorActivity2.g1, null, null, true);
                    if (!Compress.C(V3, true, true)) {
                        if (bitmap.hasAlpha()) {
                            str = "image/png";
                        }
                        V3 = MainUtil.V3(editorActivity2.g1, null, str, true);
                    }
                    new SaveTask(editorActivity2, MainUtil.k0(editorActivity2.f1, V3), bitmap, true, z2).b(editorActivity2.f1);
                    return;
                }
                if (editorActivity2.z0()) {
                    return;
                }
                editorActivity2.w0();
                editorActivity2.Y1 = true;
                MainApp.K1 = true;
                if (MainUtil.f6(bitmap) && bitmap.hasAlpha()) {
                    str = "image/png";
                }
                String k1 = MainUtil.k1(MainUtil.V3(editorActivity2.g1, null, str, true));
                final boolean z3 = z2;
                DialogDownEdit dialogDownEdit = new DialogDownEdit(editorActivity2, k1, bitmap, new DialogDownPage.DownPageListener() { // from class: com.mycompany.app.editor.EditorActivity.41
                    @Override // com.mycompany.app.dialog.DialogDownPage.DownPageListener
                    public final void a(String str2, String str3, Bitmap bitmap2) {
                        boolean z4 = z3;
                        EditorActivity editorActivity3 = EditorActivity.this;
                        new SaveTask(editorActivity3, str3, bitmap2, false, z4).b(editorActivity3.f1);
                    }
                });
                editorActivity2.X1 = dialogDownEdit;
                dialogDownEdit.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.editor.EditorActivity.42
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = EditorActivity.l2;
                        EditorActivity.this.w0();
                    }
                });
            }

            @Override // com.mycompany.app.editor.core.PhotoEffectView.PhotoSaveListener
            public final void w() {
                EditorActivity editorActivity2 = EditorActivity.this;
                MyCoverView myCoverView = editorActivity2.M1;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
                MainUtil.e8(editorActivity2, R.string.image_fail);
            }
        });
    }

    public static void v0(EditorActivity editorActivity, final FrameLayout frameLayout, String str, int i) {
        if (editorActivity.z0()) {
            return;
        }
        DialogEditorText dialogEditorText = editorActivity.U1;
        if (dialogEditorText != null) {
            dialogEditorText.dismiss();
            editorActivity.U1 = null;
        }
        DialogEditorText dialogEditorText2 = new DialogEditorText(editorActivity, str, i, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.editor.EditorActivity.35
            @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
            public final void a(int i2, String str2) {
                PhotoTouchListener.ObjHolder objHolder;
                AppCompatTextView appCompatTextView;
                PhotoEditor photoEditor = EditorActivity.this.N1;
                if (photoEditor != null) {
                    FrameLayout frameLayout2 = frameLayout;
                    if (frameLayout2 == null) {
                        photoEditor.a(i2, 0, str2);
                        return;
                    }
                    ArrayList arrayList = photoEditor.f;
                    if (arrayList != null && arrayList.contains(frameLayout2) && !TextUtils.isEmpty(str2)) {
                        Object tag = frameLayout2.getTag();
                        if (tag == null || !(tag instanceof PhotoTouchListener.ObjHolder)) {
                            objHolder = null;
                        } else {
                            objHolder = (PhotoTouchListener.ObjHolder) tag;
                        }
                        if (objHolder != null && (appCompatTextView = objHolder.f15682c) != null) {
                            appCompatTextView.setTextColor(i2);
                            appCompatTextView.setText(str2);
                            photoEditor.f15662c.updateViewLayout(frameLayout2, frameLayout2.getLayoutParams());
                        }
                    }
                }
            }
        });
        editorActivity.U1 = dialogEditorText2;
        dialogEditorText2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.editor.EditorActivity.36
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i2 = EditorActivity.l2;
                EditorActivity editorActivity2 = EditorActivity.this;
                DialogEditorText dialogEditorText3 = editorActivity2.U1;
                if (dialogEditorText3 != null) {
                    dialogEditorText3.dismiss();
                    editorActivity2.U1 = null;
                }
            }
        });
    }

    public final void A0(String str, Uri uri, String str2, boolean z) {
        boolean I;
        if (this.m1 != null) {
            if (!TextUtils.isEmpty(str)) {
                if (z) {
                    this.m1.setVisibility(8);
                }
                B0(false);
                if (!TextUtils.isEmpty(this.h1)) {
                    I = this.h1.startsWith("image/svg");
                } else {
                    I = Compress.I(MainUtil.V3(str, null, null, true));
                }
                this.a2 = I;
                if (I) {
                    String str3 = this.h1;
                    this.g2 = str;
                    this.h2 = uri;
                    this.i2 = str3;
                    this.j2 = z;
                    m0(new Runnable() { // from class: com.mycompany.app.editor.EditorActivity.26
                        @Override // java.lang.Runnable
                        public final void run() {
                            EditorActivity editorActivity = EditorActivity.this;
                            if (editorActivity.Z1 == null) {
                                editorActivity.Z1 = GlideApp.a(editorActivity);
                            }
                            Handler handler = editorActivity.O0;
                            if (handler == null) {
                                return;
                            }
                            handler.post(new Runnable() { // from class: com.mycompany.app.editor.EditorActivity.26.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    EditorActivity editorActivity2 = EditorActivity.this;
                                    String str4 = editorActivity2.g2;
                                    if (editorActivity2.Z1 == null) {
                                        return;
                                    }
                                    if (URLUtil.isNetworkUrl(str4)) {
                                        ((GlideRequest) ((GlideRequest) editorActivity2.Z1.b(PictureDrawable.class)).O(MainUtil.A1(editorActivity2.f1, str4, editorActivity2.i1))).F(editorActivity2.k2);
                                        return;
                                    }
                                    ((GlideRequest) ((GlideRequest) editorActivity2.Z1.b(PictureDrawable.class)).O(str4)).F(editorActivity2.k2);
                                }
                            });
                        }
                    });
                    return;
                }
            } else if (uri != null) {
                B0(false);
            } else {
                return;
            }
            this.b2 = str;
            this.c2 = uri;
            this.d2 = str2;
            this.e2 = z;
            m0(new Runnable() { // from class: com.mycompany.app.editor.EditorActivity.24
                @Override // java.lang.Runnable
                public final void run() {
                    EditorActivity editorActivity = EditorActivity.this;
                    if (editorActivity.Z1 == null) {
                        editorActivity.Z1 = GlideApp.a(editorActivity);
                    }
                    Handler handler = editorActivity.O0;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.editor.EditorActivity.24.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            EditorActivity editorActivity2 = EditorActivity.this;
                            String str4 = editorActivity2.b2;
                            Uri uri2 = editorActivity2.c2;
                            if (editorActivity2.Z1 != null) {
                                if (!TextUtils.isEmpty(str4)) {
                                    if (URLUtil.isNetworkUrl(str4)) {
                                        ((GlideRequest) ((GlideRequest) editorActivity2.Z1.d()).O(MainUtil.A1(editorActivity2.f1, str4, editorActivity2.i1))).F(editorActivity2.f2);
                                        return;
                                    }
                                    ((GlideRequest) ((GlideRequest) editorActivity2.Z1.d()).O(str4)).F(editorActivity2.f2);
                                    return;
                                }
                                if (uri2 != null) {
                                    editorActivity2.Z1.d().K(uri2).F(editorActivity2.f2);
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    public final void B0(boolean z) {
        MyCoverView myCoverView = this.M1;
        if (myCoverView != null) {
            myCoverView.setActivated(z);
            this.M1.l();
            if (z) {
                this.M1.postDelayed(new Runnable() { // from class: com.mycompany.app.editor.EditorActivity.43
                    @Override // java.lang.Runnable
                    public final void run() {
                        EditorActivity editorActivity = EditorActivity.this;
                        MyCoverView myCoverView2 = editorActivity.M1;
                        if (myCoverView2 != null && myCoverView2.isActivated()) {
                            editorActivity.M1.setActivated(false);
                            editorActivity.M1.f(false);
                        }
                    }
                }, 1500L);
            }
        }
    }

    @Override // android.app.Activity
    public final void finish() {
        if (this.Q1) {
            return;
        }
        super.finish();
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        Uri data;
        String type;
        DialogDownEdit dialogDownEdit = this.X1;
        if ((dialogDownEdit == null || !dialogDownEdit.D(i, i2, intent)) && i == 9 && this.N1 != null) {
            Uri uri = this.P1;
            this.P1 = null;
            if (i2 != -1) {
                return;
            }
            if (intent == null) {
                data = null;
            } else {
                data = intent.getData();
            }
            if (data != null) {
                uri = data;
            }
            if (uri == null) {
                MainUtil.e8(this, R.string.invalid_path);
                return;
            }
            MainUtil.z7(this.f1, uri);
            if (intent == null) {
                type = null;
            } else {
                type = intent.getType();
            }
            A0(null, uri, type, false);
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (!this.Q1) {
            FrameLayout frameLayout = this.p1;
            if (frameLayout != null && frameLayout.getVisibility() == 0) {
                if (z0()) {
                    return;
                }
                y0();
                this.Y1 = true;
                MainApp.K1 = true;
                DialogSaveConfirm dialogSaveConfirm = new DialogSaveConfirm(this, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.editor.EditorActivity.39
                    @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                    public final void a(int i) {
                        int i2 = EditorActivity.l2;
                        EditorActivity editorActivity = EditorActivity.this;
                        editorActivity.y0();
                        if (i == 0) {
                            EditorActivity.u0(editorActivity, false, true);
                        } else {
                            editorActivity.finish();
                        }
                    }
                });
                this.W1 = dialogSaveConfirm;
                dialogSaveConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.editor.EditorActivity.40
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = EditorActivity.l2;
                        EditorActivity.this.y0();
                    }
                });
                return;
            }
            finish();
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (Y()) {
            return;
        }
        l0();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        DialogDownEdit dialogDownEdit = this.X1;
        if (dialogDownEdit != null) {
            dialogDownEdit.E(h0());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v6, types: [android.widget.RelativeLayout, android.view.View, com.mycompany.app.editor.core.PhotoEditorView, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r12v8, types: [android.opengl.GLSurfaceView, android.view.View, com.mycompany.app.editor.core.PhotoEffectView, android.opengl.GLSurfaceView$Renderer] */
    /* JADX WARN: Type inference failed for: r12v9, types: [com.mycompany.app.editor.core.PhotoDrawView, android.view.View] */
    /* JADX WARN: Type inference failed for: r14v5, types: [java.lang.Object, com.mycompany.app.editor.core.TextureRenderer] */
    /* JADX WARN: Type inference failed for: r1v12, types: [com.mycompany.app.main.MainActivity$SystemBarListener, java.lang.Object] */
    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1 = getApplicationContext();
        Uri data = getIntent().getData();
        if (data != null) {
            this.g1 = data.toString();
            this.h1 = getIntent().getType();
        } else {
            this.g1 = getIntent().getStringExtra("EXTRA_PATH");
            this.h1 = getIntent().getStringExtra("EXTRA_TYPE");
            this.i1 = getIntent().getStringExtra("EXTRA_REFERER");
        }
        int i = PrefRead.P;
        if (i < 1 || i > 40) {
            PrefRead.P = 10;
        }
        int i2 = PrefRead.Q;
        if (i2 < 0 || i2 > 90) {
            PrefRead.Q = 0;
        }
        int i3 = PrefRead.T;
        if (i3 < 1 || i3 > 40) {
            PrefRead.T = 10;
        }
        MainUtil.v7(this, 1);
        this.V0 = new Object();
        Window window = getWindow();
        if (window != null) {
            if (MainUtil.O2(window) != -16777216) {
                MainUtil.t7(window, -16777216);
            }
            r0();
            if (Build.VERSION.SDK_INT < 30) {
                View a0 = a0();
                this.j1 = a0;
                if (a0 != null) {
                    this.k1 = new SystemRunnable();
                    a0.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mycompany.app.editor.EditorActivity.1
                        @Override // android.view.View.OnSystemUiVisibilityChangeListener
                        public final void onSystemUiVisibilityChange(int i4) {
                            EditorActivity editorActivity;
                            View view;
                            SystemRunnable systemRunnable;
                            if ((i4 & 4) != 4 && (view = (editorActivity = EditorActivity.this).j1) != null && (systemRunnable = editorActivity.k1) != null) {
                                view.postDelayed(systemRunnable, 800L);
                            }
                        }
                    });
                }
            }
        }
        o0(null, 9);
        o0(null, 19);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        RelativeLayout relativeLayout2 = new RelativeLayout(this);
        relativeLayout2.setGravity(16);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams.addRule(14);
        relativeLayout.addView(relativeLayout2, layoutParams);
        int G = (int) MainUtil.G(this, 32.0f);
        MyButtonRelative myButtonRelative = new MyButtonRelative(this);
        myButtonRelative.e(MainApp.E1, true);
        myButtonRelative.g(-14606047, -12632257);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, MainApp.i1);
        layoutParams2.setMarginStart(G);
        layoutParams2.setMarginEnd(G);
        relativeLayout2.addView(myButtonRelative, layoutParams2);
        ImageView imageView = new ImageView(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        imageView.setScaleType(scaleType);
        imageView.setImageResource(R.drawable.outline_image_white_24);
        int i4 = MainApp.f1;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i4, i4);
        layoutParams3.addRule(15);
        layoutParams3.setMarginStart(MainApp.E1);
        myButtonRelative.addView(imageView, layoutParams3);
        int G2 = (int) MainUtil.G(this, 72.0f);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 16.0f);
        appCompatTextView.setTextColor(-328966);
        appCompatTextView.setText(R.string.image);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(15);
        layoutParams4.setMarginStart(G2);
        myButtonRelative.addView(appCompatTextView, layoutParams4);
        MyButtonRelative myButtonRelative2 = new MyButtonRelative(this);
        myButtonRelative2.e(MainApp.E1, true);
        myButtonRelative2.g(-14606047, -12632257);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, MainApp.i1);
        layoutParams5.topMargin = MainApp.i1 + G;
        layoutParams5.setMarginStart(G);
        layoutParams5.setMarginEnd(G);
        relativeLayout2.addView(myButtonRelative2, layoutParams5);
        ImageView imageView2 = new ImageView(this);
        imageView2.setScaleType(scaleType);
        imageView2.setImageResource(R.drawable.outline_photo_camera_white_24);
        int i5 = MainApp.f1;
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(i5, i5);
        layoutParams6.addRule(15);
        layoutParams6.setMarginStart(MainApp.E1);
        myButtonRelative2.addView(imageView2, layoutParams6);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        appCompatTextView2.setSingleLine(true);
        appCompatTextView2.setTextSize(1, 16.0f);
        appCompatTextView2.setTextColor(-328966);
        appCompatTextView2.setText(R.string.camera);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(15);
        layoutParams7.setMarginStart(G2);
        myButtonRelative2.addView(appCompatTextView2, layoutParams7);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setVisibility(4);
        relativeLayout.addView(frameLayout, -1, -1);
        ?? relativeLayout3 = new RelativeLayout(this);
        relativeLayout3.f15670c = R.id.photo_editor_image;
        relativeLayout3.i = 0;
        ImageView imageView3 = new ImageView(this);
        relativeLayout3.f = imageView3;
        imageView3.setId(relativeLayout3.f15670c);
        relativeLayout3.f.setAdjustViewBounds(true);
        ?? gLSurfaceView = new GLSurfaceView(this);
        gLSurfaceView.f15675c = new Object();
        gLSurfaceView.f = new int[2];
        gLSurfaceView.m = 0;
        gLSurfaceView.setEGLContextClientVersion(2);
        gLSurfaceView.setRenderer(gLSurfaceView);
        gLSurfaceView.setRenderMode(0);
        gLSurfaceView.requestRender();
        relativeLayout3.g = gLSurfaceView;
        gLSurfaceView.setVisibility(8);
        ?? view = new View(this, null);
        view.a(this);
        view.a(this);
        relativeLayout3.h = view;
        relativeLayout3.addView(relativeLayout3.f, relativeLayout3.b(true));
        relativeLayout3.addView(relativeLayout3.g, relativeLayout3.b(false));
        relativeLayout3.addView(relativeLayout3.h, relativeLayout3.b(false));
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams8.gravity = 17;
        frameLayout.addView((View) relativeLayout3, layoutParams8);
        int G3 = (int) MainUtil.G(this, 136.0f);
        MyButtonCheck myButtonCheck = new MyButtonCheck(this);
        myButtonCheck.p(R.drawable.outline_chevron_right_white_24, R.drawable.outline_chevron_left_white_24);
        myButtonCheck.o(MainApp.j1, MainApp.k1);
        myButtonCheck.m(-1593835520, -1586137739);
        myButtonCheck.setVisibility(4);
        int i6 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(i6, i6);
        layoutParams9.addRule(12);
        layoutParams9.addRule(21);
        layoutParams9.bottomMargin = G3;
        relativeLayout.addView(myButtonCheck, layoutParams9);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        linearLayout.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams10.addRule(12);
        layoutParams10.addRule(21);
        layoutParams10.bottomMargin = G3;
        layoutParams10.setMarginEnd(MainApp.g1);
        relativeLayout.addView(linearLayout, layoutParams10);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        myButtonImage.setScaleType(scaleType);
        myButtonImage.setImageResource(R.drawable.outline_image_white_24);
        myButtonImage.n(MainApp.j1, MainApp.k1);
        myButtonImage.k(-1593835520, -1586137739);
        int i7 = MainApp.g1;
        linearLayout.addView(myButtonImage, i7, i7);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setScaleType(scaleType);
        myButtonImage2.setImageResource(R.drawable.outline_photo_camera_white_24);
        myButtonImage2.n(MainApp.j1, MainApp.k1);
        myButtonImage2.k(-1593835520, -1586137739);
        int i8 = MainApp.g1;
        linearLayout.addView(myButtonImage2, i8, i8);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setScaleType(scaleType);
        myButtonImage3.setImageResource(R.drawable.outline_download_white_24);
        myButtonImage3.n(MainApp.j1, MainApp.k1);
        myButtonImage3.k(-1593835520, -1586137739);
        int i9 = MainApp.g1;
        linearLayout.addView(myButtonImage3, i9, i9);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setScaleType(scaleType);
        myButtonImage4.setImageResource(R.drawable.outline_share_white_24);
        myButtonImage4.n(MainApp.j1, MainApp.k1);
        myButtonImage4.k(-1593835520, -1586137739);
        int i10 = MainApp.g1;
        linearLayout.addView(myButtonImage4, i10, i10);
        int G4 = (int) MainUtil.G(this, 72.0f);
        MyButtonCheck myButtonCheck2 = new MyButtonCheck(this);
        myButtonCheck2.p(R.drawable.outline_chevron_right_white_24, R.drawable.outline_chevron_left_white_24);
        myButtonCheck2.o(MainApp.j1, MainApp.k1);
        myButtonCheck2.m(-1593835520, -1586137739);
        myButtonCheck2.setVisibility(4);
        int i11 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(i11, i11);
        layoutParams11.addRule(12);
        layoutParams11.addRule(21);
        layoutParams11.bottomMargin = G4;
        relativeLayout.addView(myButtonCheck2, layoutParams11);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setBaselineAligned(false);
        linearLayout2.setOrientation(0);
        linearLayout2.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams12.addRule(12);
        layoutParams12.addRule(21);
        layoutParams12.bottomMargin = G4;
        layoutParams12.setMarginEnd(MainApp.g1);
        relativeLayout.addView(linearLayout2, layoutParams12);
        MyButtonImage myButtonImage5 = new MyButtonImage(this);
        myButtonImage5.setScaleType(scaleType);
        myButtonImage5.setImageResource(R.drawable.outline_undo_white_24);
        myButtonImage5.n(MainApp.j1, MainApp.k1);
        myButtonImage5.k(-1593835520, -1586137739);
        int i12 = MainApp.g1;
        linearLayout2.addView(myButtonImage5, i12, i12);
        MyButtonImage myButtonImage6 = new MyButtonImage(this);
        myButtonImage6.setScaleType(scaleType);
        myButtonImage6.setImageResource(R.drawable.outline_redo_white_24);
        myButtonImage6.n(MainApp.j1, MainApp.k1);
        myButtonImage6.k(-1593835520, -1586137739);
        int i13 = MainApp.g1;
        linearLayout2.addView(myButtonImage6, i13, i13);
        MyButtonImage myButtonImage7 = new MyButtonImage(this);
        myButtonImage7.setScaleType(scaleType);
        myButtonImage7.setImageResource(R.drawable.outline_replay_white_24);
        myButtonImage7.n(MainApp.j1, MainApp.k1);
        myButtonImage7.k(-1593835520, -1586137739);
        int i14 = MainApp.g1;
        linearLayout2.addView(myButtonImage7, i14, i14);
        MyFadeFrame myFadeFrame = new MyFadeFrame(this);
        myFadeFrame.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams13.addRule(12);
        layoutParams13.bottomMargin = MainApp.F1;
        relativeLayout.addView(myFadeFrame, layoutParams13);
        MyButtonCheck myButtonCheck3 = new MyButtonCheck(this);
        myButtonCheck3.p(R.drawable.outline_chevron_right_white_24, R.drawable.outline_chevron_left_white_24);
        myButtonCheck3.o(MainApp.j1, MainApp.k1);
        myButtonCheck3.m(-1593835520, -1586137739);
        myButtonCheck3.setVisibility(4);
        int i15 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(i15, i15);
        layoutParams14.gravity = 8388613;
        myFadeFrame.addView(myButtonCheck3, layoutParams14);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setBaselineAligned(false);
        linearLayout3.setOrientation(0);
        linearLayout3.setVisibility(4);
        FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(-2, MainApp.g1);
        layoutParams15.gravity = 8388613;
        layoutParams15.setMarginEnd(MainApp.g1);
        myFadeFrame.addView(linearLayout3, layoutParams15);
        MyButtonCheck myButtonCheck4 = new MyButtonCheck(this);
        myButtonCheck4.p(R.drawable.baseline_edit_red_24, R.drawable.baseline_edit_white_24);
        myButtonCheck4.o(MainApp.j1, MainApp.k1);
        myButtonCheck4.m(-1593835520, -1586137739);
        int i16 = MainApp.g1;
        linearLayout3.addView(myButtonCheck4, i16, i16);
        MyButtonCheck myButtonCheck5 = new MyButtonCheck(this);
        myButtonCheck5.p(R.drawable.baseline_erase_red_24, R.drawable.baseline_erase_white_24);
        myButtonCheck5.o(MainApp.j1, MainApp.k1);
        myButtonCheck5.m(-1593835520, -1586137739);
        int i17 = MainApp.g1;
        linearLayout3.addView(myButtonCheck5, i17, i17);
        MyButtonImage myButtonImage8 = new MyButtonImage(this);
        myButtonImage8.setScaleType(scaleType);
        myButtonImage8.setImageResource(R.drawable.outline_text_format_white_24);
        myButtonImage8.n(MainApp.j1, MainApp.k1);
        myButtonImage8.k(-1593835520, -1586137739);
        int i18 = MainApp.g1;
        linearLayout3.addView(myButtonImage8, i18, i18);
        MyButtonImage myButtonImage9 = new MyButtonImage(this);
        myButtonImage9.setScaleType(scaleType);
        myButtonImage9.setImageResource(R.drawable.outline_sentiment_satisfied_white_24);
        myButtonImage9.n(MainApp.j1, MainApp.k1);
        myButtonImage9.k(-1593835520, -1586137739);
        int i19 = MainApp.g1;
        linearLayout3.addView(myButtonImage9, i19, i19);
        MyButtonImage myButtonImage10 = new MyButtonImage(this);
        myButtonImage10.setScaleType(scaleType);
        myButtonImage10.setImageResource(R.drawable.outline_photo_filter_white_24);
        myButtonImage10.n(MainApp.j1, MainApp.k1);
        myButtonImage10.k(-1593835520, -1586137739);
        int i20 = MainApp.g1;
        linearLayout3.addView(myButtonImage10, i20, i20);
        MyButtonImage myButtonImage11 = new MyButtonImage(this);
        myButtonImage11.setScaleType(scaleType);
        myButtonImage11.setImageResource(R.drawable.outline_chevron_right_white_24);
        myButtonImage11.n(MainApp.j1, MainApp.k1);
        myButtonImage11.k(-1593835520, -1586137739);
        myButtonImage11.setVisibility(4);
        int i21 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(i21, i21);
        layoutParams16.addRule(12);
        layoutParams16.addRule(21);
        layoutParams16.bottomMargin = MainApp.F1;
        relativeLayout.addView(myButtonImage11, layoutParams16);
        MyRecyclerView myRecyclerView = new MyRecyclerView(this);
        myRecyclerView.setBackgroundColor(-1593835520);
        myRecyclerView.setVerticalScrollBarEnabled(false);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        myRecyclerView.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams17 = new RelativeLayout.LayoutParams(-1, MainApp.i1);
        layoutParams17.addRule(12);
        layoutParams17.addRule(21);
        layoutParams17.setMarginEnd(MainApp.g1);
        relativeLayout.addView(myRecyclerView, layoutParams17);
        MyCoverView myCoverView = new MyCoverView(this, -1, (int) MainUtil.G(this, 2.0f), MainApp.z1);
        myCoverView.setBackColor(-1593835520);
        myCoverView.setBlockTouch(true);
        myCoverView.setVisibility(8);
        relativeLayout.addView(myCoverView, -1, -1);
        this.l1 = relativeLayout;
        this.m1 = relativeLayout2;
        this.n1 = myButtonRelative;
        this.o1 = myButtonRelative2;
        this.p1 = frameLayout;
        this.q1 = relativeLayout3;
        this.r1 = myButtonCheck;
        this.s1 = linearLayout;
        this.t1 = myButtonImage;
        this.u1 = myButtonImage2;
        this.v1 = myButtonImage3;
        this.w1 = myButtonImage4;
        this.x1 = myButtonCheck2;
        this.y1 = linearLayout2;
        this.z1 = myButtonImage5;
        this.A1 = myButtonImage6;
        this.B1 = myButtonImage7;
        this.C1 = myFadeFrame;
        this.D1 = myButtonCheck3;
        this.E1 = linearLayout3;
        this.F1 = myButtonCheck4;
        this.G1 = myButtonCheck5;
        this.H1 = myButtonImage8;
        this.I1 = myButtonImage9;
        this.J1 = myButtonImage10;
        this.K1 = myButtonImage11;
        this.L1 = myRecyclerView;
        this.M1 = myCoverView;
        setContentView(relativeLayout);
        initMainScreenOn(this.m1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.editor.EditorActivity.3
            /* JADX WARN: Type inference failed for: r1v23, types: [androidx.recyclerview.widget.RecyclerView$Adapter, com.mycompany.app.editor.EditorEffectAdapter] */
            @Override // java.lang.Runnable
            public final void run() {
                final EditorActivity editorActivity = EditorActivity.this;
                if (editorActivity.l1 == null) {
                    return;
                }
                editorActivity.A0(editorActivity.g1, null, editorActivity.h1, true);
                editorActivity.n1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EditorActivity editorActivity2 = EditorActivity.this;
                        editorActivity2.P1 = null;
                        MainUtil.O4(editorActivity2, 9);
                    }
                });
                editorActivity.o1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EditorActivity editorActivity2 = EditorActivity.this;
                        if (MainUtil.D4(editorActivity2, 28)) {
                            return;
                        }
                        editorActivity2.P1 = MainUtil.C4(9, editorActivity2, false);
                    }
                });
                editorActivity.r1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EditorActivity editorActivity2 = EditorActivity.this;
                        MyButtonCheck myButtonCheck6 = editorActivity2.r1;
                        if (myButtonCheck6 == null) {
                            return;
                        }
                        boolean z = myButtonCheck6.D;
                        myButtonCheck6.q(!z, true);
                        if (!z) {
                            MainUtil.h8(editorActivity2.f1, editorActivity2.s1, R.anim.ic_slide_in, false);
                        } else {
                            MainUtil.h8(editorActivity2.f1, editorActivity2.s1, R.anim.ic_slide_out, true);
                        }
                    }
                });
                editorActivity.t1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EditorActivity editorActivity2 = EditorActivity.this;
                        editorActivity2.P1 = null;
                        MainUtil.O4(editorActivity2, 9);
                    }
                });
                editorActivity.u1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EditorActivity editorActivity2 = EditorActivity.this;
                        if (MainUtil.D4(editorActivity2, 28)) {
                            return;
                        }
                        editorActivity2.P1 = MainUtil.C4(9, editorActivity2, false);
                    }
                });
                editorActivity.v1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EditorActivity.u0(EditorActivity.this, false, false);
                    }
                });
                editorActivity.w1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.10
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EditorActivity.u0(EditorActivity.this, true, false);
                    }
                });
                editorActivity.x1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.11
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EditorActivity editorActivity2 = EditorActivity.this;
                        MyButtonCheck myButtonCheck6 = editorActivity2.x1;
                        if (myButtonCheck6 == null) {
                            return;
                        }
                        boolean z = myButtonCheck6.D;
                        myButtonCheck6.q(!z, true);
                        if (!z) {
                            MainUtil.h8(editorActivity2.f1, editorActivity2.y1, R.anim.ic_slide_in, false);
                        } else {
                            MainUtil.h8(editorActivity2.f1, editorActivity2.y1, R.anim.ic_slide_out, true);
                        }
                    }
                });
                editorActivity.z1.setEnabled(false);
                editorActivity.z1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.12
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        PhotoEditor photoEditor = EditorActivity.this.N1;
                        if (photoEditor != null) {
                            photoEditor.g();
                        }
                    }
                });
                editorActivity.A1.setEnabled(false);
                editorActivity.A1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.13
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        PhotoEditor photoEditor = EditorActivity.this.N1;
                        if (photoEditor != null) {
                            photoEditor.c();
                        }
                    }
                });
                editorActivity.B1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.14
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        int i22 = EditorActivity.l2;
                        final EditorActivity editorActivity2 = EditorActivity.this;
                        if (editorActivity2.z0()) {
                            return;
                        }
                        editorActivity2.x0();
                        editorActivity2.Y1 = true;
                        MainApp.K1 = true;
                        DialogSetMsg dialogSetMsg = new DialogSetMsg(editorActivity2, R.string.reset_confirm, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.editor.EditorActivity.29
                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                            public final void a() {
                                EditorActivity editorActivity3 = EditorActivity.this;
                                PhotoEditor photoEditor = editorActivity3.N1;
                                if (photoEditor == null) {
                                    return;
                                }
                                photoEditor.d();
                                editorActivity3.O1.v(0);
                                editorActivity3.x0();
                            }
                        });
                        editorActivity2.R1 = dialogSetMsg;
                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.editor.EditorActivity.30
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                int i23 = EditorActivity.l2;
                                EditorActivity.this.x0();
                            }
                        });
                    }
                });
                editorActivity.D1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.15
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EditorActivity editorActivity2 = EditorActivity.this;
                        MyButtonCheck myButtonCheck6 = editorActivity2.D1;
                        if (myButtonCheck6 == null) {
                            return;
                        }
                        boolean z = myButtonCheck6.D;
                        myButtonCheck6.q(!z, true);
                        if (!z) {
                            MainUtil.h8(editorActivity2.f1, editorActivity2.E1, R.anim.ic_slide_in, false);
                        } else {
                            MainUtil.h8(editorActivity2.f1, editorActivity2.E1, R.anim.ic_slide_out, true);
                        }
                    }
                });
                editorActivity.F1.q(true, false);
                editorActivity.F1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.16
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        final EditorActivity editorActivity2 = EditorActivity.this;
                        MyButtonCheck myButtonCheck6 = editorActivity2.F1;
                        if (myButtonCheck6 != null) {
                            if (myButtonCheck6.D) {
                                if (!editorActivity2.z0()) {
                                    DialogEditorPen dialogEditorPen = editorActivity2.S1;
                                    if (dialogEditorPen != null) {
                                        dialogEditorPen.dismiss();
                                        editorActivity2.S1 = null;
                                    }
                                    DialogEditorPen dialogEditorPen2 = new DialogEditorPen(editorActivity2, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.editor.EditorActivity.31
                                        @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                                        public final void a(int i22, String str) {
                                            Paint paint;
                                            PhotoEditor photoEditor = EditorActivity.this.N1;
                                            if (photoEditor != null) {
                                                int i23 = PrefRead.P;
                                                int i24 = PrefRead.R;
                                                int i25 = PrefRead.Q;
                                                PhotoDrawView photoDrawView = photoEditor.e;
                                                if (photoDrawView != null && (paint = photoDrawView.l) != null) {
                                                    float f = i23;
                                                    if (photoDrawView.g != f) {
                                                        photoDrawView.g = f;
                                                        paint.setStrokeWidth(MainUtil.G(photoDrawView.f15658c, f));
                                                    }
                                                    if (photoDrawView.h != i24) {
                                                        photoDrawView.h = i24;
                                                        photoDrawView.i = i25;
                                                        photoDrawView.l.setColor(i24);
                                                        photoDrawView.l.setAlpha(MainUtil.b3(photoDrawView.i));
                                                        return;
                                                    }
                                                    if (photoDrawView.i != i25) {
                                                        photoDrawView.i = i25;
                                                        photoDrawView.l.setAlpha(MainUtil.b3(i25));
                                                    }
                                                }
                                            }
                                        }
                                    });
                                    editorActivity2.S1 = dialogEditorPen2;
                                    dialogEditorPen2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.editor.EditorActivity.32
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            int i22 = EditorActivity.l2;
                                            EditorActivity editorActivity3 = EditorActivity.this;
                                            DialogEditorPen dialogEditorPen3 = editorActivity3.S1;
                                            if (dialogEditorPen3 != null) {
                                                dialogEditorPen3.dismiss();
                                                editorActivity3.S1 = null;
                                            }
                                        }
                                    });
                                    return;
                                }
                                return;
                            }
                            editorActivity2.G1.q(false, true);
                            editorActivity2.F1.q(true, true);
                            PhotoDrawView photoDrawView = editorActivity2.N1.e;
                            if (photoDrawView != null) {
                                photoDrawView.setEraseMode(false);
                            }
                        }
                    }
                });
                editorActivity.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.17
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        final EditorActivity editorActivity2 = EditorActivity.this;
                        MyButtonCheck myButtonCheck6 = editorActivity2.G1;
                        if (myButtonCheck6 != null) {
                            if (myButtonCheck6.D) {
                                if (!editorActivity2.z0()) {
                                    DialogEditorErase dialogEditorErase = editorActivity2.T1;
                                    if (dialogEditorErase != null) {
                                        dialogEditorErase.dismiss();
                                        editorActivity2.T1 = null;
                                    }
                                    DialogEditorErase dialogEditorErase2 = new DialogEditorErase(editorActivity2, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.editor.EditorActivity.33
                                        @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                                        public final void a(int i22, String str) {
                                            PhotoEditor photoEditor = EditorActivity.this.N1;
                                            if (photoEditor != null) {
                                                int i23 = PrefRead.T;
                                                PhotoDrawView photoDrawView = photoEditor.e;
                                                if (photoDrawView != null) {
                                                    photoDrawView.setEraseSize(i23);
                                                }
                                            }
                                        }
                                    });
                                    editorActivity2.T1 = dialogEditorErase2;
                                    dialogEditorErase2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.editor.EditorActivity.34
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            int i22 = EditorActivity.l2;
                                            EditorActivity editorActivity3 = EditorActivity.this;
                                            DialogEditorErase dialogEditorErase3 = editorActivity3.T1;
                                            if (dialogEditorErase3 != null) {
                                                dialogEditorErase3.dismiss();
                                                editorActivity3.T1 = null;
                                            }
                                        }
                                    });
                                    return;
                                }
                                return;
                            }
                            editorActivity2.F1.q(false, true);
                            editorActivity2.G1.q(true, true);
                            PhotoDrawView photoDrawView = editorActivity2.N1.e;
                            if (photoDrawView != null) {
                                photoDrawView.setEraseMode(true);
                            }
                        }
                    }
                });
                editorActivity.H1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.18
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EditorActivity.v0(EditorActivity.this, null, null, 0);
                    }
                });
                editorActivity.I1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.19
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        final EditorActivity editorActivity2 = EditorActivity.this;
                        if (editorActivity2.l1 == null || editorActivity2.z0()) {
                            return;
                        }
                        DialogEditorEmoji dialogEditorEmoji = editorActivity2.V1;
                        if (dialogEditorEmoji != null) {
                            dialogEditorEmoji.dismiss();
                            editorActivity2.V1 = null;
                        }
                        DialogEditorEmoji dialogEditorEmoji2 = new DialogEditorEmoji(editorActivity2, editorActivity2.l1.getWidth(), new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.editor.EditorActivity.37
                            @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                            public final void a(int i22, String str) {
                                PhotoEditor photoEditor = EditorActivity.this.N1;
                                if (photoEditor == null) {
                                    return;
                                }
                                photoEditor.a(0, 1, str);
                            }
                        });
                        editorActivity2.V1 = dialogEditorEmoji2;
                        dialogEditorEmoji2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.editor.EditorActivity.38
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                int i22 = EditorActivity.l2;
                                EditorActivity editorActivity3 = EditorActivity.this;
                                DialogEditorEmoji dialogEditorEmoji3 = editorActivity3.V1;
                                if (dialogEditorEmoji3 != null) {
                                    dialogEditorEmoji3.dismiss();
                                    editorActivity3.V1 = null;
                                }
                            }
                        });
                    }
                });
                editorActivity.J1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.20
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EditorActivity editorActivity2 = EditorActivity.this;
                        MyButtonImage myButtonImage12 = editorActivity2.K1;
                        if (myButtonImage12 != null && myButtonImage12.getVisibility() != 0) {
                            editorActivity2.C1.d(true);
                            editorActivity2.K1.g();
                            MainUtil.h8(editorActivity2.f1, editorActivity2.L1, R.anim.ic_slide_in, false);
                            EditorEffectAdapter editorEffectAdapter = editorActivity2.O1;
                            MyRecyclerView myRecyclerView2 = editorEffectAdapter.f;
                            if (myRecyclerView2 != null) {
                                myRecyclerView2.i0(editorEffectAdapter.g);
                            }
                        }
                    }
                });
                editorActivity.K1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorActivity.21
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EditorActivity editorActivity2 = EditorActivity.this;
                        MyFadeFrame myFadeFrame2 = editorActivity2.C1;
                        if (myFadeFrame2 != null && myFadeFrame2.getVisibility() != 0) {
                            editorActivity2.C1.h(true);
                            editorActivity2.K1.f(false);
                            MainUtil.h8(editorActivity2.f1, editorActivity2.L1, R.anim.ic_slide_out, true);
                        }
                    }
                });
                MyRecyclerView myRecyclerView2 = editorActivity.L1;
                AnonymousClass22 anonymousClass22 = new AnonymousClass22();
                ?? adapter = new RecyclerView.Adapter();
                adapter.d = editorActivity;
                adapter.f = myRecyclerView2;
                adapter.e = anonymousClass22;
                adapter.g = 0;
                editorActivity.O1 = adapter;
                if (Build.VERSION.SDK_INT < 31) {
                    editorActivity.L1.setOverScrollMode(2);
                }
                a.w(0, editorActivity.L1);
                editorActivity.L1.setAdapter(editorActivity.O1);
                editorActivity.N1 = new PhotoEditor(editorActivity, editorActivity.q1, new PhotoEditor.PhotoListener() { // from class: com.mycompany.app.editor.EditorActivity.23
                    @Override // com.mycompany.app.editor.core.PhotoEditor.PhotoListener
                    public final void a(boolean z, boolean z2) {
                        EditorActivity editorActivity2 = EditorActivity.this;
                        MyButtonImage myButtonImage12 = editorActivity2.z1;
                        if (myButtonImage12 == null) {
                            return;
                        }
                        myButtonImage12.setEnabled(z);
                        editorActivity2.A1.setEnabled(z2);
                    }

                    @Override // com.mycompany.app.editor.core.PhotoEditor.PhotoListener
                    public final void b(FrameLayout frameLayout2, String str, int i22) {
                        EditorActivity.v0(EditorActivity.this, frameLayout2, str, i22);
                    }
                });
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        View view = this.j1;
        if (view != null) {
            SystemRunnable systemRunnable = this.k1;
            if (systemRunnable != null) {
                view.removeCallbacks(systemRunnable);
            }
            this.j1 = null;
        }
        this.k1 = null;
        GlideRequests glideRequests = this.Z1;
        if (glideRequests != null) {
            if (this.a2) {
                MyGlideTarget myGlideTarget = this.k2;
                if (myGlideTarget != null) {
                    glideRequests.p(myGlideTarget);
                }
            } else {
                MyGlideTarget myGlideTarget2 = this.f2;
                if (myGlideTarget2 != null) {
                    glideRequests.p(myGlideTarget2);
                }
            }
            this.Z1 = null;
        }
        MyButtonRelative myButtonRelative = this.n1;
        if (myButtonRelative != null) {
            myButtonRelative.f();
            this.n1 = null;
        }
        MyButtonRelative myButtonRelative2 = this.o1;
        if (myButtonRelative2 != null) {
            myButtonRelative2.f();
            this.o1 = null;
        }
        PhotoEditorView photoEditorView = this.q1;
        if (photoEditorView != null) {
            PhotoDrawView photoDrawView = photoEditorView.h;
            if (photoDrawView != null) {
                photoDrawView.f15658c = null;
                photoDrawView.f = null;
                photoDrawView.l = null;
                photoDrawView.m = null;
                photoDrawView.n = null;
                photoDrawView.o = null;
                photoEditorView.h = null;
            }
            PhotoEffectView photoEffectView = photoEditorView.g;
            if (photoEffectView != null) {
                Effect effect = photoEffectView.l;
                if (effect != null) {
                    effect.release();
                    photoEffectView.l = null;
                }
                photoEffectView.f15675c = null;
                photoEffectView.f = null;
                photoEffectView.h = null;
                photoEffectView.k = null;
                photoEffectView.n = null;
                photoEditorView.g = null;
            }
            photoEditorView.f = null;
            photoEditorView.j = null;
            this.q1 = null;
        }
        MyButtonCheck myButtonCheck = this.r1;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.r1 = null;
        }
        MyButtonImage myButtonImage = this.t1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.t1 = null;
        }
        MyButtonImage myButtonImage2 = this.u1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.u1 = null;
        }
        MyButtonImage myButtonImage3 = this.v1;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.v1 = null;
        }
        MyButtonCheck myButtonCheck2 = this.x1;
        if (myButtonCheck2 != null) {
            myButtonCheck2.l();
            this.x1 = null;
        }
        MyButtonImage myButtonImage4 = this.z1;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.z1 = null;
        }
        MyButtonImage myButtonImage5 = this.A1;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.A1 = null;
        }
        MyButtonImage myButtonImage6 = this.B1;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.B1 = null;
        }
        MyFadeFrame myFadeFrame = this.C1;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.C1 = null;
        }
        MyButtonCheck myButtonCheck3 = this.D1;
        if (myButtonCheck3 != null) {
            myButtonCheck3.l();
            this.D1 = null;
        }
        MyButtonCheck myButtonCheck4 = this.F1;
        if (myButtonCheck4 != null) {
            myButtonCheck4.l();
            this.F1 = null;
        }
        MyButtonCheck myButtonCheck5 = this.G1;
        if (myButtonCheck5 != null) {
            myButtonCheck5.l();
            this.G1 = null;
        }
        MyButtonImage myButtonImage7 = this.H1;
        if (myButtonImage7 != null) {
            myButtonImage7.j();
            this.H1 = null;
        }
        MyButtonImage myButtonImage8 = this.I1;
        if (myButtonImage8 != null) {
            myButtonImage8.j();
            this.I1 = null;
        }
        MyButtonImage myButtonImage9 = this.J1;
        if (myButtonImage9 != null) {
            myButtonImage9.j();
            this.J1 = null;
        }
        MyButtonImage myButtonImage10 = this.K1;
        if (myButtonImage10 != null) {
            myButtonImage10.j();
            this.K1 = null;
        }
        MyRecyclerView myRecyclerView = this.L1;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.L1 = null;
        }
        MyCoverView myCoverView = this.M1;
        if (myCoverView != null) {
            myCoverView.i();
            this.M1 = null;
        }
        PhotoEditor photoEditor = this.N1;
        if (photoEditor != null) {
            photoEditor.f15661a = null;
            photoEditor.f15662c = null;
            photoEditor.d = null;
            photoEditor.e = null;
            photoEditor.f = null;
            photoEditor.g = null;
            photoEditor.b = null;
            this.N1 = null;
        }
        EditorEffectAdapter editorEffectAdapter = this.O1;
        if (editorEffectAdapter != null) {
            if (editorEffectAdapter.h != null) {
                editorEffectAdapter.h = null;
            }
            editorEffectAdapter.d = null;
            editorEffectAdapter.e = null;
            editorEffectAdapter.f = null;
            this.O1 = null;
        }
        this.f1 = null;
        this.g1 = null;
        this.h1 = null;
        this.i1 = null;
        this.l1 = null;
        this.m1 = null;
        this.p1 = null;
        this.s1 = null;
        this.y1 = null;
        this.E1 = null;
        this.P1 = null;
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (this.Y1) {
            MainUtil.K7(this, false);
        }
        if (isFinishing()) {
            x0();
            DialogEditorPen dialogEditorPen = this.S1;
            if (dialogEditorPen != null) {
                dialogEditorPen.dismiss();
                this.S1 = null;
            }
            DialogEditorErase dialogEditorErase = this.T1;
            if (dialogEditorErase != null) {
                dialogEditorErase.dismiss();
                this.T1 = null;
            }
            DialogEditorText dialogEditorText = this.U1;
            if (dialogEditorText != null) {
                dialogEditorText.dismiss();
                this.U1 = null;
            }
            DialogEditorEmoji dialogEditorEmoji = this.V1;
            if (dialogEditorEmoji != null) {
                dialogEditorEmoji.dismiss();
                this.V1 = null;
            }
            y0();
            w0();
            MainApp.T1 = null;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (iArr != null && iArr.length > 0 && iArr[0] == 0) {
            this.P1 = MainUtil.C4(9, this, false);
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        MyCoverView myCoverView = this.M1;
        if (myCoverView != null && myCoverView.isActivated()) {
            this.M1.setActivated(false);
            this.M1.f(false);
        }
        if (this.Y1) {
            MainUtil.K7(this, true);
        }
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.editor.EditorActivity.2
            @Override // java.lang.Runnable
            public final void run() {
                EditorActivity editorActivity = EditorActivity.this;
                if (editorActivity.O0 == null) {
                    return;
                }
                MainUtil.g7(editorActivity.getWindow(), PrefPdf.o, PrefPdf.n);
            }
        });
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (Build.VERSION.SDK_INT < 30) {
            r0();
        }
    }

    public final void w0() {
        DialogDownEdit dialogDownEdit = this.X1;
        if (dialogDownEdit != null) {
            dialogDownEdit.dismiss();
            this.X1 = null;
            this.Y1 = false;
            MainUtil.K7(this, false);
        }
    }

    public final void x0() {
        DialogSetMsg dialogSetMsg = this.R1;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.R1 = null;
            this.Y1 = false;
            MainUtil.K7(this, false);
        }
    }

    public final void y0() {
        DialogSaveConfirm dialogSaveConfirm = this.W1;
        if (dialogSaveConfirm != null) {
            dialogSaveConfirm.dismiss();
            this.W1 = null;
            this.Y1 = false;
            MainUtil.K7(this, false);
        }
    }

    public final boolean z0() {
        if (this.R1 != null || this.S1 != null || this.T1 != null || this.U1 != null || this.V1 != null || this.W1 != null || this.X1 != null) {
            return true;
        }
        return false;
    }
}
