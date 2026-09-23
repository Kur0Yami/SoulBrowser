.class Lcom/google/android/material/datepicker/RangeDateSelector$2;
.super Lcom/google/android/material/datepicker/DateFormatTextWatcher;
.source "SourceFile"


# instance fields
.field public final synthetic m:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic n:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic o:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

.field public final synthetic p:Lcom/google/android/material/datepicker/RangeDateSelector;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->p:Lcom/google/android/material/datepicker/RangeDateSelector;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->m:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    iput-object p7, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    .line 7
    iput-object p8, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->o:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    .line 8
    .line 9
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;-><init>(Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->p:Lcom/google/android/material/datepicker/RangeDateSelector;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/google/android/material/datepicker/RangeDateSelector;->i:Ljava/lang/Long;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->o:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->m:Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    .line 12
    invoke-static {v1, v3, v0, v2}, Lcom/google/android/material/datepicker/RangeDateSelector;->a(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(Ljava/lang/Long;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->p:Lcom/google/android/material/datepicker/RangeDateSelector;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/material/datepicker/RangeDateSelector;->i:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->o:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->m:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    invoke-static {v0, v2, p1, v1}, Lcom/google/android/material/datepicker/RangeDateSelector;->a(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
