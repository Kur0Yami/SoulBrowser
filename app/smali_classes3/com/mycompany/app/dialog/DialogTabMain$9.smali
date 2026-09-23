.class Lcom/mycompany/app/dialog/DialogTabMain$9;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$9;->c:Lcom/mycompany/app/dialog/DialogTabMain;

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
    .locals 4

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    if-lez v0, :cond_2

    .line 12
    .line 13
    const/high16 v0, 0x42c80000    # 100.0f

    .line 14
    .line 15
    cmpl-float v0, p3, v0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, -0x1

    .line 19
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogTabMain$9;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-boolean v0, v3, Lcom/mycompany/app/dialog/DialogTabMain;->w0:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v0, v3, Lcom/mycompany/app/dialog/DialogTabMain;->x0:I

    .line 28
    .line 29
    if-eq v0, v2, :cond_2

    .line 30
    .line 31
    iget v0, v3, Lcom/mycompany/app/dialog/DialogTabMain;->A0:F

    .line 32
    .line 33
    sget v2, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 34
    .line 35
    int-to-float v2, v2

    .line 36
    cmpl-float v0, v0, v2

    .line 37
    .line 38
    if-lez v0, :cond_2

    .line 39
    .line 40
    iput-boolean v1, v3, Lcom/mycompany/app/dialog/DialogTabMain;->w0:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/high16 v0, -0x3d380000    # -100.0f

    .line 44
    .line 45
    cmpg-float v0, p3, v0

    .line 46
    .line 47
    if-gez v0, :cond_2

    .line 48
    .line 49
    iget-boolean v0, v3, Lcom/mycompany/app/dialog/DialogTabMain;->w0:Z

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget v0, v3, Lcom/mycompany/app/dialog/DialogTabMain;->x0:I

    .line 54
    .line 55
    if-eq v0, v2, :cond_2

    .line 56
    .line 57
    iget v0, v3, Lcom/mycompany/app/dialog/DialogTabMain;->A0:F

    .line 58
    .line 59
    sget v2, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 60
    .line 61
    neg-int v2, v2

    .line 62
    int-to-float v2, v2

    .line 63
    cmpg-float v0, v0, v2

    .line 64
    .line 65
    if-gez v0, :cond_2

    .line 66
    .line 67
    iput-boolean v1, v3, Lcom/mycompany/app/dialog/DialogTabMain;->w0:Z

    .line 68
    .line 69
    :goto_0
    iget-boolean v0, v3, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-object v0, v3, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget v1, v3, Lcom/mycompany/app/dialog/DialogTabMain;->x0:I

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->g(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget-object v0, v3, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    iget v1, v3, Lcom/mycompany/app/dialog/DialogTabMain;->x0:I

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->g(I)V

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    return p1
.end method
