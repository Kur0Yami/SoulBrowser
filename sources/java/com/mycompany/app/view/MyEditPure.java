package com.mycompany.app.view;

import android.content.Context;
import android.view.DragEvent;
import androidx.appcompat.widget.AppCompatEditText;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyEditPure extends AppCompatEditText {
    public MyEditPure(Context context) {
        super(context, null);
        MainUtil.c5(this);
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        try {
            return super.onDragEvent(dragEvent);
        } catch (Exception unused) {
            return false;
        }
    }
}
