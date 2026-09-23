.class Lcom/mycompany/app/view/MySnackbar$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MySnackbar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar$12;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar$12;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->D:Lcom/mycompany/app/view/MyLineFrame;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    :try_start_0
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 14
    .line 15
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    .line 20
    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 21
    .line 22
    .line 23
    const v1, 0x800013

    .line 24
    .line 25
    .line 26
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 27
    .line 28
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 29
    .line 30
    const/high16 v4, 0x41900000    # 18.0f

    .line 31
    .line 32
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->D:Lcom/mycompany/app/view/MyLineFrame;

    .line 44
    .line 45
    iget-object v4, v0, Lcom/mycompany/app/view/MySnackbar;->u:Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    .line 52
    const/4 v3, -0x1

    .line 53
    const/4 v4, -0x2

    .line 54
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    const/16 v3, 0x10

    .line 58
    .line 59
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 60
    .line 61
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 62
    .line 63
    const/high16 v5, 0x42600000    # 56.0f

    .line 64
    .line 65
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 74
    .line 75
    .line 76
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->D:Lcom/mycompany/app/view/MyLineFrame;

    .line 77
    .line 78
    iget-object v5, v0, Lcom/mycompany/app/view/MySnackbar;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    invoke-virtual {v3, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    .line 85
    sget v3, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 86
    .line 87
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    .line 89
    .line 90
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 91
    .line 92
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->E:Landroid/widget/LinearLayout;

    .line 93
    .line 94
    iget-object v5, v0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 95
    .line 96
    invoke-virtual {v3, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .line 104
    .line 105
    const/high16 v3, 0x3f800000    # 1.0f

    .line 106
    .line 107
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 108
    .line 109
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->E:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    iget-object v4, v0, Lcom/mycompany/app/view/MySnackbar;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 117
    .line 118
    if-eqz v2, :cond_1

    .line 119
    .line 120
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 121
    .line 122
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 123
    .line 124
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    .line 126
    .line 127
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 128
    .line 129
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->E:Landroid/widget/LinearLayout;

    .line 130
    .line 131
    iget-object v4, v0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 132
    .line 133
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    .line 135
    .line 136
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 137
    .line 138
    if-eqz v2, :cond_2

    .line 139
    .line 140
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    .line 142
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 143
    .line 144
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 145
    .line 146
    .line 147
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 148
    .line 149
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->E:Landroid/widget/LinearLayout;

    .line 150
    .line 151
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 152
    .line 153
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 157
    .line 158
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$13;

    .line 159
    .line 160
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$13;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method
