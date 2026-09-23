.class Lcom/mycompany/app/web/WebViewActivity$95;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$95;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$95;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->ld:Lcom/mycompany/app/web/WebNestFrame;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->md:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->nd:Z

    .line 10
    .line 11
    iget-boolean v5, v1, Lcom/mycompany/app/web/WebViewActivity;->od:Z

    .line 12
    .line 13
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->pd:Z

    .line 14
    .line 15
    iget-boolean v7, v1, Lcom/mycompany/app/web/WebViewActivity;->qd:Z

    .line 16
    .line 17
    iget-boolean v8, v1, Lcom/mycompany/app/web/WebViewActivity;->rd:Z

    .line 18
    .line 19
    iget v9, v1, Lcom/mycompany/app/web/WebViewActivity;->sd:I

    .line 20
    .line 21
    iget v10, v1, Lcom/mycompany/app/web/WebViewActivity;->td:I

    .line 22
    .line 23
    iget-boolean v11, v1, Lcom/mycompany/app/web/WebViewActivity;->ud:Z

    .line 24
    .line 25
    iget-object v12, v1, Lcom/mycompany/app/web/WebViewActivity;->vd:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 26
    .line 27
    iget-boolean v13, v1, Lcom/mycompany/app/web/WebViewActivity;->wd:Z

    .line 28
    .line 29
    const/4 v14, 0x0

    .line 30
    iput-object v14, v1, Lcom/mycompany/app/web/WebViewActivity;->ld:Lcom/mycompany/app/web/WebNestFrame;

    .line 31
    .line 32
    iput-object v14, v1, Lcom/mycompany/app/web/WebViewActivity;->md:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v14, v1, Lcom/mycompany/app/web/WebViewActivity;->vd:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->V6(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebNestFrame;->getPageCreate()Lcom/mycompany/app/web/WebNestView;

    .line 42
    .line 43
    .line 44
    move-result-object v15

    .line 45
    if-nez v15, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2, v14}, Lcom/mycompany/app/web/WebNestFrame;->t(Lcom/mycompany/app/web/WebNestView;)Z

    .line 48
    .line 49
    .line 50
    move-object v2, v14

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object v15, v14

    .line 53
    :cond_1
    :goto_0
    const/16 v16, 0x1

    .line 54
    .line 55
    const/4 v14, 0x0

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    if-eqz v15, :cond_3

    .line 59
    .line 60
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 61
    .line 62
    iput-object v15, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 63
    .line 64
    if-eqz v11, :cond_2

    .line 65
    .line 66
    move v0, v14

    .line 67
    move/from16 v15, v16

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    iput-boolean v14, v1, Lcom/mycompany/app/web/WebViewActivity;->K2:Z

    .line 71
    .line 72
    move v0, v14

    .line 73
    move v15, v0

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    const-string v15, "file:///android_asset/shortcut.html"

    .line 76
    .line 77
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v15

    .line 81
    iget-object v14, v1, Lcom/mycompany/app/web/WebViewActivity;->Gb:Lcom/mycompany/app/web/WebNestView;

    .line 82
    .line 83
    if-eqz v14, :cond_5

    .line 84
    .line 85
    iget-object v15, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 86
    .line 87
    if-eqz v15, :cond_4

    .line 88
    .line 89
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object v14, v1, Lcom/mycompany/app/web/WebViewActivity;->Gb:Lcom/mycompany/app/web/WebNestView;

    .line 93
    .line 94
    iput-object v14, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 95
    .line 96
    const/4 v15, 0x0

    .line 97
    iput-object v15, v1, Lcom/mycompany/app/web/WebViewActivity;->Gb:Lcom/mycompany/app/web/WebNestView;

    .line 98
    .line 99
    const/4 v15, 0x0

    .line 100
    invoke-virtual {v14, v15}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    move/from16 v17, v15

    .line 104
    .line 105
    move/from16 v15, v16

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const/16 v17, 0x0

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->i6()V

    .line 111
    .line 112
    .line 113
    new-instance v14, Lcom/mycompany/app/web/WebNestView;

    .line 114
    .line 115
    invoke-direct {v14, v1}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    iput-object v14, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 119
    .line 120
    invoke-virtual {v1, v14}, Lcom/mycompany/app/web/WebViewActivity;->K8(Lcom/mycompany/app/web/WebNestView;)V

    .line 121
    .line 122
    .line 123
    iget-object v14, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 124
    .line 125
    iput-boolean v15, v14, Lcom/mycompany/app/web/WebNestView;->a1:Z

    .line 126
    .line 127
    move/from16 v15, v17

    .line 128
    .line 129
    :goto_1
    move v14, v15

    .line 130
    move/from16 v0, v16

    .line 131
    .line 132
    move/from16 v15, v17

    .line 133
    .line 134
    :goto_2
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->xd:Lcom/mycompany/app/web/WebNestFrame;

    .line 135
    .line 136
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->yd:Ljava/lang/String;

    .line 137
    .line 138
    iput-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->zd:Z

    .line 139
    .line 140
    iput-boolean v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Ad:Z

    .line 141
    .line 142
    iput-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->Bd:Z

    .line 143
    .line 144
    iput-boolean v7, v1, Lcom/mycompany/app/web/WebViewActivity;->Cd:Z

    .line 145
    .line 146
    iput-boolean v8, v1, Lcom/mycompany/app/web/WebViewActivity;->Dd:Z

    .line 147
    .line 148
    iput v9, v1, Lcom/mycompany/app/web/WebViewActivity;->Ed:I

    .line 149
    .line 150
    iput v10, v1, Lcom/mycompany/app/web/WebViewActivity;->Fd:I

    .line 151
    .line 152
    iput-boolean v11, v1, Lcom/mycompany/app/web/WebViewActivity;->Gd:Z

    .line 153
    .line 154
    iput-boolean v15, v1, Lcom/mycompany/app/web/WebViewActivity;->Hd:Z

    .line 155
    .line 156
    iput-object v12, v1, Lcom/mycompany/app/web/WebViewActivity;->Id:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 157
    .line 158
    iput-boolean v13, v1, Lcom/mycompany/app/web/WebViewActivity;->Jd:Z

    .line 159
    .line 160
    iput-boolean v14, v1, Lcom/mycompany/app/web/WebViewActivity;->Kd:Z

    .line 161
    .line 162
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Ld:Z

    .line 163
    .line 164
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 165
    .line 166
    if-nez v0, :cond_6

    .line 167
    .line 168
    return-void

    .line 169
    :cond_6
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$96;

    .line 170
    .line 171
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$96;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 175
    .line 176
    .line 177
    return-void
.end method
