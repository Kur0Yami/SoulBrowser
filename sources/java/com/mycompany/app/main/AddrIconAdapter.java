package com.mycompany.app.main;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MenuIconAdapter;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.view.MyIconView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class AddrIconAdapter extends RecyclerView.Adapter<AddrHolder> {
    public int d;
    public View e;
    public AddrListener f;
    public ArrayList g;
    public ArrayList h;
    public boolean i;
    public int j;

    /* loaded from: classes3.dex */
    public static class AddrHolder extends RecyclerView.ViewHolder {
        public MyIconView u;
    }

    /* loaded from: classes3.dex */
    public interface AddrListener {
        void a(int i);

        void b(AddrHolder addrHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.j;
        if (i != 0) {
            return i;
        }
        ArrayList arrayList = this.g;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        MenuIconAdapter.MainMenuItem v = v(i);
        if (v == null || v.f17033a != 1234) {
            return 0;
        }
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        MenuIconAdapter.MainMenuItem v;
        boolean z;
        int i2;
        ViewGroup.LayoutParams layoutParams;
        AddrHolder addrHolder = (AddrHolder) viewHolder;
        View view = addrHolder.f1589a;
        if (view == null || (v = v(i)) == null) {
            return;
        }
        if (v.f17033a == 1234) {
            z = true;
        } else {
            z = false;
        }
        int width = this.e.getWidth();
        int d = d();
        if (d == 0) {
            i2 = -1;
        } else if (z) {
            i2 = width - ((d - 1) * MainApp.g1);
        } else {
            i2 = MainApp.g1;
        }
        if (view.getWidth() != i2 && (layoutParams = view.getLayoutParams()) != null) {
            layoutParams.width = i2;
            view.requestLayout();
        }
        if (addrHolder.u == null) {
            view.setVisibility(4);
            return;
        }
        view.setVisibility(0);
        int s0 = MainUtil.s0(0, false);
        view.setTag(addrHolder);
        addrHolder.u.setTag(addrHolder);
        addrHolder.u.v(false, true);
        addrHolder.u.setBgPreColor(MainUtil.P1(s0, 0));
        addrHolder.u.setImageResource(MainUtil.N(v.f17033a, s0));
        if (this.i) {
            addrHolder.u.setSetting(true);
            addrHolder.u.x(PrefZone.m0, false);
        }
        addrHolder.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.AddrIconAdapter.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AddrHolder addrHolder2;
                Object tag = view2.getTag();
                if (tag != null && (tag instanceof AddrHolder)) {
                    addrHolder2 = (AddrHolder) tag;
                } else {
                    addrHolder2 = null;
                }
                if (addrHolder2 != null && addrHolder2.u != null) {
                    int c2 = addrHolder2.c();
                    AddrIconAdapter addrIconAdapter = AddrIconAdapter.this;
                    if (addrIconAdapter.v(c2) != null) {
                        if (addrIconAdapter.i) {
                            if (PrefZone.m0) {
                                PrefZone.m0 = false;
                                PrefSet.d(15, addrHolder2.u.getContext(), "mNotiAddr", PrefZone.m0);
                            }
                            addrHolder2.u.x(false, true);
                        }
                        AddrListener addrListener = addrIconAdapter.f;
                        if (addrListener != null) {
                            addrListener.a(c2);
                        }
                    }
                }
            }
        });
        addrHolder.u.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.main.AddrIconAdapter.2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                AddrHolder addrHolder2;
                Object tag = view2.getTag();
                if (tag != null && (tag instanceof AddrHolder)) {
                    addrHolder2 = (AddrHolder) tag;
                } else {
                    addrHolder2 = null;
                }
                if (addrHolder2 != null && addrHolder2.u != null) {
                    int c2 = addrHolder2.c();
                    AddrIconAdapter addrIconAdapter = AddrIconAdapter.this;
                    if (addrIconAdapter.v(c2) != null) {
                        if (addrIconAdapter.i) {
                            if (PrefZone.m0) {
                                PrefZone.m0 = false;
                                PrefSet.d(15, addrHolder2.u.getContext(), "mNotiAddr", PrefZone.m0);
                            }
                            addrHolder2.u.x(false, true);
                        }
                        AddrListener addrListener = addrIconAdapter.f;
                        if (addrListener != null) {
                            addrListener.b(addrHolder2);
                        }
                    }
                }
                return true;
            }
        });
    }

    /* JADX WARN: Type inference failed for: r6v5, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.AddrIconAdapter$AddrHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        int i2;
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        int measuredWidth = viewGroup.getMeasuredWidth();
        int d = d();
        if (d == 0) {
            i2 = -1;
        } else if (i == 1) {
            i2 = measuredWidth - ((d - 1) * MainApp.g1);
        } else {
            i2 = MainApp.g1;
        }
        if (i == 1) {
            View view = new View(context);
            view.setLayoutParams(new ViewGroup.LayoutParams(i2, -1));
            return new RecyclerView.ViewHolder(view);
        }
        MyIconView myIconView = new MyIconView(context);
        myIconView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        myIconView.v(false, true);
        myIconView.setLayoutParams(new ViewGroup.LayoutParams(i2, -1));
        ?? viewHolder = new RecyclerView.ViewHolder(myIconView);
        viewHolder.u = myIconView;
        return viewHolder;
    }

    public final MenuIconAdapter.MainMenuItem v(int i) {
        ArrayList arrayList = this.g;
        if (arrayList != null && i >= 0 && i < arrayList.size()) {
            return (MenuIconAdapter.MainMenuItem) this.g.get(i);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.mycompany.app.main.MenuIconAdapter$MainMenuItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.mycompany.app.main.MenuIconAdapter$MainMenuItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.mycompany.app.main.MenuIconAdapter$MainMenuItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1, types: [com.mycompany.app.main.MenuIconAdapter$MainMenuItem, java.lang.Object] */
    public final void w(boolean z, boolean z2) {
        int[] a2;
        ArrayList arrayList = new ArrayList();
        this.g = arrayList;
        ?? obj = new Object();
        obj.f17033a = 1234;
        arrayList.add(obj);
        if (z) {
            a2 = MainUtil.a2("0,1,2");
            this.h = null;
        } else {
            a2 = MainUtil.a2(PrefMain.H);
            this.h = new ArrayList();
        }
        if (a2 != null && a2.length != 0) {
            int length = a2.length;
            for (int i : a2) {
                ?? obj2 = new Object();
                obj2.f17033a = i;
                this.g.add(obj2);
            }
            if (!z) {
                for (int i2 = 0; i2 < 3; i2++) {
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            if (a2[i3] == i2) {
                                break;
                            } else {
                                i3++;
                            }
                        } else {
                            ?? obj3 = new Object();
                            obj3.f17033a = i2;
                            this.h.add(obj3);
                            break;
                        }
                    }
                }
            }
        } else if (!z) {
            for (int i4 = 0; i4 < 3; i4++) {
                ?? obj4 = new Object();
                obj4.f17033a = i4;
                this.h.add(obj4);
            }
        }
        if (z2) {
            g();
        }
    }
}
