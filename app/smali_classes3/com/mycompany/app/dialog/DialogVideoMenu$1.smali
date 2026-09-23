.class Lcom/mycompany/app/dialog/DialogVideoMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogVideoMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu$1;->c:Lcom/mycompany/app/dialog/DialogVideoMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu$1;->c:Lcom/mycompany/app/dialog/DialogVideoMenu;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->e:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->i:Lcom/mycompany/app/view/MyRoundLinear;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_1
    new-instance v3, Lcom/mycompany/app/view/MyRoundLinear;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    .line 38
    .line 39
    sget v6, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 40
    .line 41
    int-to-float v6, v6

    .line 42
    const/4 v7, 0x1

    .line 43
    invoke-virtual {v4, v6, v7}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 44
    .line 45
    .line 46
    sget v6, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 47
    .line 48
    int-to-float v6, v6

    .line 49
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 50
    .line 51
    .line 52
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    .line 54
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 55
    .line 56
    const/4 v9, -0x1

    .line 57
    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 61
    .line 62
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    .line 75
    .line 76
    sget v8, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 77
    .line 78
    int-to-float v8, v8

    .line 79
    invoke-virtual {v6, v8, v7}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 80
    .line 81
    .line 82
    sget v8, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 83
    .line 84
    int-to-float v8, v8

    .line 85
    invoke-virtual {v6, v8}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 86
    .line 87
    .line 88
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    .line 90
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 91
    .line 92
    invoke-direct {v8, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .line 94
    .line 95
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 96
    .line 97
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    if-nez v1, :cond_2

    .line 104
    .line 105
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 106
    .line 107
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 111
    .line 112
    .line 113
    sget v2, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 114
    .line 115
    int-to-float v2, v2

    .line 116
    invoke-virtual {v8, v2, v7}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 117
    .line 118
    .line 119
    sget v2, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 120
    .line 121
    int-to-float v2, v2

    .line 122
    invoke-virtual {v8, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 123
    .line 124
    .line 125
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    .line 127
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 128
    .line 129
    invoke-direct {v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .line 131
    .line 132
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 133
    .line 134
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_2
    const/4 v8, 0x0

    .line 142
    :goto_0
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->i:Lcom/mycompany/app/view/MyRoundLinear;

    .line 143
    .line 144
    if-eqz v1, :cond_3

    .line 145
    .line 146
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 147
    .line 148
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 152
    .line 153
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 154
    .line 155
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 156
    .line 157
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 158
    .line 159
    if-nez v0, :cond_4

    .line 160
    .line 161
    return-void

    .line 162
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoMenu$1$1;

    .line 163
    .line 164
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogVideoMenu$1$1;-><init>(Lcom/mycompany/app/dialog/DialogVideoMenu$1;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 168
    .line 169
    .line 170
    return-void
.end method
