.class Lcom/mycompany/app/dialog/DialogWebView$14;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$14;->c:Lcom/mycompany/app/dialog/DialogWebView;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$14;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->f0:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->Y0:I

    .line 12
    .line 13
    if-nez v2, :cond_4

    .line 14
    .line 15
    iget v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->a1:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v2, v3, :cond_2

    .line 19
    .line 20
    const/high16 v2, 0x44160000    # 600.0f

    .line 21
    .line 22
    cmpl-float v2, p3, v2

    .line 23
    .line 24
    if-lez v2, :cond_4

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->d0()Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->e0()Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v3, 0x2

    .line 37
    if-ne v2, v3, :cond_4

    .line 38
    .line 39
    const/high16 v2, -0x3bea0000    # -600.0f

    .line 40
    .line 41
    cmpg-float v2, p3, v2

    .line 42
    .line 43
    if-gez v2, :cond_4

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->e0()Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->d0()Z

    .line 52
    .line 53
    .line 54
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1
.end method
