.class Lcom/mycompany/app/quick/TabSubView$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$6;->c:Lcom/mycompany/app/quick/TabSubView;

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
    if-lez v0, :cond_1

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
    iget-object v3, p0, Lcom/mycompany/app/quick/TabSubView$6;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-boolean v0, v3, Lcom/mycompany/app/quick/TabSubView;->K:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget v0, v3, Lcom/mycompany/app/quick/TabSubView;->L:I

    .line 28
    .line 29
    if-eq v0, v2, :cond_1

    .line 30
    .line 31
    iget v0, v3, Lcom/mycompany/app/quick/TabSubView;->N:F

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
    if-lez v0, :cond_1

    .line 39
    .line 40
    iput-boolean v1, v3, Lcom/mycompany/app/quick/TabSubView;->K:Z

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
    if-gez v0, :cond_1

    .line 48
    .line 49
    iget-boolean v0, v3, Lcom/mycompany/app/quick/TabSubView;->K:Z

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget v0, v3, Lcom/mycompany/app/quick/TabSubView;->L:I

    .line 54
    .line 55
    if-eq v0, v2, :cond_1

    .line 56
    .line 57
    iget v0, v3, Lcom/mycompany/app/quick/TabSubView;->N:F

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
    if-gez v0, :cond_1

    .line 66
    .line 67
    iput-boolean v1, v3, Lcom/mycompany/app/quick/TabSubView;->K:Z

    .line 68
    .line 69
    :goto_0
    iget v0, v3, Lcom/mycompany/app/quick/TabSubView;->L:I

    .line 70
    .line 71
    invoke-static {v3, v0}, Lcom/mycompany/app/quick/TabSubView;->e(Lcom/mycompany/app/quick/TabSubView;I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1
.end method
