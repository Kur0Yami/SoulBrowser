package com.mycompany.app.main;

import android.content.Context;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MenuIconAdapter;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class MenuListAdapter extends RecyclerView.Adapter<ListHolder> {
    public int[] d;
    public MenuIconAdapter.MenuListener e;
    public int f;

    /* renamed from: com.mycompany.app.main.MenuListAdapter$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                int width = view.getWidth();
                int height = view.getHeight();
                int i = MainApp.m1;
                outline.setRoundRect(0, 0, width, height + i, i);
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MenuListAdapter$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, -MainApp.m1, view.getWidth(), view.getHeight(), MainApp.m1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ListHolder extends RecyclerView.ViewHolder {
        public FrameLayout u;
        public View v;
        public AppCompatTextView w;
    }

    public MenuListAdapter(int[] iArr, MenuIconAdapter.MenuListener menuListener) {
        this.d = iArr;
        this.e = menuListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.f;
        if (i != 0) {
            return i;
        }
        int[] iArr = this.d;
        if (iArr == null) {
            return 0;
        }
        return iArr.length;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long e(int i) {
        int[] iArr = this.d;
        if (iArr != null && i >= 0 && i < iArr.length) {
            return iArr[i];
        }
        return -1L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        int i2;
        int i3;
        int i4 = PrefMain.z;
        if (i4 == 0) {
            i4 = 5;
        }
        if (i % i4 == 0) {
            if (i > 0) {
                i2 = 2;
            }
            i2 = 0;
        } else {
            if ((i + 1) % i4 == 0 && i < d() - 1) {
                i2 = 4;
            }
            i2 = 0;
        }
        int[] iArr = this.d;
        if (iArr != null && i >= 0 && i < iArr.length) {
            i3 = iArr[i];
        } else {
            i3 = -1;
        }
        if (i3 == 68) {
            return i2 | 8;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        ListHolder listHolder = (ListHolder) viewHolder;
        View view = listHolder.f1589a;
        if (view == null) {
            return;
        }
        int[] iArr = this.d;
        if (iArr != null && i >= 0 && i < iArr.length) {
            i2 = iArr[i];
        } else {
            i2 = -1;
        }
        if (i2 >= 0 && i2 < 74 && i2 != 0) {
            view.setVisibility(0);
            if (i2 == 68) {
                if (MainApp.K1) {
                    listHolder.u.setBackgroundColor(-14606047);
                } else {
                    listHolder.u.setBackgroundColor(-1);
                }
                listHolder.v.setVisibility(8);
                listHolder.w.setVisibility(8);
                return;
            }
            listHolder.v.setVisibility(0);
            listHolder.w.setVisibility(0);
            listHolder.u.setTag(listHolder);
            listHolder.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MenuListAdapter.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ListHolder listHolder2;
                    int i3;
                    MenuIconAdapter.MenuListener menuListener;
                    Object tag = view2.getTag();
                    if (tag != null && (tag instanceof ListHolder)) {
                        listHolder2 = (ListHolder) tag;
                    } else {
                        listHolder2 = null;
                    }
                    if (listHolder2 != null && listHolder2.u != null) {
                        int c2 = listHolder2.c();
                        MenuListAdapter menuListAdapter = MenuListAdapter.this;
                        int[] iArr2 = menuListAdapter.d;
                        if (iArr2 != null && c2 >= 0 && c2 < iArr2.length) {
                            i3 = iArr2[c2];
                        } else {
                            i3 = -1;
                        }
                        if (i3 >= 0 && i3 < 74 && i3 != 0 && i3 != 68 && (menuListener = menuListAdapter.e) != null) {
                            menuListener.b(view2, 0, i3);
                        }
                    }
                }
            });
            listHolder.u.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.main.MenuListAdapter.2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    MenuIconAdapter.MenuListener menuListener = MenuListAdapter.this.e;
                    if (menuListener != null) {
                        menuListener.a(null);
                        return true;
                    }
                    return true;
                }
            });
            listHolder.v.setBackgroundResource(MainUtil.k2(i2, MainUtil.s0(0, false)));
            listHolder.v.setAlpha(1.0f);
            listHolder.w.setText(MainUtil.l2(i2));
            if (MainApp.K1) {
                listHolder.u.setBackgroundResource(R.drawable.selector_list_back_dark);
                listHolder.w.setTextColor(-328966);
                return;
            } else {
                listHolder.u.setBackgroundResource(R.drawable.selector_list_back);
                listHolder.w.setTextColor(-16777216);
                return;
            }
        }
        view.setVisibility(8);
    }

    /* JADX WARN: Type inference failed for: r13v4, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MenuListAdapter$ListHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        int i2;
        int G;
        FrameLayout.LayoutParams layoutParams;
        int G2;
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        FrameLayout frameLayout = new FrameLayout(context);
        int i3 = i & 4;
        if (i3 == 4) {
            if ((i & 8) == 8) {
                G2 = MainApp.E1 * 2;
            } else {
                G2 = (int) MainUtil.G(context, 52.0f);
            }
            i2 = G2 + MainApp.E1;
        } else {
            i2 = -2;
        }
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, i2));
        FrameLayout frameLayout2 = new FrameLayout(context);
        if (PrefMain.y == 0) {
            frameLayout2.setPaddingRelative(0, 0, MainApp.F1, 0);
        }
        if ((i & 8) == 8) {
            G = MainApp.E1 * 2;
        } else {
            G = (int) MainUtil.G(context, 52.0f);
        }
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, G);
        if ((i & 2) == 2) {
            frameLayout2.setOutlineProvider(new ViewOutlineProvider());
            frameLayout2.setClipToOutline(true);
        } else if (i3 == 4) {
            frameLayout2.setOutlineProvider(new ViewOutlineProvider());
            frameLayout2.setClipToOutline(true);
        }
        frameLayout.addView(frameLayout2, layoutParams2);
        View view = new View(context);
        int G3 = (int) MainUtil.G(context, 20.0f);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(G3, G3);
        int i4 = MainApp.E1;
        layoutParams3.topMargin = i4;
        if (PrefMain.y == 1) {
            layoutParams3.setMarginStart((int) MainUtil.G(context, 22.0f));
        } else {
            layoutParams3.setMarginStart(i4);
        }
        frameLayout2.addView(view, layoutParams3);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 16.0f);
        if (PrefMain.y == 1) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.setMarginStart((int) MainUtil.G(context, 64.0f));
            layoutParams.setMarginEnd(MainApp.F1);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -1);
            layoutParams.setMarginStart((int) MainUtil.G(context, 52.0f));
        }
        frameLayout2.addView(appCompatTextView, layoutParams);
        ?? viewHolder = new RecyclerView.ViewHolder(frameLayout);
        viewHolder.u = frameLayout2;
        viewHolder.v = view;
        viewHolder.w = appCompatTextView;
        return viewHolder;
    }
}
