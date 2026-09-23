.class public Lcom/mycompany/app/view/MyKeypadDialog;
.super Lcom/mycompany/app/view/MyDialogRelative;
.source "SourceFile"


# instance fields
.field public r:I

.field public s:Lcom/mycompany/app/editor/EditorActivity;

.field public t:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

.field public u:Z


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogRelative;->c()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyKeypadDialog;->s:Lcom/mycompany/app/editor/EditorActivity;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyKeypadDialog;->t:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

    .line 8
    .line 9
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mycompany/app/view/MyDialogRelative;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/view/MyKeypadDialog;->s:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    iget-object p3, p0, Lcom/mycompany/app/view/MyKeypadDialog;->t:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->s4(Landroid/content/Context;)Landroid/graphics/Point;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    const/4 p4, 0x0

    .line 29
    if-nez p3, :cond_2

    .line 30
    .line 31
    move p3, p4

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 34
    .line 35
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 44
    .line 45
    sub-int/2addr p3, p1

    .line 46
    sub-int/2addr p3, p2

    .line 47
    iget p1, p0, Lcom/mycompany/app/view/MyKeypadDialog;->r:I

    .line 48
    .line 49
    if-le p3, p1, :cond_4

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyKeypadDialog;->u:Z

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyKeypadDialog;->u:Z

    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/view/MyKeypadDialog;->t:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyKeypadDialog;->t:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyKeypadDialog;->u:Z

    .line 71
    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    iput-boolean p4, p0, Lcom/mycompany/app/view/MyKeypadDialog;->u:Z

    .line 75
    .line 76
    iget-object p1, p0, Lcom/mycompany/app/view/MyKeypadDialog;->t:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

    .line 77
    .line 78
    invoke-interface {p1, p4}, Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;->b(Z)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/view/MyKeypadDialog;->t:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    :cond_6
    :goto_1
    return-void
.end method
