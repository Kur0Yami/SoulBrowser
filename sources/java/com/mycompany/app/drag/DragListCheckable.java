package com.mycompany.app.drag;

import android.view.KeyEvent;
import android.widget.Checkable;

/* loaded from: classes3.dex */
public class DragListCheckable extends DragListItem implements Checkable {
    @Override // android.widget.Checkable
    public final boolean isChecked() {
        KeyEvent.Callback childAt = getChildAt(0);
        if (!(childAt instanceof Checkable)) {
            return false;
        }
        return ((Checkable) childAt).isChecked();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        KeyEvent.Callback childAt = getChildAt(0);
        if (childAt instanceof Checkable) {
            ((Checkable) childAt).setChecked(z);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        KeyEvent.Callback childAt = getChildAt(0);
        if (childAt instanceof Checkable) {
            ((Checkable) childAt).toggle();
        }
    }
}
