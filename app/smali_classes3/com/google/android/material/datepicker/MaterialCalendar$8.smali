.class Lcom/google/android/material/datepicker/MaterialCalendar$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$8;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$8;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->k:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->c:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 6
    .line 7
    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->f:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 8
    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->h(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_toggled_to_day_selection:I

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Lcom/google/android/material/datepicker/MaterialCalendar;->h(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_toggled_to_year_selection:I

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method
