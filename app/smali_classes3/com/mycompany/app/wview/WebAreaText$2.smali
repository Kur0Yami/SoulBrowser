.class Lcom/mycompany/app/wview/WebAreaText$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebAreaText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebAreaText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaText$2;->c:Lcom/mycompany/app/wview/WebAreaText;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaText$2;->c:Lcom/mycompany/app/wview/WebAreaText;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/wview/WebAreaText;->D:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    cmpl-float v1, v1, v2

    .line 21
    .line 22
    if-lez v1, :cond_2

    .line 23
    .line 24
    iget v1, v0, Lcom/mycompany/app/wview/WebAreaText;->D:I

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_1
    move v1, p3

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget v1, v0, Lcom/mycompany/app/wview/WebAreaText;->D:I

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    if-eq v1, v2, :cond_3

    .line 40
    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_3
    move v1, p4

    .line 47
    :goto_0
    const/high16 v2, 0x42c80000    # 100.0f

    .line 48
    .line 49
    cmpl-float v2, v1, v2

    .line 50
    .line 51
    if-lez v2, :cond_4

    .line 52
    .line 53
    iget v1, v0, Lcom/mycompany/app/wview/WebAreaText;->E:F

    .line 54
    .line 55
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 56
    .line 57
    int-to-float v2, v2

    .line 58
    cmpl-float v1, v1, v2

    .line 59
    .line 60
    if-lez v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/wview/WebAreaText;->u()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    const/high16 v2, -0x3d380000    # -100.0f

    .line 67
    .line 68
    cmpg-float v1, v1, v2

    .line 69
    .line 70
    if-gez v1, :cond_5

    .line 71
    .line 72
    iget v1, v0, Lcom/mycompany/app/wview/WebAreaText;->E:F

    .line 73
    .line 74
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 75
    .line 76
    neg-int v2, v2

    .line 77
    int-to-float v2, v2

    .line 78
    cmpg-float v1, v1, v2

    .line 79
    .line 80
    if-gez v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/mycompany/app/wview/WebAreaText;->u()V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    return p1
.end method
