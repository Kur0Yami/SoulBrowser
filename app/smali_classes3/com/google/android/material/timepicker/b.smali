.class public final synthetic Lcom/google/android/material/timepicker/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/timepicker/b;->c:I

    iput-object p2, p0, Lcom/google/android/material/timepicker/b;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/timepicker/b;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/timepicker/RadialViewGroup;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/RadialViewGroup;->i()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/b;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/google/android/material/timepicker/MaterialTimePicker;->m:Ljava/lang/Object;

    .line 19
    .line 20
    instance-of v1, v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->d()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
