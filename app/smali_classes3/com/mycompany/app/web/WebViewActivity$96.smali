.class Lcom/mycompany/app/web/WebViewActivity$96;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$96;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$96;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->xd:Lcom/mycompany/app/web/WebNestFrame;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->yd:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->zd:Z

    .line 10
    .line 11
    iget-boolean v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Ad:Z

    .line 12
    .line 13
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->Bd:Z

    .line 14
    .line 15
    iget-boolean v7, v1, Lcom/mycompany/app/web/WebViewActivity;->Cd:Z

    .line 16
    .line 17
    iget-boolean v8, v1, Lcom/mycompany/app/web/WebViewActivity;->Dd:Z

    .line 18
    .line 19
    iget v9, v1, Lcom/mycompany/app/web/WebViewActivity;->Ed:I

    .line 20
    .line 21
    iget v10, v1, Lcom/mycompany/app/web/WebViewActivity;->Fd:I

    .line 22
    .line 23
    iget-boolean v11, v1, Lcom/mycompany/app/web/WebViewActivity;->Gd:Z

    .line 24
    .line 25
    iget-boolean v12, v1, Lcom/mycompany/app/web/WebViewActivity;->Hd:Z

    .line 26
    .line 27
    iget-object v13, v1, Lcom/mycompany/app/web/WebViewActivity;->Id:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 28
    .line 29
    iget-boolean v14, v1, Lcom/mycompany/app/web/WebViewActivity;->Jd:Z

    .line 30
    .line 31
    iget-boolean v15, v1, Lcom/mycompany/app/web/WebViewActivity;->Kd:Z

    .line 32
    .line 33
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Ld:Z

    .line 34
    .line 35
    move/from16 v16, v0

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->xd:Lcom/mycompany/app/web/WebNestFrame;

    .line 39
    .line 40
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->yd:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Id:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 43
    .line 44
    if-eqz v16, :cond_1

    .line 45
    .line 46
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const-string v0, "file:///android_asset/shortcut.html"

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    move/from16 v16, v15

    .line 57
    .line 58
    iget-object v15, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 59
    .line 60
    invoke-virtual {v15, v8}, Lcom/mycompany/app/web/WebNestView;->setDeskMode(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 64
    .line 65
    invoke-virtual {v8, v9, v10}, Lcom/mycompany/app/web/WebNestView;->T(II)V

    .line 66
    .line 67
    .line 68
    new-instance v8, Lcom/mycompany/app/web/WebNestFrame;

    .line 69
    .line 70
    invoke-direct {v8, v1}, Lcom/mycompany/app/web/WebNestFrame;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    iput-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 74
    .line 75
    invoke-virtual {v8, v0}, Lcom/mycompany/app/web/WebNestFrame;->E(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 79
    .line 80
    iget-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 81
    .line 82
    if-nez v0, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v9, 0x0

    .line 86
    invoke-virtual {v0, v8, v9, v9}, Lcom/mycompany/app/web/WebNestFrame;->k(Lcom/mycompany/app/web/WebNestView;II)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    move/from16 v16, v15

    .line 91
    .line 92
    :goto_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->w6()V

    .line 93
    .line 94
    .line 95
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-virtual {v0, v11}, Lcom/mycompany/app/web/WebNestFrame;->setAddNeed(Z)V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->j8()V

    .line 103
    .line 104
    .line 105
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Md:Lcom/mycompany/app/web/WebNestFrame;

    .line 106
    .line 107
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->Nd:Ljava/lang/String;

    .line 108
    .line 109
    iput-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->Od:Z

    .line 110
    .line 111
    iput-boolean v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Pd:Z

    .line 112
    .line 113
    iput-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->Qd:Z

    .line 114
    .line 115
    iput-boolean v7, v1, Lcom/mycompany/app/web/WebViewActivity;->Rd:Z

    .line 116
    .line 117
    iput-boolean v12, v1, Lcom/mycompany/app/web/WebViewActivity;->Sd:Z

    .line 118
    .line 119
    iput-object v13, v1, Lcom/mycompany/app/web/WebViewActivity;->Td:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 120
    .line 121
    iput-boolean v14, v1, Lcom/mycompany/app/web/WebViewActivity;->Ud:Z

    .line 122
    .line 123
    move/from16 v0, v16

    .line 124
    .line 125
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Vd:Z

    .line 126
    .line 127
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 128
    .line 129
    if-nez v0, :cond_3

    .line 130
    .line 131
    return-void

    .line 132
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$97;

    .line 133
    .line 134
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$97;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 138
    .line 139
    .line 140
    return-void
.end method
