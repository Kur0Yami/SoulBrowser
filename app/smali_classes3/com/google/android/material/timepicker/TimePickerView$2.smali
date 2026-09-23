.class Lcom/google/android/material/timepicker/TimePickerView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView$2;->c:Lcom/google/android/material/timepicker/TimePickerView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView$2;->c:Lcom/google/android/material/timepicker/TimePickerView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/material/timepicker/TimePickerView;->E:Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p1, Lcom/google/android/material/timepicker/MaterialTimePicker;->x:I

    .line 9
    .line 10
    iget-object v1, p1, Lcom/google/android/material/timepicker/MaterialTimePicker;->v:Lcom/google/android/material/button/MaterialButton;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->g(Lcom/google/android/material/button/MaterialButton;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/material/timepicker/MaterialTimePicker;->l:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->d()V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method
