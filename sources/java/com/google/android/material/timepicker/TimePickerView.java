package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class TimePickerView extends ConstraintLayout implements TimePickerControls {
    public static final /* synthetic */ int F = 0;
    public final MaterialButtonToggleGroup A;
    public final View.OnClickListener B;
    public TimePickerClockPresenter C;
    public TimePickerClockPresenter D;
    public MaterialTimePicker E;
    public final Chip w;
    public final Chip x;
    public final ClockHandView y;
    public final ClockFaceView z;

    /* loaded from: classes3.dex */
    public interface OnDoubleTapListener {
    }

    /* loaded from: classes3.dex */
    public interface OnPeriodChangeListener {
    }

    /* loaded from: classes3.dex */
    public interface OnSelectionChange {
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.google.android.material.timepicker.TimePickerView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TimePickerClockPresenter timePickerClockPresenter = TimePickerView.this.D;
                if (timePickerClockPresenter != null) {
                    timePickerClockPresenter.d(((Integer) view.getTag(R.id.selection_type)).intValue(), true);
                }
            }
        };
        this.B = onClickListener;
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        this.z = (ClockFaceView) findViewById(R.id.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        this.A = materialButtonToggleGroup;
        materialButtonToggleGroup.p.add(new c(1, this));
        Chip chip = (Chip) findViewById(R.id.material_minute_tv);
        this.w = chip;
        Chip chip2 = (Chip) findViewById(R.id.material_hour_tv);
        this.x = chip2;
        this.y = (ClockHandView) findViewById(R.id.material_clock_hand);
        final GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.google.android.material.timepicker.TimePickerView.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTap(MotionEvent motionEvent) {
                MaterialTimePicker materialTimePicker = TimePickerView.this.E;
                if (materialTimePicker != null) {
                    materialTimePicker.x = 1;
                    materialTimePicker.g(materialTimePicker.v);
                    materialTimePicker.l.d();
                    return true;
                }
                return false;
            }
        });
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.google.android.material.timepicker.TimePickerView.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (((Checkable) view).isChecked()) {
                    return gestureDetector.onTouchEvent(motionEvent);
                }
                return false;
            }
        };
        chip.setOnTouchListener(onTouchListener);
        chip2.setOnTouchListener(onTouchListener);
        chip.setTag(R.id.selection_type, 12);
        chip2.setTag(R.id.selection_type, 10);
        chip.setOnClickListener(onClickListener);
        chip2.setOnClickListener(onClickListener);
        chip.setAccessibilityClassName("android.view.View");
        chip2.setAccessibilityClassName("android.view.View");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            this.x.sendAccessibilityEvent(8);
        }
    }
}
