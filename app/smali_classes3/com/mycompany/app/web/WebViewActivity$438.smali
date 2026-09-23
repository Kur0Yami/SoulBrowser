.class Lcom/mycompany/app/web/WebViewActivity$438;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$438;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$438;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

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
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Nl:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->h7:Lcom/mycompany/app/wview/WebMoveText;

    .line 17
    .line 18
    if-eqz v2, :cond_6

    .line 19
    .line 20
    iget v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Ol:I

    .line 21
    .line 22
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Pl:I

    .line 23
    .line 24
    iget-boolean v6, v2, Lcom/mycompany/app/wview/WebMoveText;->u:Z

    .line 25
    .line 26
    if-eqz v6, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iput-boolean v3, v2, Lcom/mycompany/app/wview/WebMoveText;->n:Z

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    iput-object v6, v2, Lcom/mycompany/app/wview/WebMoveText;->x:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    iput-object v6, v2, Lcom/mycompany/app/wview/WebMoveText;->y:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    iput v3, v2, Lcom/mycompany/app/wview/WebMoveText;->C:I

    .line 37
    .line 38
    iget-boolean v6, v2, Lcom/mycompany/app/wview/WebMoveText;->w:Z

    .line 39
    .line 40
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 41
    .line 42
    if-eq v6, v7, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/mycompany/app/wview/WebMoveText;->v()V

    .line 45
    .line 46
    .line 47
    :cond_3
    sget-boolean v6, Lcom/mycompany/app/pref/PrefZtri;->t0:Z

    .line 48
    .line 49
    if-eqz v6, :cond_4

    .line 50
    .line 51
    sget v6, Lnet/kaki87/soul2/testing/R$string;->move_free:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    sget v6, Lnet/kaki87/soul2/testing/R$string;->move_long:I

    .line 55
    .line 56
    :goto_0
    iget v7, v2, Lcom/mycompany/app/wview/WebMoveText;->v:I

    .line 57
    .line 58
    if-eq v7, v6, :cond_5

    .line 59
    .line 60
    iput v6, v2, Lcom/mycompany/app/wview/WebMoveText;->v:I

    .line 61
    .line 62
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 63
    .line 64
    .line 65
    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    .line 66
    .line 67
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1, v4, v5}, Lcom/mycompany/app/wview/WebMoveText;->w(Landroid/view/View;II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Lcom/mycompany/app/wview/WebMoveText;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :goto_1
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Nl:Z

    .line 77
    .line 78
    return-void

    .line 79
    :cond_6
    :try_start_0
    new-instance v1, Lcom/mycompany/app/wview/WebMoveText;

    .line 80
    .line 81
    invoke-direct {v1, v0}, Lcom/mycompany/app/wview/WebMoveText;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->h7:Lcom/mycompany/app/wview/WebMoveText;

    .line 85
    .line 86
    const/4 v2, 0x4

    .line 87
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebMoveText;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 91
    .line 92
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->h7:Lcom/mycompany/app/wview/WebMoveText;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/mycompany/app/wview/WebMoveText;->getViewWidth()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->h7:Lcom/mycompany/app/wview/WebMoveText;

    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/mycompany/app/wview/WebMoveText;->getViewHeight()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-virtual {v1, v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 108
    .line 109
    if-nez v1, :cond_7

    .line 110
    .line 111
    :goto_2
    return-void

    .line 112
    :cond_7
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$439;

    .line 113
    .line 114
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$439;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :catch_0
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Nl:Z

    .line 122
    .line 123
    return-void
.end method
