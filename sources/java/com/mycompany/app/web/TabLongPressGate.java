package com.mycompany.app.web;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.recyclerview.widget.ItemTouchHelper;

/**
 * Splits tab long-press into menu vs drag: hold still and release opens the tab
 * menu; move past touch slop starts tab reorder instead.
 */
public final class TabLongPressGate implements View.OnTouchListener {
    private static final TabLongPressGate INSTANCE = new TabLongPressGate();

    private WebViewActivity activity;
    private WebTabBarAdapter.WebTabBarHolder holder;
    private View anchor;
    private int tabIndex;
    private int adapterPos;
    private boolean groupTab;
    private boolean armed;
    private boolean originSet;
    private float downRawX;
    private float downRawY;
    private int touchSlop;

    private TabLongPressGate() {
    }

    public static void cancel() {
        INSTANCE.clear(true);
    }

    public static void arm(
            WebViewActivity activity,
            WebTabBarAdapter.WebTabBarHolder holder,
            View view,
            int tabIndex,
            int adapterPos,
            boolean groupTab) {
        if (activity == null || holder == null || view == null) {
            return;
        }
        INSTANCE.clear(true);
        if (activity.Y5 != null) {
            activity.W4();
        }

        INSTANCE.activity = activity;
        INSTANCE.holder = holder;
        INSTANCE.anchor = view;
        INSTANCE.tabIndex = tabIndex;
        INSTANCE.adapterPos = adapterPos;
        INSTANCE.groupTab = groupTab;
        INSTANCE.armed = true;
        INSTANCE.originSet = false;
        INSTANCE.touchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();

        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        view.setOnTouchListener(INSTANCE);
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
                openMenu(v);
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
        WebViewActivity webViewActivity = activity;
        WebTabBarAdapter.WebTabBarHolder webTabBarHolder = holder;
        int pos = adapterPos;
        armed = false;
        clearListener(v);
        allowIntercept(v);
        activity = null;
        holder = null;
        anchor = null;
        if (webViewActivity == null || webTabBarHolder == null) {
            return;
        }
        ItemTouchHelper itemTouchHelper = webViewActivity.f3;
        if (itemTouchHelper == null) {
            return;
        }
        webViewActivity.h3 = pos;
        webViewActivity.i3 = pos;
        itemTouchHelper.t(webTabBarHolder);
    }

    private void openMenu(View v) {
        WebViewActivity webViewActivity = activity;
        View menuAnchor = anchor != null ? anchor : v;
        int index = tabIndex;
        boolean group = groupTab;
        armed = false;
        clearListener(v);
        allowIntercept(v);
        activity = null;
        holder = null;
        anchor = null;
        if (webViewActivity != null) {
            WebViewActivity.D1(webViewActivity, menuAnchor, -1, index, group);
        }
    }

    private void clear(boolean allowIntercept) {
        View view = anchor;
        armed = false;
        originSet = false;
        activity = null;
        holder = null;
        anchor = null;
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
