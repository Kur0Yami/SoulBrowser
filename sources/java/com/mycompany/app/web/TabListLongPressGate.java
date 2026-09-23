package com.mycompany.app.web;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.mycompany.app.dialog.DialogTabMain;
import com.mycompany.app.dialog.DialogTabMini;
import com.mycompany.app.quick.TabSubView;

/**
 * Splits tab-list long-press into multi-select vs drag: hold still and release
 * enters checkbox selection; move past touch slop starts reorder instead.
 */
public final class TabListLongPressGate implements View.OnTouchListener {
    private static final TabListLongPressGate INSTANCE = new TabListLongPressGate();

    private View anchor;
    private WebTabAdapter.WebTabHolder holder;
    private ItemTouchHelper touchHelper;
    private int index;
    private boolean album;
    private DialogTabMain dialogMain;
    private DialogTabMini dialogMini;
    private TabSubView tabSub;
    private boolean armed;
    private boolean originSet;
    private float downRawX;
    private float downRawY;
    private int touchSlop;

    private TabListLongPressGate() {
    }

    public static void cancel() {
        INSTANCE.clear(true);
    }

    public static void armMain(
            DialogTabMain dialog,
            View view,
            WebTabAdapter.WebTabHolder holder,
            ItemTouchHelper helper,
            int index,
            boolean album) {
        arm(view, holder, helper, index, album, dialog, null, null);
    }

    public static void armMini(
            DialogTabMini dialog,
            View view,
            WebTabAdapter.WebTabHolder holder,
            ItemTouchHelper helper,
            int index,
            boolean album) {
        arm(view, holder, helper, index, album, null, dialog, null);
    }

    public static void armSub(
            TabSubView tabSub,
            View view,
            WebTabAdapter.WebTabHolder holder,
            ItemTouchHelper helper,
            int index) {
        arm(view, holder, helper, index, false, null, null, tabSub);
    }

    private static void arm(
            View view,
            WebTabAdapter.WebTabHolder holder,
            ItemTouchHelper helper,
            int index,
            boolean album,
            DialogTabMain dialogMain,
            DialogTabMini dialogMini,
            TabSubView tabSub) {
        if (view == null || holder == null) {
            return;
        }
        if (dialogMain == null && dialogMini == null && tabSub == null) {
            return;
        }
        INSTANCE.clear(true);

        INSTANCE.anchor = view;
        INSTANCE.holder = holder;
        INSTANCE.touchHelper = helper;
        INSTANCE.index = index;
        INSTANCE.album = album;
        INSTANCE.dialogMain = dialogMain;
        INSTANCE.dialogMini = dialogMini;
        INSTANCE.tabSub = tabSub;
        INSTANCE.armed = true;
        INSTANCE.originSet = false;
        INSTANCE.touchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();

        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        view.setOnTouchListener(INSTANCE);
    }

    /** Prefer the view that owns the long-press (thumb in grid, row in list). */
    public static View anchorFor(WebTabAdapter.WebTabHolder holder) {
        if (holder == null) {
            return null;
        }
        if (holder.v == 0 && holder.z != null) {
            return holder.z;
        }
        return holder.a;
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        if (!armed || v != anchor) {
            return false;
        }
        int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_MOVE) {
            float x = event.getRawX();
            float y = event.getRawY();
            if (!originSet) {
                downRawX = x;
                downRawY = y;
                originSet = true;
                return true;
            }
            float dx = x - downRawX;
            float dy = y - downRawY;
            if ((dx * dx) + (dy * dy) > (float) (touchSlop * touchSlop)) {
                startDrag(v);
            }
            return true;
        }
        if (action == MotionEvent.ACTION_UP) {
            if (armed) {
                enterSelection(v);
            } else {
                clear(false);
            }
            return true;
        }
        if (action == MotionEvent.ACTION_CANCEL) {
            clear(true);
            return true;
        }
        return true;
    }

    private void startDrag(View v) {
        ItemTouchHelper helper = touchHelper;
        WebTabAdapter.WebTabHolder webTabHolder = holder;
        armed = false;
        clearListener(v);
        allowIntercept(v);
        clearRefs();
        if (helper != null && webTabHolder != null) {
            helper.t(webTabHolder);
        }
    }

    private void enterSelection(View v) {
        DialogTabMain main = dialogMain;
        DialogTabMini mini = dialogMini;
        TabSubView sub = tabSub;
        int i = index;
        boolean isAlbum = album;
        armed = false;
        clearListener(v);
        allowIntercept(v);
        clearRefs();
        if (main != null) {
            main.N(i, true, isAlbum);
        } else if (mini != null) {
            mini.a0(i, true, isAlbum);
        } else if (sub != null) {
            sub.m(i, true);
        }
    }

    private void clearRefs() {
        anchor = null;
        holder = null;
        touchHelper = null;
        dialogMain = null;
        dialogMini = null;
        tabSub = null;
    }

    private void clear(boolean allowIntercept) {
        View view = anchor;
        armed = false;
        originSet = false;
        clearRefs();
        if (view != null) {
            clearListener(view);
            if (allowIntercept) {
                allowIntercept(view);
            }
        }
    }

    private static void clearListener(View view) {
        if (view != null) {
            view.setOnTouchListener(null);
        }
    }

    private static void allowIntercept(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
    }
}
