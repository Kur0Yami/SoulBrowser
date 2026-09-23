.class Lcom/mycompany/app/web/WebViewActivity$189;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$189;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$189;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->W3:Z

    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebVideoFrame;->setVideoDown(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P5()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_9

    .line 24
    .line 25
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->G8:Z

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    sget v2, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-ne v2, v1, :cond_3

    .line 34
    .line 35
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->R3:Lcom/mycompany/app/view/MyIconView;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebNestView;->setDownNoti(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->R3:Lcom/mycompany/app/view/MyIconView;

    .line 45
    .line 46
    invoke-virtual {v2, v1, v1}, Lcom/mycompany/app/view/MyIconView;->x(ZZ)Z

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->R3:Lcom/mycompany/app/view/MyIconView;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    :cond_3
    sget v2, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    if-ne v2, v4, :cond_4

    .line 58
    .line 59
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->S3:Lcom/mycompany/app/view/MyIconView;

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebNestView;->setDownNoti(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->S3:Lcom/mycompany/app/view/MyIconView;

    .line 69
    .line 70
    invoke-virtual {v2, v1, v1}, Lcom/mycompany/app/view/MyIconView;->x(ZZ)Z

    .line 71
    .line 72
    .line 73
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->S3:Lcom/mycompany/app/view/MyIconView;

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_4
    sget v2, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 79
    .line 80
    const/4 v5, 0x3

    .line 81
    if-ne v2, v5, :cond_8

    .line 82
    .line 83
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->T3:Lcom/mycompany/app/wview/WebDownView;

    .line 84
    .line 85
    if-eqz v2, :cond_8

    .line 86
    .line 87
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->V3:I

    .line 88
    .line 89
    if-ge v2, v4, :cond_5

    .line 90
    .line 91
    add-int/2addr v2, v1

    .line 92
    iput v2, v0, Lcom/mycompany/app/web/WebViewActivity;->V3:I

    .line 93
    .line 94
    move v3, v1

    .line 95
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 96
    .line 97
    iget-boolean v4, v2, Lcom/mycompany/app/web/WebNestView;->q0:Z

    .line 98
    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebNestView;->setDownNoti(Z)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->T3:Lcom/mycompany/app/wview/WebDownView;

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Lcom/mycompany/app/wview/WebDownView;->p(Z)V

    .line 107
    .line 108
    .line 109
    move v3, v1

    .line 110
    :cond_6
    if-eqz v3, :cond_8

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->x5()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_7

    .line 117
    .line 118
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->T3:Lcom/mycompany/app/wview/WebDownView;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/mycompany/app/wview/WebDownView;->r()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->T3:Lcom/mycompany/app/wview/WebDownView;

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/mycompany/app/wview/WebDownView;->s()V

    .line 127
    .line 128
    .line 129
    :cond_8
    :goto_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->j7(Z)V

    .line 130
    .line 131
    .line 132
    :cond_9
    :goto_1
    return-void
.end method
