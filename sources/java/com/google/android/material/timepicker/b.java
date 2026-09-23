package com.google.android.material.timepicker;

/* loaded from: classes3.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12012c;
    public final /* synthetic */ Object f;

    public /* synthetic */ b(int i, Object obj) {
        this.f12012c = i;
        this.f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12012c) {
            case 0:
                Object obj = ((MaterialTimePicker) this.f).m;
                if (obj instanceof TimePickerTextInputPresenter) {
                    ((TimePickerTextInputPresenter) obj).d();
                    return;
                }
                return;
            default:
                ((RadialViewGroup) this.f).i();
                return;
        }
    }
}
