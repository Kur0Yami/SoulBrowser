.class public final synthetic Lcom/google/android/material/timepicker/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/timepicker/c;->a:I

    iput-object p2, p0, Lcom/google/android/material/timepicker/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/timepicker/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lcom/google/android/material/timepicker/c;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v3, Lcom/google/android/material/timepicker/TimePickerView;

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    sget p1, Lcom/google/android/material/timepicker/TimePickerView;->F:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p2, v3, Lcom/google/android/material/timepicker/TimePickerView;->C:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    sget v0, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    move v1, v2

    .line 26
    :cond_1
    iget-object p1, p2, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->f:Lcom/google/android/material/timepicker/TimeModel;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/google/android/material/timepicker/TimeModel;->d(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void

    .line 32
    :pswitch_0
    check-cast v3, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 33
    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    sget p2, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    .line 38
    .line 39
    if-ne p1, p2, :cond_4

    .line 40
    .line 41
    move v1, v2

    .line 42
    :cond_4
    iget-object p1, v3, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->f:Lcom/google/android/material/timepicker/TimeModel;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/google/android/material/timepicker/TimeModel;->d(I)V

    .line 45
    .line 46
    .line 47
    :goto_1
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
