.class Lcom/mycompany/app/web/WebViewActivity$115$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$115;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$115;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$115$1;->c:Lcom/mycompany/app/web/WebViewActivity$115;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$115$1;->c:Lcom/mycompany/app/web/WebViewActivity$115;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$115;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->tf:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->uf:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->tf:Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->uf:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v3, :cond_4

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 28
    .line 29
    iget-object v2, v1, Lcom/mycompany/app/web/WebNestFrame;->H:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestFrame;->l()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    check-cast v2, Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestFrame;->B()V

    .line 60
    .line 61
    .line 62
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 63
    .line 64
    mul-int/lit8 v2, v2, 0x2

    .line 65
    .line 66
    iput v4, v1, Lcom/mycompany/app/web/WebNestFrame;->s0:I

    .line 67
    .line 68
    iput-boolean v4, v1, Lcom/mycompany/app/web/WebNestFrame;->t0:Z

    .line 69
    .line 70
    filled-new-array {v4, v2}, [I

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iput-object v2, v1, Lcom/mycompany/app/web/WebNestFrame;->H:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    const-wide/16 v5, 0x258

    .line 81
    .line 82
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    .line 85
    iget-object v2, v1, Lcom/mycompany/app/web/WebNestFrame;->H:Landroid/animation/ValueAnimator;

    .line 86
    .line 87
    new-instance v3, Lcom/mycompany/app/web/WebNestFrame$27;

    .line 88
    .line 89
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebNestFrame$27;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, v1, Lcom/mycompany/app/web/WebNestFrame;->H:Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    new-instance v3, Lcom/mycompany/app/web/WebNestFrame$28;

    .line 98
    .line 99
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebNestFrame$28;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v1, Lcom/mycompany/app/web/WebNestFrame;->H:Landroid/animation/ValueAnimator;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 108
    .line 109
    .line 110
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->n7()V

    .line 111
    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v4, v1}, Lcom/mycompany/app/web/WebViewActivity;->b7(IZ)V

    .line 115
    .line 116
    .line 117
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->i9:Z

    .line 118
    .line 119
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->uc:Z

    .line 120
    .line 121
    return-void

    .line 122
    :cond_4
    :goto_1
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->uc:Z

    .line 123
    .line 124
    return-void
.end method
