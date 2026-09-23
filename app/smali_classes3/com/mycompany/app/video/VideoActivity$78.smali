.class Lcom/mycompany/app/video/VideoActivity$78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$78;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$78;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->C3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->C3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_1
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 19
    .line 20
    iget-object v3, v1, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_2
    iget-object v3, v1, Lcom/mycompany/app/video/VideoSubLayout;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 27
    .line 28
    if-nez v3, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    new-instance v4, Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-direct {v4, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    invoke-direct {v5, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    .line 40
    .line 41
    const/16 v6, 0x11

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 44
    .line 45
    .line 46
    const/4 v7, -0x1

    .line 47
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    const/high16 v8, 0x40a00000    # 5.0f

    .line 51
    .line 52
    invoke-static {v3, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    float-to-int v9, v9

    .line 57
    int-to-float v9, v9

    .line 58
    const/high16 v10, 0x3f800000    # 1.0f

    .line 59
    .line 60
    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 61
    .line 62
    .line 63
    const/16 v9, 0x8

    .line 64
    .line 65
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    .line 70
    const/4 v12, -0x2

    .line 71
    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    .line 73
    .line 74
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 75
    .line 76
    invoke-virtual {v4, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    new-instance v11, Lcom/mycompany/app/view/MyTextSub;

    .line 80
    .line 81
    invoke-direct {v11, v3}, Lcom/mycompany/app/view/MyTextSub;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v3, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    float-to-int v13, v13

    .line 95
    int-to-float v13, v13

    .line 96
    invoke-virtual {v11, v13, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    .line 104
    invoke-direct {v9, v7, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 105
    .line 106
    .line 107
    iput v6, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 108
    .line 109
    invoke-virtual {v4, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    invoke-direct {v9, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    .line 122
    .line 123
    invoke-static {v3, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    float-to-int v2, v2

    .line 128
    int-to-float v2, v2

    .line 129
    invoke-virtual {v9, v2, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 130
    .line 131
    .line 132
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    .line 134
    invoke-direct {v2, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 135
    .line 136
    .line 137
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 138
    .line 139
    invoke-virtual {v4, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v4, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 143
    .line 144
    .line 145
    iput-object v5, v1, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    iput-object v11, v1, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 148
    .line 149
    iput-object v9, v1, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    const/4 v1, 0x2

    .line 152
    invoke-virtual {v11, v1}, Lcom/mycompany/app/view/MyTextSub;->setOutlineType(I)V

    .line 153
    .line 154
    .line 155
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 156
    .line 157
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 158
    .line 159
    iput-object v0, v1, Lcom/mycompany/app/video/VideoSubLayout;->f:Lcom/mycompany/app/main/MainActivity;

    .line 160
    .line 161
    iput-object v2, v1, Lcom/mycompany/app/video/VideoSubLayout;->g:Landroid/view/View;

    .line 162
    .line 163
    sget v2, Lcom/mycompany/app/pref/PrefSub;->n:I

    .line 164
    .line 165
    int-to-float v2, v2

    .line 166
    sget v3, Lcom/mycompany/app/pref/PrefSub;->o:I

    .line 167
    .line 168
    sget v4, Lcom/mycompany/app/pref/PrefSub;->q:I

    .line 169
    .line 170
    invoke-virtual {v1, v2, v3, v4}, Lcom/mycompany/app/video/VideoSubLayout;->h(FII)V

    .line 171
    .line 172
    .line 173
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 174
    .line 175
    invoke-direct {v1, v0}, Lcom/mycompany/app/video/VideoActivity$EventHandler;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 176
    .line 177
    .line 178
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 179
    .line 180
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 181
    .line 182
    if-nez v0, :cond_4

    .line 183
    .line 184
    return-void

    .line 185
    :cond_4
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$78$1;

    .line 186
    .line 187
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$78$1;-><init>(Lcom/mycompany/app/video/VideoActivity$78;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    .line 192
    .line 193
    return-void
.end method
