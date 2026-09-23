package com.google.android.material.datepicker;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.ArrayList;
import java.util.Calendar;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class MaterialCalendarGridView extends GridView {

    /* renamed from: c, reason: collision with root package name */
    public final Calendar f11767c;
    public final boolean f;

    /* renamed from: com.google.android.material.datepicker.MaterialCalendarGridView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f834a);
            accessibilityNodeInfoCompat.l(null);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f11767c = UtcDates.i(null);
        if (MaterialDatePicker.i(getContext(), R.attr.windowFullscreen)) {
            setNextFocusLeftId(com.google.android.material.R.id.cancel_button);
            setNextFocusRightId(com.google.android.material.R.id.confirm_button);
        }
        this.f = MaterialDatePicker.i(getContext(), com.google.android.material.R.attr.nestedScrollable);
        ViewCompat.z(this, new AccessibilityDelegateCompat());
    }

    public final MonthAdapter a() {
        return (MonthAdapter) super.getAdapter();
    }

    public final View b(int i) {
        return getChildAt(i - getFirstVisiblePosition());
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final ListAdapter getAdapter() {
        return (MonthAdapter) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((MonthAdapter) super.getAdapter()).notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        int a2;
        int width;
        int a3;
        int width2;
        int i;
        int i2;
        int i3;
        int i4;
        int left;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        MonthAdapter monthAdapter = (MonthAdapter) super.getAdapter();
        DateSelector dateSelector = monthAdapter.f;
        Month month = monthAdapter.f11774c;
        CalendarStyle calendarStyle = monthAdapter.h;
        int max = Math.max(monthAdapter.a(), materialCalendarGridView.getFirstVisiblePosition());
        int min = Math.min(monthAdapter.d(), materialCalendarGridView.getLastVisiblePosition());
        Long item = monthAdapter.getItem(max);
        Long item2 = monthAdapter.getItem(min);
        ArrayList v = dateSelector.v();
        int size = v.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = v.get(i5);
            i5++;
            Pair pair = (Pair) obj;
            Object obj2 = pair.f755a;
            Object obj3 = pair.b;
            if (obj2 != null) {
                if (obj3 != null) {
                    Long l = (Long) obj2;
                    long longValue = l.longValue();
                    Long l2 = (Long) obj3;
                    long longValue2 = l2.longValue();
                    if (item != null && item2 != null && l.longValue() <= item2.longValue() && l2.longValue() >= item.longValue()) {
                        if (materialCalendarGridView.getLayoutDirection() == 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        long longValue3 = item.longValue();
                        Calendar calendar = materialCalendarGridView.f11767c;
                        if (longValue < longValue3) {
                            if (max % month.h == 0) {
                                left = 0;
                            } else if (!z) {
                                left = materialCalendarGridView.b(max - 1).getRight();
                            } else {
                                left = materialCalendarGridView.b(max - 1).getLeft();
                            }
                            width = left;
                            a2 = max;
                        } else {
                            calendar.setTimeInMillis(longValue);
                            a2 = monthAdapter.a() + (calendar.get(5) - 1);
                            View b = materialCalendarGridView.b(a2);
                            width = (b.getWidth() / 2) + b.getLeft();
                        }
                        if (longValue2 > item2.longValue()) {
                            if ((min + 1) % month.h == 0) {
                                width2 = materialCalendarGridView.getWidth();
                            } else if (!z) {
                                width2 = materialCalendarGridView.b(min).getRight();
                            } else {
                                width2 = materialCalendarGridView.b(min).getLeft();
                            }
                            a3 = min;
                        } else {
                            calendar.setTimeInMillis(longValue2);
                            a3 = monthAdapter.a() + (calendar.get(5) - 1);
                            View b2 = materialCalendarGridView.b(a3);
                            width2 = (b2.getWidth() / 2) + b2.getLeft();
                        }
                        ArrayList arrayList = v;
                        Month month2 = month;
                        int itemId = (int) monthAdapter.getItemId(a2);
                        int itemId2 = (int) monthAdapter.getItemId(a3);
                        int i6 = itemId;
                        while (i6 <= itemId2) {
                            MonthAdapter monthAdapter2 = monthAdapter;
                            int numColumns = materialCalendarGridView.getNumColumns() * i6;
                            int i7 = itemId2;
                            int numColumns2 = (materialCalendarGridView.getNumColumns() + numColumns) - 1;
                            View b3 = materialCalendarGridView.b(numColumns);
                            int top = b3.getTop() + calendarStyle.f11751a.f11749a.top;
                            int i8 = i6;
                            int bottom = b3.getBottom() - calendarStyle.f11751a.f11749a.bottom;
                            if (!z) {
                                if (numColumns > a2) {
                                    i4 = 0;
                                } else {
                                    i4 = width;
                                }
                                if (a3 > numColumns2) {
                                    i3 = getWidth();
                                } else {
                                    i3 = width2;
                                }
                            } else {
                                if (a3 > numColumns2) {
                                    i = 0;
                                } else {
                                    i = width2;
                                }
                                if (numColumns > a2) {
                                    i2 = getWidth();
                                } else {
                                    i2 = width;
                                }
                                int i9 = i;
                                i3 = i2;
                                i4 = i9;
                            }
                            canvas.drawRect(i4, top, i3, bottom, calendarStyle.h);
                            i6 = i8 + 1;
                            materialCalendarGridView = this;
                            monthAdapter = monthAdapter2;
                            itemId2 = i7;
                        }
                        materialCalendarGridView = this;
                        month = month2;
                        i5 = i5;
                        v = arrayList;
                    } else {
                        materialCalendarGridView = this;
                        month = month;
                        i5 = i5;
                        v = v;
                        monthAdapter = monthAdapter;
                    }
                }
            } else {
                materialCalendarGridView = this;
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            if (i == 33) {
                setSelection(((MonthAdapter) super.getAdapter()).d());
                return;
            } else if (i == 130) {
                setSelection(((MonthAdapter) super.getAdapter()).a());
                return;
            } else {
                super.onFocusChanged(true, i, rect);
                return;
            }
        }
        super.onFocusChanged(false, i, rect);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition == -1 || (selectedItemPosition >= ((MonthAdapter) super.getAdapter()).a() && selectedItemPosition <= ((MonthAdapter) super.getAdapter()).d())) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(((MonthAdapter) super.getAdapter()).a());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.f) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, IntCompanionObject.MIN_VALUE));
            getLayoutParams().height = getMeasuredHeight();
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i) {
        if (i < ((MonthAdapter) super.getAdapter()).a()) {
            super.setSelection(((MonthAdapter) super.getAdapter()).a());
        } else {
            super.setSelection(i);
        }
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* renamed from: getAdapter, reason: avoid collision after fix types in other method */
    public final ListAdapter getAdapter2() {
        return (MonthAdapter) super.getAdapter();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof MonthAdapter) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), MonthAdapter.class.getCanonicalName()));
    }
}
