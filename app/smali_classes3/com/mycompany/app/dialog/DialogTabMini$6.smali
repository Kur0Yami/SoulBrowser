.class Lcom/mycompany/app/dialog/DialogTabMini$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$6;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move v1, p3

    .line 6
    move v0, p4

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, p3

    .line 9
    move v1, p4

    .line 10
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    cmpl-float v1, v2, v1

    .line 19
    .line 20
    if-lez v1, :cond_3

    .line 21
    .line 22
    const/high16 v1, 0x42c80000    # 100.0f

    .line 23
    .line 24
    cmpl-float v1, v0, v1

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, -0x1

    .line 28
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogTabMini$6;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 29
    .line 30
    if-lez v1, :cond_1

    .line 31
    .line 32
    iget-boolean v0, v4, Lcom/mycompany/app/dialog/DialogTabMini;->S0:Z

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget v0, v4, Lcom/mycompany/app/dialog/DialogTabMini;->T0:I

    .line 37
    .line 38
    if-eq v0, v3, :cond_3

    .line 39
    .line 40
    iget v0, v4, Lcom/mycompany/app/dialog/DialogTabMini;->X0:F

    .line 41
    .line 42
    sget v1, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 43
    .line 44
    int-to-float v1, v1

    .line 45
    cmpl-float v0, v0, v1

    .line 46
    .line 47
    if-lez v0, :cond_3

    .line 48
    .line 49
    iput-boolean v2, v4, Lcom/mycompany/app/dialog/DialogTabMini;->S0:Z

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/high16 v1, -0x3d380000    # -100.0f

    .line 53
    .line 54
    cmpg-float v0, v0, v1

    .line 55
    .line 56
    if-gez v0, :cond_3

    .line 57
    .line 58
    iget-boolean v0, v4, Lcom/mycompany/app/dialog/DialogTabMini;->S0:Z

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget v0, v4, Lcom/mycompany/app/dialog/DialogTabMini;->T0:I

    .line 63
    .line 64
    if-eq v0, v3, :cond_3

    .line 65
    .line 66
    iget v0, v4, Lcom/mycompany/app/dialog/DialogTabMini;->X0:F

    .line 67
    .line 68
    sget v1, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 69
    .line 70
    neg-int v1, v1

    .line 71
    int-to-float v1, v1

    .line 72
    cmpg-float v0, v0, v1

    .line 73
    .line 74
    if-gez v0, :cond_3

    .line 75
    .line 76
    iput-boolean v2, v4, Lcom/mycompany/app/dialog/DialogTabMini;->S0:Z

    .line 77
    .line 78
    :goto_1
    iget-boolean v0, v4, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v0, v4, Lcom/mycompany/app/dialog/DialogTabMini;->x0:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iget v1, v4, Lcom/mycompany/app/dialog/DialogTabMini;->T0:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->g(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    iget-object v0, v4, Lcom/mycompany/app/dialog/DialogTabMini;->w0:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    iget v1, v4, Lcom/mycompany/app/dialog/DialogTabMini;->T0:I

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->g(I)V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    return p1
.end method
