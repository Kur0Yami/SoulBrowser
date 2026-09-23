.class public final synthetic Lcom/google/android/material/datepicker/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/material/datepicker/DateFormatTextWatcher;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/DateFormatTextWatcher;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/a;->c:Lcom/google/android/material/datepicker/DateFormatTextWatcher;

    iput-wide p2, p0, Lcom/google/android/material/datepicker/a;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/datepicker/a;->f:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateStrings;->b(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/datepicker/a;->c:Lcom/google/android/material/datepicker/DateFormatTextWatcher;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    iget-object v3, v1, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->i:Ljava/lang/String;

    .line 12
    .line 13
    const/16 v4, 0x20

    .line 14
    .line 15
    const/16 v5, 0xa0

    .line 16
    .line 17
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v4, 0x1

    .line 22
    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v0, v4, v5

    .line 26
    .line 27
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->a()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
