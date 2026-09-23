package com.mycompany.app.main;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyManagerGrid;

/* loaded from: classes3.dex */
public class MainHeadAdapter extends RecyclerView.Adapter<HeadHolder> {
    public int d;
    public MyManagerGrid e;
    public MainSelectAdapter.MainSelectListener f;

    /* loaded from: classes3.dex */
    public static class HeadHolder extends RecyclerView.ViewHolder {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        return MainConst.u.length;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        HeadHolder headHolder = (HeadHolder) viewHolder;
        View view = headHolder.f1589a;
        if (view == null || !(view instanceof MyButtonCheck)) {
            return;
        }
        view.setTag(headHolder);
        view.setBackgroundColor(MainConst.u[i]);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainHeadAdapter.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HeadHolder headHolder2;
                int i2;
                View s;
                HeadHolder headHolder3;
                View view3;
                boolean z2;
                Object tag;
                MainHeadAdapter mainHeadAdapter = MainHeadAdapter.this;
                if (mainHeadAdapter.f == null) {
                    return;
                }
                if (view2 == null || (tag = view2.getTag()) == null || !(tag instanceof HeadHolder)) {
                    headHolder2 = null;
                } else {
                    headHolder2 = (HeadHolder) tag;
                }
                if (headHolder2 != null && headHolder2.f1589a != null) {
                    i2 = headHolder2.c();
                } else {
                    i2 = -1;
                }
                MyManagerGrid myManagerGrid = mainHeadAdapter.e;
                if (myManagerGrid != null && mainHeadAdapter.d != i2) {
                    mainHeadAdapter.d = i2;
                    int V0 = myManagerGrid.V0() + 1;
                    for (int U0 = myManagerGrid.U0(); U0 < V0; U0++) {
                        MyManagerGrid myManagerGrid2 = mainHeadAdapter.e;
                        if (myManagerGrid2 != null && (s = myManagerGrid2.s(U0)) != null) {
                            Object tag2 = s.getTag();
                            if (tag2 == null || !(tag2 instanceof HeadHolder)) {
                                headHolder3 = null;
                            } else {
                                headHolder3 = (HeadHolder) tag2;
                            }
                            if (headHolder3 != null && (view3 = headHolder3.f1589a) != null && (view3 instanceof MyButtonCheck)) {
                                MyButtonCheck myButtonCheck = (MyButtonCheck) view3;
                                if (mainHeadAdapter.d == headHolder3.c()) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                myButtonCheck.q(z2, true);
                            }
                        }
                    }
                }
                mainHeadAdapter.f.a(i2);
            }
        });
        MyButtonCheck myButtonCheck = (MyButtonCheck) view;
        if (this.d == headHolder.c()) {
            z = true;
        } else {
            z = false;
        }
        myButtonCheck.q(z, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        MyButtonCheck myButtonCheck = new MyButtonCheck(context);
        myButtonCheck.p(R.drawable.outline_check_white_24, 0);
        myButtonCheck.setLayoutParams(new ViewGroup.LayoutParams(-1, MainApp.g1));
        myButtonCheck.setBgPreColor(1107296255);
        return new RecyclerView.ViewHolder(myButtonCheck);
    }
}
