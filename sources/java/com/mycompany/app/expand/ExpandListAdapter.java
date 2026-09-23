package com.mycompany.app.expand;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.main.MainApp;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class ExpandListAdapter extends BaseExpandableListAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f15690a;
    public SparseArray b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15691c;

    /* loaded from: classes3.dex */
    public static class DummyView extends View {

        /* renamed from: c, reason: collision with root package name */
        public ArrayList f15696c;
        public Drawable f;
        public int g;
        public int h;

        @Override // android.view.View
        public final void dispatchDraw(Canvas canvas) {
            ArrayList arrayList = this.f15696c;
            canvas.save();
            Drawable drawable = this.f;
            if (drawable != null) {
                drawable.setBounds(0, 0, this.g, this.h);
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                View view = (View) arrayList.get(i);
                canvas.save();
                canvas.clipRect(0, 0, getWidth(), view.getMeasuredHeight());
                view.draw(canvas);
                canvas.restore();
                Drawable drawable2 = this.f;
                if (drawable2 != null) {
                    drawable2.draw(canvas);
                    canvas.translate(0.0f, this.h);
                }
                canvas.translate(0.0f, view.getMeasuredHeight());
            }
            canvas.restore();
        }

        @Override // android.view.View
        public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ArrayList arrayList = this.f15696c;
            int size = arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                View view = (View) arrayList.get(i5);
                view.layout(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class ExpandAnimation extends Animation {

        /* renamed from: c, reason: collision with root package name */
        public final View f15697c;
        public final int f;
        public int g;
        public int h;
        public int i;
        public final GroupInfo j;

        public ExpandAnimation(View view, int i, int i2, GroupInfo groupInfo) {
            this.f15697c = view;
            this.f = i;
            this.g = i2 - i;
            this.j = groupInfo;
            view.getLayoutParams().height = i;
            view.requestLayout();
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f, Transformation transformation) {
            View view;
            ExpandListAdapter expandListAdapter = ExpandListAdapter.this;
            if (expandListAdapter.f15690a && (view = this.f15697c) != null) {
                super.applyTransformation(f, transformation);
                GroupInfo groupInfo = this.j;
                int i = this.f;
                if (f < 1.0f) {
                    int round = Math.round(this.g * f) + i;
                    if (round != view.getLayoutParams().height) {
                        groupInfo.e = round;
                        int i2 = -i;
                        if (this.g != i2) {
                            if (view.getBottom() == this.i && view.getHeight() < this.h) {
                                this.g = i2;
                                expandListAdapter.f15691c = true;
                            }
                            this.h = view.getHeight();
                            this.i = view.getBottom();
                        }
                        view.getLayoutParams().height = round;
                        view.requestLayout();
                        return;
                    }
                    return;
                }
                int i3 = i + this.g;
                if (i3 == view.getLayoutParams().height) {
                    return;
                }
                groupInfo.e = i3;
                view.getLayoutParams().height = i3;
                view.requestLayout();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class GroupInfo {

        /* renamed from: a, reason: collision with root package name */
        public boolean f15698a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public int f15699c;
        public int d;
        public int e;
        public int f;
    }

    public static int a(int i) {
        if (MainApp.d1 == 0) {
            return HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES;
        }
        int round = Math.round(((Math.abs(i) / MainApp.d1) * 40.0f) + 200.0f);
        if (round > 400) {
            return HttpStatusCodes.STATUS_CODE_BAD_REQUEST;
        }
        return round;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.mycompany.app.expand.ExpandListAdapter$GroupInfo, java.lang.Object] */
    public final GroupInfo b(int i) {
        SparseArray sparseArray = this.b;
        GroupInfo groupInfo = (GroupInfo) sparseArray.get(i);
        if (groupInfo == null) {
            ?? obj = new Object();
            obj.f15698a = false;
            obj.b = false;
            obj.e = -1;
            sparseArray.put(i, obj);
            return obj;
        }
        return groupInfo;
    }

    public abstract View c(View view, int i, int i2);

    public abstract int d(int i);

    public final boolean e(int i) {
        return b(i).f15698a;
    }

    @Override // android.widget.BaseExpandableListAdapter, android.widget.HeterogeneousExpandableList
    public final int getChildType(int i, int i2) {
        if (b(i).f15698a) {
            return 0;
        }
        return 1;
    }

    @Override // android.widget.BaseExpandableListAdapter, android.widget.HeterogeneousExpandableList
    public final int getChildTypeCount() {
        return 2;
    }

    /* JADX WARN: Type inference failed for: r3v9, types: [android.view.View, com.mycompany.app.expand.ExpandListAdapter$DummyView] */
    @Override // android.widget.ExpandableListAdapter
    public final View getChildView(final int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        ViewGroup.LayoutParams layoutParams;
        int i3;
        ExpandListAdapter expandListAdapter = this;
        int i4 = i;
        View view2 = view;
        final GroupInfo b = b(i);
        if (!b.f15698a) {
            return expandListAdapter.c(view2, i4, i2);
        }
        boolean z2 = view2 instanceof DummyView;
        int i5 = -1;
        int i6 = 0;
        View view3 = view2;
        if (!z2) {
            ?? view4 = new View(viewGroup.getContext());
            view4.f15696c = new ArrayList();
            view4.setLayoutParams(new AbsListView.LayoutParams(-1, 0));
            view3 = view4;
        }
        View view5 = view3;
        if (i2 < b.f15699c) {
            view5.getLayoutParams().height = 0;
            return view5;
        }
        final ExpandableListView expandableListView = (ExpandableListView) viewGroup;
        final DummyView dummyView = (DummyView) view5;
        ArrayList arrayList = dummyView.f15696c;
        arrayList.clear();
        Drawable divider = expandableListView.getDivider();
        int measuredWidth = viewGroup.getMeasuredWidth();
        int dividerHeight = expandableListView.getDividerHeight();
        if (divider != null) {
            dummyView.f = divider;
            dummyView.g = measuredWidth;
            dummyView.h = dividerHeight;
            divider.setBounds(0, 0, measuredWidth, dividerHeight);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(viewGroup.getWidth(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int height = viewGroup.getHeight();
        int min = Math.min(b.d, d(i));
        int i7 = b.f15699c;
        int i8 = 0;
        ExpandListAdapter expandListAdapter2 = expandListAdapter;
        while (true) {
            if (i7 >= min) {
                break;
            }
            View c2 = expandListAdapter2.c(null, i4, i7);
            ViewGroup.LayoutParams layoutParams2 = c2.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams = new AbsListView.LayoutParams(i5, -2, 0);
                c2.setLayoutParams(layoutParams);
            } else {
                layoutParams = layoutParams2;
            }
            c2.layout(0, 0, dummyView.getWidth(), c2.getMeasuredHeight());
            arrayList.add(c2);
            int i9 = layoutParams.height;
            if (i9 > 0) {
                i3 = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
            } else {
                i3 = makeMeasureSpec2;
            }
            c2.measure(makeMeasureSpec, i3);
            i8 += c2.getMeasuredHeight();
            if (i8 >= height) {
                i8 += ((min - i7) - 1) * (i8 / (i7 + 1));
                break;
            }
            i7++;
            i5 = -1;
            expandListAdapter2 = this;
            i4 = i;
        }
        final int i10 = i8;
        Object tag = dummyView.getTag();
        if (tag != null) {
            i6 = ((Integer) tag).intValue();
        }
        boolean z3 = b.b;
        if (z3 && i6 != 1) {
            dummyView.setTag(1);
            dummyView.post(new Runnable() { // from class: com.mycompany.app.expand.ExpandListAdapter.1
                @Override // java.lang.Runnable
                public final void run() {
                    ExpandListAdapter expandListAdapter3 = ExpandListAdapter.this;
                    if (!expandListAdapter3.f15690a) {
                        return;
                    }
                    int i11 = i10;
                    GroupInfo groupInfo = b;
                    DummyView dummyView2 = dummyView;
                    ExpandAnimation expandAnimation = new ExpandAnimation(dummyView2, 0, i11, groupInfo);
                    expandAnimation.setDuration(ExpandListAdapter.a(i10));
                    expandAnimation.setInterpolator(new AccelerateInterpolator());
                    expandAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mycompany.app.expand.ExpandListAdapter.1.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public final void onAnimationEnd(Animation animation) {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            ExpandListAdapter expandListAdapter4 = ExpandListAdapter.this;
                            expandListAdapter4.b(i).f15698a = false;
                            expandListAdapter4.notifyDataSetChanged();
                            b.e = -1;
                            dummyView.setTag(0);
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public final void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public final void onAnimationStart(Animation animation) {
                        }
                    });
                    dummyView2.startAnimation(expandAnimation);
                }
            });
            return view5;
        }
        if (!z3 && i6 != 2) {
            if (b.e == -1) {
                b.e = i10;
            }
            ExpandAnimation expandAnimation = new ExpandAnimation(dummyView, b.e, b.f, b);
            expandAnimation.setDuration(a(b.f - b.e));
            expandAnimation.setInterpolator(new DecelerateInterpolator());
            expandAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mycompany.app.expand.ExpandListAdapter.2
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation) {
                    ExpandListAdapter expandListAdapter3 = ExpandListAdapter.this;
                    expandListAdapter3.f15691c = false;
                    int i11 = i;
                    expandListAdapter3.b(i11).f15698a = false;
                    expandableListView.collapseGroup(i11);
                    GroupInfo groupInfo = b;
                    if (groupInfo.f == 0) {
                        expandListAdapter3.notifyDataSetChanged();
                    }
                    groupInfo.f = 0;
                    groupInfo.e = -1;
                    dummyView.setTag(0);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationStart(Animation animation) {
                }
            });
            dummyView.setTag(2);
            dummyView.startAnimation(expandAnimation);
        }
        return view5;
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getChildrenCount(int i) {
        GroupInfo b = b(i);
        if (b.f15698a) {
            return b.f15699c + 1;
        }
        return d(i);
    }
}
