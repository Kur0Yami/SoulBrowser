package com.mycompany.app.expand;

import android.view.View;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import com.mycompany.app.expand.ExpandListAdapter;

/* loaded from: classes3.dex */
public class ExpandListView extends ExpandableListView {

    /* renamed from: c, reason: collision with root package name */
    public ExpandListAdapter f15700c;

    public final void a(int i, int i2) {
        if (this.f15700c == null) {
            return;
        }
        int flatListPosition = getFlatListPosition(ExpandableListView.getPackedPositionForGroup(i));
        long expandableListPosition = getExpandableListPosition(getFirstVisiblePosition());
        int packedPositionChild = ExpandableListView.getPackedPositionChild(expandableListPosition);
        int packedPositionGroup = ExpandableListView.getPackedPositionGroup(expandableListPosition);
        if (packedPositionChild == -1 || packedPositionGroup != i) {
            packedPositionChild = 0;
        }
        ExpandListAdapter expandListAdapter = this.f15700c;
        int lastVisiblePosition = getLastVisiblePosition() - flatListPosition;
        ExpandListAdapter.GroupInfo b = expandListAdapter.b(i);
        b.f15698a = true;
        b.b = false;
        b.f15699c = packedPositionChild;
        b.d = lastVisiblePosition;
        b.f = i2;
        this.f15700c.notifyDataSetChanged();
        isGroupExpanded(i);
    }

    public final void b(int i) {
        int firstVisiblePosition;
        View childAt;
        if (this.f15700c == null) {
            return;
        }
        int flatListPosition = getFlatListPosition(ExpandableListView.getPackedPositionForGroup(i));
        if (flatListPosition != -1 && (firstVisiblePosition = flatListPosition - getFirstVisiblePosition()) < getChildCount() && (childAt = getChildAt(firstVisiblePosition)) != null && childAt.getBottom() >= getBottom()) {
            this.f15700c.b(i).e = -1;
            expandGroup(i);
            return;
        }
        ExpandListAdapter expandListAdapter = this.f15700c;
        int lastVisiblePosition = getLastVisiblePosition() - flatListPosition;
        ExpandListAdapter.GroupInfo b = expandListAdapter.b(i);
        b.f15698a = true;
        b.b = true;
        b.f15699c = 0;
        b.d = lastVisiblePosition;
        expandGroup(i);
    }

    @Override // android.widget.ExpandableListView
    public void setAdapter(ExpandableListAdapter expandableListAdapter) {
        super.setAdapter(expandableListAdapter);
        if (expandableListAdapter instanceof ExpandListAdapter) {
            this.f15700c = (ExpandListAdapter) expandableListAdapter;
            return;
        }
        throw new ClassCastException(expandableListAdapter.toString() + " must implement AnimatedExpandableListAdapter");
    }
}
