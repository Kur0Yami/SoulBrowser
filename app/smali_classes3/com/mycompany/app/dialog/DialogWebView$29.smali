.class Lcom/mycompany/app/dialog/DialogWebView$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebNestView$WebViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$29;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge p1, v1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogWebView$29;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 9
    .line 10
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyDialogBottom;->y(Z)V

    .line 11
    .line 12
    .line 13
    invoke-static {v3}, Lcom/mycompany/app/dialog/DialogWebView;->D(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 14
    .line 15
    .line 16
    iget v2, v3, Lcom/mycompany/app/dialog/DialogWebView;->G1:I

    .line 17
    .line 18
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogWebView;->x1:Landroid/view/View;

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogWebView;->x1:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_3

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    iget v5, v3, Lcom/mycompany/app/dialog/DialogWebView;->H1:I

    .line 40
    .line 41
    sub-int v2, p1, v2

    .line 42
    .line 43
    add-int/2addr v2, v5

    .line 44
    iput v2, v3, Lcom/mycompany/app/dialog/DialogWebView;->H1:I

    .line 45
    .line 46
    if-le v2, v4, :cond_4

    .line 47
    .line 48
    iput v4, v3, Lcom/mycompany/app/dialog/DialogWebView;->H1:I

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    if-gez v2, :cond_5

    .line 52
    .line 53
    iput v0, v3, Lcom/mycompany/app/dialog/DialogWebView;->H1:I

    .line 54
    .line 55
    :cond_5
    :goto_1
    iget-object v0, v3, Lcom/mycompany/app/dialog/DialogWebView;->x1:Landroid/view/View;

    .line 56
    .line 57
    iget v2, v3, Lcom/mycompany/app/dialog/DialogWebView;->H1:I

    .line 58
    .line 59
    int-to-float v2, v2

    .line 60
    int-to-float v4, v4

    .line 61
    div-float/2addr v2, v4

    .line 62
    const/high16 v4, 0x3f800000    # 1.0f

    .line 63
    .line 64
    sub-float/2addr v4, v2

    .line 65
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v3, Lcom/mycompany/app/dialog/DialogWebView;->x1:Landroid/view/View;

    .line 69
    .line 70
    iget v2, v3, Lcom/mycompany/app/dialog/DialogWebView;->H1:I

    .line 71
    .line 72
    int-to-float v2, v2

    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 74
    .line 75
    .line 76
    :goto_2
    iput p1, v3, Lcom/mycompany/app/dialog/DialogWebView;->G1:I

    .line 77
    .line 78
    iget-object p1, v3, Lcom/mycompany/app/dialog/DialogWebView;->c2:Ljava/lang/Runnable;

    .line 79
    .line 80
    iget-object v0, v3, Lcom/mycompany/app/dialog/DialogWebView;->L0:Lcom/mycompany/app/view/MyScrollBar;

    .line 81
    .line 82
    if-nez v0, :cond_6

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_6
    iget-boolean v2, v3, Lcom/mycompany/app/dialog/DialogWebView;->b2:Z

    .line 86
    .line 87
    if-eqz v2, :cond_7

    .line 88
    .line 89
    :goto_3
    return-void

    .line 90
    :cond_7
    iput-boolean v1, v3, Lcom/mycompany/app/dialog/DialogWebView;->b2:Z

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    iget-object v0, v3, Lcom/mycompany/app/dialog/DialogWebView;->L0:Lcom/mycompany/app/view/MyScrollBar;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(FFI)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
