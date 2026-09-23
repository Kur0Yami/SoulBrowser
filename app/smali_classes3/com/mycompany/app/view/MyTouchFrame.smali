.class public Lcom/mycompany/app/view/MyTouchFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public c:Z


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyTouchFrame;->c:Z

    .line 6
    .line 7
    return p1
.end method
