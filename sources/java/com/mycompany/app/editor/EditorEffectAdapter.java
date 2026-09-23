package com.mycompany.app.editor;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.mycompany.app.editor.core.PhotoEditor;
import com.mycompany.app.editor.core.PhotoEditorView;
import com.mycompany.app.editor.core.PhotoEffectView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyThumbView;

/* loaded from: classes3.dex */
public class EditorEffectAdapter extends RecyclerView.Adapter<ViewHolder> {
    public MainActivity d;
    public EditorEffectListener e;
    public MyRecyclerView f;
    public int g;
    public GlideRequests h;

    /* loaded from: classes3.dex */
    public interface EditorEffectListener {
    }

    /* loaded from: classes3.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public MyThumbView u;
        public AppCompatTextView v;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        String[] strArr = PhotoEffectView.o;
        return 23;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, final int i) {
        int i2;
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        if (viewHolder2.f1589a != null && i >= 0) {
            String[] strArr = PhotoEffectView.o;
            if (i < 23) {
                final MyThumbView myThumbView = viewHolder2.u;
                if (myThumbView != null) {
                    GlideRequests glideRequests = this.h;
                    if (glideRequests != null) {
                        ((RequestBuilder) glideRequests.s(Integer.valueOf(PhotoEffectView.p[i])).e(DiskCacheStrategy.f2204a)).E(myThumbView);
                    } else {
                        MainActivity mainActivity = this.d;
                        if (mainActivity != null) {
                            mainActivity.m0(new Runnable() { // from class: com.mycompany.app.editor.EditorEffectAdapter.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    EditorEffectAdapter editorEffectAdapter = EditorEffectAdapter.this;
                                    MainActivity mainActivity2 = editorEffectAdapter.d;
                                    if (mainActivity2 != null) {
                                        if (editorEffectAdapter.h == null) {
                                            editorEffectAdapter.h = GlideApp.a(mainActivity2);
                                        }
                                        MyRecyclerView myRecyclerView = editorEffectAdapter.f;
                                        if (myRecyclerView == null) {
                                            return;
                                        }
                                        myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.editor.EditorEffectAdapter.2.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                                GlideRequests glideRequests2 = EditorEffectAdapter.this.h;
                                                if (glideRequests2 == null) {
                                                    return;
                                                }
                                                ((RequestBuilder) glideRequests2.s(Integer.valueOf(PhotoEffectView.p[i])).e(DiskCacheStrategy.f2204a)).E(myThumbView);
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    }
                }
                viewHolder2.u.setTag(Integer.valueOf(i));
                viewHolder2.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.editor.EditorEffectAdapter.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Object tag;
                        EditorEffectAdapter editorEffectAdapter = EditorEffectAdapter.this;
                        if (editorEffectAdapter.e != null && (tag = view.getTag()) != null && (tag instanceof Integer)) {
                            EditorEffectListener editorEffectListener = editorEffectAdapter.e;
                            int intValue = ((Integer) tag).intValue();
                            EditorActivity editorActivity = EditorActivity.this;
                            PhotoEditor photoEditor = editorActivity.N1;
                            if (photoEditor != null) {
                                PhotoEditorView photoEditorView = photoEditor.f15662c;
                                if (photoEditorView != null) {
                                    photoEditorView.setEffectType(intValue);
                                }
                                editorActivity.O1.v(intValue);
                            }
                        }
                    }
                });
                if (i != 5 && i != 17 && i != 4 && i != 20 && i != 21) {
                    viewHolder2.v.setTextSize(1, 8.0f);
                } else {
                    viewHolder2.v.setTextSize(1, 7.0f);
                }
                viewHolder2.v.setText(strArr[i]);
                AppCompatTextView appCompatTextView = viewHolder2.v;
                if (i == this.g) {
                    i2 = -1577827530;
                } else {
                    i2 = -1593835520;
                }
                appCompatTextView.setBackgroundColor(i2);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v7, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.editor.EditorEffectAdapter$ViewHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        FrameLayout frameLayout = new FrameLayout(context);
        int i2 = MainApp.G1;
        frameLayout.setPadding(i2, i2, i2, i2);
        int i3 = MainApp.i1;
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(i3, i3));
        MyThumbView myThumbView = new MyThumbView(context);
        frameLayout.addView(myThumbView, -1, -1);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        int G = (int) MainUtil.G(context, 2.0f);
        appCompatTextView.setPadding(G, G, G, G);
        appCompatTextView.setMinHeight(MainApp.E1);
        appCompatTextView.setGravity(17);
        appCompatTextView.setTextColor(-1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 8388691;
        frameLayout.addView(appCompatTextView, layoutParams);
        ?? viewHolder = new RecyclerView.ViewHolder(frameLayout);
        viewHolder.u = myThumbView;
        viewHolder.v = appCompatTextView;
        return viewHolder;
    }

    public final void v(int i) {
        if (this.f == null || this.g == i) {
            return;
        }
        this.g = i;
        g();
        this.f.i0(this.g);
    }
}
