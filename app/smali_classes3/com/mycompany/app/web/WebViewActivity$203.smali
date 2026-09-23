.class Lcom/mycompany/app/web/WebViewActivity$203;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$203;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$203;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Qg:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ic:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->b5()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->r6()V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->I3(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->K3()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/mycompany/app/web/WebViewActivity;->t6(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->H2()V

    .line 37
    .line 38
    .line 39
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/mycompany/app/web/WebNestFrame;->getPageIndex()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    iget-boolean v3, v5, Lcom/mycompany/app/web/WebNestView;->C:Z

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->u3()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v5, v3

    .line 61
    move v6, v5

    .line 62
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->i6()V

    .line 63
    .line 64
    .line 65
    new-instance v7, Lcom/mycompany/app/web/WebNestView;

    .line 66
    .line 67
    invoke-direct {v7, v0}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 71
    .line 72
    invoke-virtual {v0, v7}, Lcom/mycompany/app/web/WebViewActivity;->K8(Lcom/mycompany/app/web/WebNestView;)V

    .line 73
    .line 74
    .line 75
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 76
    .line 77
    invoke-virtual {v7, v3}, Lcom/mycompany/app/web/WebNestView;->setDeskMode(Z)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 81
    .line 82
    invoke-virtual {v3, v5, v6}, Lcom/mycompany/app/web/WebNestView;->T(II)V

    .line 83
    .line 84
    .line 85
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 86
    .line 87
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 88
    .line 89
    if-nez v3, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    if-nez v5, :cond_4

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {v3, v5, v1}, Lcom/mycompany/app/web/WebNestFrame;->j(Landroid/view/View;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Lcom/mycompany/app/web/WebNestFrame;->y(I)Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v3, v1, v5, v2}, Lcom/mycompany/app/web/WebNestFrame;->C(Lcom/mycompany/app/web/WebNestFrame$PageItem;Lcom/mycompany/app/web/WebNestView;Z)V

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->j8()V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 109
    .line 110
    if-nez v1, :cond_5

    .line 111
    .line 112
    return-void

    .line 113
    :cond_5
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$204;

    .line 114
    .line 115
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$204;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 119
    .line 120
    .line 121
    return-void
.end method
