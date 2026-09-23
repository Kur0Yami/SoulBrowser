.class Lcom/mycompany/app/web/WebViewActivity$442;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$442;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$442;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ul:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->V9:F

    .line 17
    .line 18
    float-to-int v2, v2

    .line 19
    iput v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Vl:I

    .line 20
    .line 21
    iget v4, v0, Lcom/mycompany/app/web/WebViewActivity;->W9:F

    .line 22
    .line 23
    float-to-int v4, v4

    .line 24
    iput v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Wl:I

    .line 25
    .line 26
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->j7:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 27
    .line 28
    if-eqz v5, :cond_4

    .line 29
    .line 30
    iget-boolean v6, v5, Lcom/mycompany/app/wview/WebAreaMenu;->u:Z

    .line 31
    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iput-boolean v3, v5, Lcom/mycompany/app/wview/WebAreaMenu;->m:Z

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    iput-object v6, v5, Lcom/mycompany/app/wview/WebAreaMenu;->w:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    iput-object v6, v5, Lcom/mycompany/app/wview/WebAreaMenu;->x:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    iput v3, v5, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 43
    .line 44
    iget-boolean v6, v5, Lcom/mycompany/app/wview/WebAreaMenu;->v:Z

    .line 45
    .line 46
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 47
    .line 48
    if-eq v6, v7, :cond_3

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/mycompany/app/wview/WebAreaMenu;->f()V

    .line 51
    .line 52
    .line 53
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v1, v2, v4}, Lcom/mycompany/app/wview/WebAreaMenu;->g(Landroid/view/View;II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v3}, Lcom/mycompany/app/wview/WebAreaMenu;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ul:Z

    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    :try_start_0
    new-instance v1, Lcom/mycompany/app/wview/WebAreaMenu;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Lcom/mycompany/app/wview/WebAreaMenu;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j7:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 73
    .line 74
    const/4 v2, 0x4

    .line 75
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebAreaMenu;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j7:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 79
    .line 80
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$443;

    .line 81
    .line 82
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$443;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebAreaMenu;->setFltListener(Lcom/mycompany/app/wview/WebAreaMenu$WebAreaMenuListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 89
    .line 90
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->j7:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/mycompany/app/wview/WebAreaMenu;->getViewWidth()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->j7:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 97
    .line 98
    invoke-virtual {v5}, Lcom/mycompany/app/wview/WebAreaMenu;->getViewHeight()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-virtual {v1, v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 106
    .line 107
    if-nez v1, :cond_5

    .line 108
    .line 109
    :goto_1
    return-void

    .line 110
    :cond_5
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$444;

    .line 111
    .line 112
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$444;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catch_0
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ul:Z

    .line 120
    .line 121
    return-void
.end method
