.class Lcom/mycompany/app/web/WebViewActivity$440;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$440;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$440;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Tl:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Tl:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Ql:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Ql:Z

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->V9:F

    .line 31
    .line 32
    float-to-int v3, v3

    .line 33
    iput v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Rl:I

    .line 34
    .line 35
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->W9:F

    .line 36
    .line 37
    float-to-int v3, v3

    .line 38
    iput v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Sl:I

    .line 39
    .line 40
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i7:Lcom/mycompany/app/wview/WebAreaText;

    .line 41
    .line 42
    if-eqz v3, :cond_5

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Lcom/mycompany/app/wview/WebAreaText;->setLinkText(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i7:Lcom/mycompany/app/wview/WebAreaText;

    .line 48
    .line 49
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 50
    .line 51
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Rl:I

    .line 52
    .line 53
    iget v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Sl:I

    .line 54
    .line 55
    iget-boolean v7, v1, Lcom/mycompany/app/wview/WebAreaText;->w:Z

    .line 56
    .line 57
    if-eqz v7, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iput-boolean v4, v1, Lcom/mycompany/app/wview/WebAreaText;->o:Z

    .line 61
    .line 62
    iput-object v2, v1, Lcom/mycompany/app/wview/WebAreaText;->y:Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    iput-object v2, v1, Lcom/mycompany/app/wview/WebAreaText;->z:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    iput v4, v1, Lcom/mycompany/app/wview/WebAreaText;->D:I

    .line 67
    .line 68
    iget-boolean v2, v1, Lcom/mycompany/app/wview/WebAreaText;->x:Z

    .line 69
    .line 70
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 71
    .line 72
    if-eq v2, v7, :cond_4

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/mycompany/app/wview/WebAreaText;->v()V

    .line 75
    .line 76
    .line 77
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3, v5, v6}, Lcom/mycompany/app/wview/WebAreaText;->w(Landroid/view/View;II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4}, Lcom/mycompany/app/wview/WebAreaText;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :goto_0
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Ql:Z

    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    :try_start_0
    new-instance v2, Lcom/mycompany/app/wview/WebAreaText;

    .line 92
    .line 93
    invoke-direct {v2, v0}, Lcom/mycompany/app/wview/WebAreaText;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i7:Lcom/mycompany/app/wview/WebAreaText;

    .line 97
    .line 98
    invoke-virtual {v2, v1}, Lcom/mycompany/app/wview/WebAreaText;->setLinkText(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i7:Lcom/mycompany/app/wview/WebAreaText;

    .line 102
    .line 103
    const/4 v2, 0x4

    .line 104
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebAreaText;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 108
    .line 109
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i7:Lcom/mycompany/app/wview/WebAreaText;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/mycompany/app/wview/WebAreaText;->getViewWidth()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->i7:Lcom/mycompany/app/wview/WebAreaText;

    .line 116
    .line 117
    invoke-virtual {v5}, Lcom/mycompany/app/wview/WebAreaText;->getViewHeight()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-virtual {v1, v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 125
    .line 126
    if-nez v1, :cond_6

    .line 127
    .line 128
    :goto_1
    return-void

    .line 129
    :cond_6
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$441;

    .line 130
    .line 131
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$441;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catch_0
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Ql:Z

    .line 139
    .line 140
    return-void
.end method
