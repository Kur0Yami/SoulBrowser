.class Lcom/mycompany/app/web/WebTabBarSubView$11;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebTabBarSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabBarSubView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$11;->c:Lcom/mycompany/app/web/WebTabBarSubView;

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
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

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
    cmpl-float v0, p4, v0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, -0x1

    .line 19
    iget-object v3, p0, Lcom/mycompany/app/web/WebTabBarSubView$11;->c:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-boolean v0, v3, Lcom/mycompany/app/web/WebTabBarSubView;->I:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget v0, v3, Lcom/mycompany/app/web/WebTabBarSubView;->J:I

    .line 28
    .line 29
    if-eq v0, v2, :cond_1

    .line 30
    .line 31
    iget v2, v3, Lcom/mycompany/app/web/WebTabBarSubView;->K:F

    .line 32
    .line 33
    sget v4, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 34
    .line 35
    int-to-float v4, v4

    .line 36
    cmpl-float v2, v2, v4

    .line 37
    .line 38
    if-lez v2, :cond_1

    .line 39
    .line 40
    iput-boolean v1, v3, Lcom/mycompany/app/web/WebTabBarSubView;->I:Z

    .line 41
    .line 42
    invoke-static {v3, v0}, Lcom/mycompany/app/web/WebTabBarSubView;->a(Lcom/mycompany/app/web/WebTabBarSubView;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/high16 v0, -0x3d380000    # -100.0f

    .line 47
    .line 48
    cmpg-float v0, p4, v0

    .line 49
    .line 50
    if-gez v0, :cond_1

    .line 51
    .line 52
    iget-boolean v0, v3, Lcom/mycompany/app/web/WebTabBarSubView;->I:Z

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget v0, v3, Lcom/mycompany/app/web/WebTabBarSubView;->J:I

    .line 57
    .line 58
    if-eq v0, v2, :cond_1

    .line 59
    .line 60
    iget v2, v3, Lcom/mycompany/app/web/WebTabBarSubView;->K:F

    .line 61
    .line 62
    sget v4, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 63
    .line 64
    neg-int v4, v4

    .line 65
    int-to-float v4, v4

    .line 66
    cmpg-float v2, v2, v4

    .line 67
    .line 68
    if-gez v2, :cond_1

    .line 69
    .line 70
    iput-boolean v1, v3, Lcom/mycompany/app/web/WebTabBarSubView;->I:Z

    .line 71
    .line 72
    invoke-static {v3, v0}, Lcom/mycompany/app/web/WebTabBarSubView;->a(Lcom/mycompany/app/web/WebTabBarSubView;I)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    return p1
.end method
