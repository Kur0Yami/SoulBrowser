package com.google.android.material.datepicker;

import android.R;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.Calendar;

@RestrictTo
/* loaded from: classes3.dex */
public final class MaterialCalendar<S> extends PickerFragment<S> {
    public int f;
    public DateSelector g;
    public CalendarConstraints h;
    public DayViewDecorator i;
    public Month j;
    public CalendarSelector k;
    public CalendarStyle l;
    public RecyclerView m;
    public RecyclerView n;
    public View o;
    public View p;
    public View q;
    public View r;
    public MaterialButton s;
    public AccessibilityManager t;

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f834a);
            accessibilityNodeInfoCompat.l(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements OnDayClickListener {
        public AnonymousClass3() {
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f834a);
            accessibilityNodeInfoCompat.t(false);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class CalendarSelector {

        /* renamed from: c, reason: collision with root package name */
        public static final CalendarSelector f11766c;
        public static final CalendarSelector f;
        public static final /* synthetic */ CalendarSelector[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.material.datepicker.MaterialCalendar$CalendarSelector] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.material.datepicker.MaterialCalendar$CalendarSelector] */
        static {
            ?? r0 = new Enum("DAY", 0);
            f11766c = r0;
            ?? r1 = new Enum("YEAR", 1);
            f = r1;
            g = new CalendarSelector[]{r0, r1};
        }

        public static CalendarSelector valueOf(String str) {
            return (CalendarSelector) Enum.valueOf(CalendarSelector.class, str);
        }

        public static CalendarSelector[] values() {
            return (CalendarSelector[]) g.clone();
        }
    }

    /* loaded from: classes3.dex */
    public interface OnDayClickListener {
    }

    @Override // com.google.android.material.datepicker.PickerFragment
    public final void f(OnSelectionChangedListener onSelectionChangedListener) {
        this.f11776c.add(onSelectionChangedListener);
    }

    public final void g(Month month) {
        boolean z;
        MonthsPagerAdapter monthsPagerAdapter = (MonthsPagerAdapter) this.n.getAdapter();
        final int d = monthsPagerAdapter.d.f11746c.d(month);
        AccessibilityManager accessibilityManager = this.t;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            this.j = month;
            this.n.i0(d);
        } else {
            int d2 = d - monthsPagerAdapter.d.f11746c.d(this.j);
            boolean z2 = false;
            if (Math.abs(d2) > 3) {
                z = true;
            } else {
                z = false;
            }
            if (d2 > 0) {
                z2 = true;
            }
            this.j = month;
            if (z && z2) {
                this.n.i0(d - 3);
                this.n.post(new Runnable() { // from class: com.google.android.material.datepicker.MaterialCalendar.11
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaterialCalendar.this.n.l0(d);
                    }
                });
            } else if (z) {
                this.n.i0(d + 3);
                this.n.post(new Runnable() { // from class: com.google.android.material.datepicker.MaterialCalendar.11
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaterialCalendar.this.n.l0(d);
                    }
                });
            } else {
                this.n.post(new Runnable() { // from class: com.google.android.material.datepicker.MaterialCalendar.11
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaterialCalendar.this.n.l0(d);
                    }
                });
            }
        }
        i(d);
    }

    public final void h(CalendarSelector calendarSelector) {
        this.k = calendarSelector;
        if (calendarSelector == CalendarSelector.f) {
            this.m.getLayoutManager().x0(this.j.g - ((YearGridAdapter) this.m.getAdapter()).d.h.f11746c.g);
            this.q.setVisibility(0);
            this.r.setVisibility(8);
            this.o.setVisibility(8);
            this.p.setVisibility(8);
            return;
        }
        if (calendarSelector == CalendarSelector.f11766c) {
            this.q.setVisibility(8);
            this.r.setVisibility(0);
            this.o.setVisibility(0);
            this.p.setVisibility(0);
            g(this.j);
        }
    }

    public final void i(int i) {
        boolean z;
        View view = this.p;
        boolean z2 = false;
        if (i + 1 < this.n.getAdapter().d()) {
            z = true;
        } else {
            z = false;
        }
        view.setEnabled(z);
        View view2 = this.o;
        if (i - 1 >= 0) {
            z2 = true;
        }
        view2.setEnabled(z2);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f = bundle.getInt("THEME_RES_ID_KEY");
        this.g = (DateSelector) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.h = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.i = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.j = (Month) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        final int i2;
        DaysOfWeekAdapter daysOfWeekAdapter;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f);
        this.l = new CalendarStyle(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        this.t = (AccessibilityManager) requireContext().getSystemService("accessibility");
        Month month = this.h.f11746c;
        if (MaterialDatePicker.i(contextThemeWrapper, R.attr.windowFullscreen)) {
            i = com.google.android.material.R.layout.mtrl_calendar_vertical;
            i2 = 1;
        } else {
            i = com.google.android.material.R.layout.mtrl_calendar_horizontal;
            i2 = 0;
        }
        View inflate = cloneInContext.inflate(i, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(com.google.android.material.R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(com.google.android.material.R.dimen.mtrl_calendar_days_of_week_height);
        int i3 = MonthAdapter.k;
        inflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_month_vertical_padding) * (i3 - 1)) + (resources.getDimensionPixelSize(com.google.android.material.R.dimen.mtrl_calendar_day_height) * i3) + resources.getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) inflate.findViewById(com.google.android.material.R.id.mtrl_calendar_days_of_week);
        ViewCompat.z(gridView, new AccessibilityDelegateCompat());
        int i4 = this.h.i;
        if (i4 > 0) {
            daysOfWeekAdapter = new DaysOfWeekAdapter(i4);
        } else {
            daysOfWeekAdapter = new DaysOfWeekAdapter();
        }
        gridView.setAdapter((ListAdapter) daysOfWeekAdapter);
        gridView.setNumColumns(month.h);
        gridView.setEnabled(false);
        this.n = (RecyclerView) inflate.findViewById(com.google.android.material.R.id.mtrl_calendar_months);
        getContext();
        this.n.setLayoutManager(new SmoothCalendarLayoutManager(i2) { // from class: com.google.android.material.datepicker.MaterialCalendar.2
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public final void K0(RecyclerView.State state, int[] iArr) {
                int i5 = i2;
                MaterialCalendar materialCalendar = MaterialCalendar.this;
                if (i5 == 0) {
                    iArr[0] = materialCalendar.n.getWidth();
                    iArr[1] = materialCalendar.n.getWidth();
                } else {
                    iArr[0] = materialCalendar.n.getHeight();
                    iArr[1] = materialCalendar.n.getHeight();
                }
            }
        });
        this.n.setTag("MONTHS_VIEW_GROUP_TAG");
        final MonthsPagerAdapter monthsPagerAdapter = new MonthsPagerAdapter(contextThemeWrapper, this.g, this.h, this.i, new AnonymousClass3());
        this.n.setAdapter(monthsPagerAdapter);
        int integer = contextThemeWrapper.getResources().getInteger(com.google.android.material.R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(com.google.android.material.R.id.mtrl_calendar_year_selector_frame);
        this.m = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.m.setLayoutManager(new GridLayoutManager(integer, 0));
            this.m.setAdapter(new YearGridAdapter(this));
            this.m.i(new RecyclerView.ItemDecoration() { // from class: com.google.android.material.datepicker.MaterialCalendar.5

                /* renamed from: a, reason: collision with root package name */
                public final Calendar f11761a = UtcDates.i(null);
                public final Calendar b = UtcDates.i(null);

                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public final void g(Canvas canvas, RecyclerView recyclerView2) {
                    int i5;
                    int width;
                    AnonymousClass5 anonymousClass5 = this;
                    if ((recyclerView2.getAdapter() instanceof YearGridAdapter) && (recyclerView2.getLayoutManager() instanceof GridLayoutManager)) {
                        YearGridAdapter yearGridAdapter = (YearGridAdapter) recyclerView2.getAdapter();
                        GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView2.getLayoutManager();
                        MaterialCalendar materialCalendar = MaterialCalendar.this;
                        ArrayList v = materialCalendar.g.v();
                        int size = v.size();
                        int i6 = 0;
                        while (i6 < size) {
                            Object obj = v.get(i6);
                            i6++;
                            Pair pair = (Pair) obj;
                            Object obj2 = pair.f755a;
                            Object obj3 = pair.b;
                            if (obj2 != null) {
                                if (obj3 != null) {
                                    long longValue = ((Long) obj2).longValue();
                                    Calendar calendar = anonymousClass5.f11761a;
                                    calendar.setTimeInMillis(longValue);
                                    long longValue2 = ((Long) obj3).longValue();
                                    Calendar calendar2 = anonymousClass5.b;
                                    calendar2.setTimeInMillis(longValue2);
                                    int i7 = calendar.get(1) - yearGridAdapter.d.h.f11746c.g;
                                    int i8 = calendar2.get(1) - yearGridAdapter.d.h.f11746c.g;
                                    View s = gridLayoutManager.s(i7);
                                    View s2 = gridLayoutManager.s(i8);
                                    int i9 = gridLayoutManager.F;
                                    int i10 = i7 / i9;
                                    int i11 = i8 / i9;
                                    for (int i12 = i10; i12 <= i11; i12++) {
                                        View s3 = gridLayoutManager.s(gridLayoutManager.F * i12);
                                        if (s3 != null) {
                                            int top = s3.getTop() + materialCalendar.l.d.f11749a.top;
                                            int bottom = s3.getBottom() - materialCalendar.l.d.f11749a.bottom;
                                            if (i12 == i10 && s != null) {
                                                i5 = (s.getWidth() / 2) + s.getLeft();
                                            } else {
                                                i5 = 0;
                                            }
                                            if (i12 == i11 && s2 != null) {
                                                width = (s2.getWidth() / 2) + s2.getLeft();
                                            } else {
                                                width = recyclerView2.getWidth();
                                            }
                                            canvas.drawRect(i5, top, width, bottom, materialCalendar.l.h);
                                        }
                                    }
                                }
                            }
                            anonymousClass5 = this;
                        }
                    }
                }
            });
        }
        View findViewById = inflate.findViewById(com.google.android.material.R.id.month_navigation_fragment_toggle);
        CalendarConstraints calendarConstraints = monthsPagerAdapter.d;
        if (findViewById != null) {
            MaterialButton materialButton = (MaterialButton) inflate.findViewById(com.google.android.material.R.id.month_navigation_fragment_toggle);
            this.s = materialButton;
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            ViewCompat.z(this.s, new AccessibilityDelegateCompat() { // from class: com.google.android.material.datepicker.MaterialCalendar.6
                @Override // androidx.core.view.AccessibilityDelegateCompat
                public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    String string;
                    this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f834a);
                    MaterialCalendar materialCalendar = MaterialCalendar.this;
                    if (materialCalendar.r.getVisibility() == 0) {
                        string = materialCalendar.getString(com.google.android.material.R.string.mtrl_picker_toggle_to_year_selection);
                    } else {
                        string = materialCalendar.getString(com.google.android.material.R.string.mtrl_picker_toggle_to_day_selection);
                    }
                    accessibilityNodeInfoCompat.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, string));
                }
            });
            View findViewById2 = inflate.findViewById(com.google.android.material.R.id.month_navigation_previous);
            this.o = findViewById2;
            findViewById2.setTag("NAVIGATION_PREV_TAG");
            View findViewById3 = inflate.findViewById(com.google.android.material.R.id.month_navigation_next);
            this.p = findViewById3;
            findViewById3.setTag("NAVIGATION_NEXT_TAG");
            this.q = inflate.findViewById(com.google.android.material.R.id.mtrl_calendar_year_selector_frame);
            this.r = inflate.findViewById(com.google.android.material.R.id.mtrl_calendar_day_selector_frame);
            h(CalendarSelector.f11766c);
            this.s.setText(this.j.c());
            this.n.j(new RecyclerView.OnScrollListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.7
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public final void b(RecyclerView recyclerView2, int i5, int i6) {
                    int V0;
                    CalendarConstraints calendarConstraints2 = monthsPagerAdapter.d;
                    MaterialCalendar materialCalendar = MaterialCalendar.this;
                    if (i5 < 0) {
                        V0 = ((LinearLayoutManager) materialCalendar.n.getLayoutManager()).U0();
                    } else {
                        V0 = ((LinearLayoutManager) materialCalendar.n.getLayoutManager()).V0();
                    }
                    Calendar d = UtcDates.d(calendarConstraints2.f11746c.f11773c);
                    d.add(2, V0);
                    Month month2 = new Month(d);
                    materialCalendar.j = month2;
                    MaterialButton materialButton2 = materialCalendar.s;
                    Calendar d2 = UtcDates.d(calendarConstraints2.f11746c.f11773c);
                    d2.add(2, V0);
                    materialButton2.setText(new Month(d2).c());
                    materialCalendar.i(calendarConstraints2.f11746c.d(month2));
                }
            });
            this.s.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MaterialCalendar materialCalendar = MaterialCalendar.this;
                    CalendarSelector calendarSelector = materialCalendar.k;
                    CalendarSelector calendarSelector2 = CalendarSelector.f11766c;
                    CalendarSelector calendarSelector3 = CalendarSelector.f;
                    if (calendarSelector == calendarSelector3) {
                        materialCalendar.h(calendarSelector2);
                        materialCalendar.n.announceForAccessibility(materialCalendar.getString(com.google.android.material.R.string.mtrl_picker_toggled_to_day_selection));
                    } else if (calendarSelector == calendarSelector2) {
                        materialCalendar.h(calendarSelector3);
                        materialCalendar.m.announceForAccessibility(materialCalendar.getString(com.google.android.material.R.string.mtrl_picker_toggled_to_year_selection));
                    }
                }
            });
            this.p.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MaterialCalendar materialCalendar = MaterialCalendar.this;
                    int U0 = ((LinearLayoutManager) materialCalendar.n.getLayoutManager()).U0() + 1;
                    Calendar d = UtcDates.d(monthsPagerAdapter.d.f11746c.f11773c);
                    d.add(2, U0);
                    materialCalendar.g(new Month(d));
                }
            });
            this.o.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MaterialCalendar materialCalendar = MaterialCalendar.this;
                    int V0 = ((LinearLayoutManager) materialCalendar.n.getLayoutManager()).V0() - 1;
                    Calendar d = UtcDates.d(monthsPagerAdapter.d.f11746c.f11773c);
                    d.add(2, V0);
                    materialCalendar.g(new Month(d));
                }
            });
            i(calendarConstraints.f11746c.d(this.j));
        }
        if (!MaterialDatePicker.i(contextThemeWrapper, R.attr.windowFullscreen)) {
            new SnapHelper().b(this.n);
        }
        this.n.i0(calendarConstraints.f11746c.d(this.j));
        ViewCompat.z(this.n, new AccessibilityDelegateCompat());
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.f);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.g);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.h);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.i);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.j);
    }
}
