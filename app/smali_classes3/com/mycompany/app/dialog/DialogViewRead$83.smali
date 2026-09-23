.class Lcom/mycompany/app/dialog/DialogViewRead$83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebNestView$WebViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$83;->a:Lcom/mycompany/app/dialog/DialogViewRead;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$83;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->A:Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    move v3, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v3, 0x8

    .line 13
    .line 14
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->i2:I

    .line 18
    .line 19
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U1:Landroid/view/View;

    .line 20
    .line 21
    if-nez v3, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_3
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U1:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_4

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_4
    iget v4, v0, Lcom/mycompany/app/dialog/DialogViewRead;->j2:I

    .line 41
    .line 42
    sub-int v1, p1, v1

    .line 43
    .line 44
    add-int/2addr v1, v4

    .line 45
    iput v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->j2:I

    .line 46
    .line 47
    if-le v1, v3, :cond_5

    .line 48
    .line 49
    iput v3, v0, Lcom/mycompany/app/dialog/DialogViewRead;->j2:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_5
    if-gez v1, :cond_6

    .line 53
    .line 54
    iput v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->j2:I

    .line 55
    .line 56
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U1:Landroid/view/View;

    .line 57
    .line 58
    iget v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->j2:I

    .line 59
    .line 60
    int-to-float v2, v2

    .line 61
    int-to-float v3, v3

    .line 62
    div-float/2addr v2, v3

    .line 63
    const/high16 v3, 0x3f800000    # 1.0f

    .line 64
    .line 65
    sub-float/2addr v3, v2

    .line 66
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U1:Landroid/view/View;

    .line 70
    .line 71
    iget v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->j2:I

    .line 72
    .line 73
    int-to-float v2, v2

    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 75
    .line 76
    .line 77
    :goto_2
    iput p1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->i2:I

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->G()V

    .line 80
    .line 81
    .line 82
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->E2:Ljava/lang/Runnable;

    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->B:Lcom/mycompany/app/view/MyScrollBar;

    .line 85
    .line 86
    if-nez v1, :cond_7

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_7
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->D2:Z

    .line 90
    .line 91
    if-eqz v2, :cond_8

    .line 92
    .line 93
    :goto_3
    return-void

    .line 94
    :cond_8
    const/4 v2, 0x1

    .line 95
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->D2:Z

    .line 96
    .line 97
    invoke-virtual {v1, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->B:Lcom/mycompany/app/view/MyScrollBar;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
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
