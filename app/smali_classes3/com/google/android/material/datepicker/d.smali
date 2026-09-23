.class public final synthetic Lcom/google/android/material/datepicker/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/datepicker/d;->c:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/d;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/d;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/datepicker/d;->f:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    .line 9
    .line 10
    sget p1, Landroidx/mediarouter/app/MediaRouteChooserDialog;->B:I

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast v1, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 17
    .line 18
    iget-object p1, v1, Lcom/google/android/material/datepicker/MaterialDatePicker;->E:Landroid/widget/Button;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->g()Lcom/google/android/material/datepicker/DateSelector;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->h0()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, v1, Lcom/google/android/material/datepicker/MaterialDatePicker;->C:Lcom/google/android/material/internal/CheckableImageButton;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 34
    .line 35
    .line 36
    iget p1, v1, Lcom/google/android/material/datepicker/MaterialDatePicker;->r:I

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    if-ne p1, v0, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    :cond_0
    iput v0, v1, Lcom/google/android/material/datepicker/MaterialDatePicker;->r:I

    .line 43
    .line 44
    iget-object p1, v1, Lcom/google/android/material/datepicker/MaterialDatePicker;->C:Lcom/google/android/material/internal/CheckableImageButton;

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->k(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->j()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_1
    check-cast v1, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 54
    .line 55
    iget-object v0, v1, Lcom/google/android/material/datepicker/MaterialDatePicker;->f:Ljava/util/LinkedHashSet;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/view/View$OnClickListener;

    .line 72
    .line 73
    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_2
    check-cast v1, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 82
    .line 83
    iget-object p1, v1, Lcom/google/android/material/datepicker/MaterialDatePicker;->c:Ljava/util/LinkedHashSet;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->g()Lcom/google/android/material/datepicker/DateSelector;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-interface {v0}, Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;->a()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
