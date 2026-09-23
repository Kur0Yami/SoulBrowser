.class Lcom/mycompany/app/dialog/DialogNewsMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu$2;->c:Lcom/mycompany/app/dialog/DialogNewsMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu$2;->c:Lcom/mycompany/app/dialog/DialogNewsMenu;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->f:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 6
    .line 7
    if-eqz v2, :cond_4

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    move v4, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v4, 0x0

    .line 21
    :goto_0
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyRoundLinear;->setDarkMode(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyRoundLinear;->b()V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 36
    .line 37
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 38
    .line 39
    const/high16 v5, 0x40000000    # 2.0f

    .line 40
    .line 41
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {v2, v4}, Landroid/view/View;->setElevation(F)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 49
    .line 50
    new-instance v4, Lcom/mycompany/app/dialog/DialogNewsMenu$3;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 61
    .line 62
    const/4 v4, -0x1

    .line 63
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyRoundLinear;->setColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->i:Lcom/mycompany/app/view/MyLineFrame;

    .line 67
    .line 68
    const v4, -0x252526

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_language_black_20:I

    .line 77
    .line 78
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 82
    .line 83
    const/high16 v4, 0x21000000

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 90
    .line 91
    const v4, -0xdededf

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyRoundLinear;->setColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->i:Lcom/mycompany/app/view/MyLineFrame;

    .line 98
    .line 99
    const v4, -0xc0c0c1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 106
    .line 107
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_language_dark_20:I

    .line 108
    .line 109
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 113
    .line 114
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 115
    .line 116
    .line 117
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 118
    .line 119
    const v4, 0x3f59999a    # 0.85f

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 123
    .line 124
    .line 125
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 126
    .line 127
    new-instance v4, Lcom/mycompany/app/dialog/DialogNewsMenu$4;

    .line 128
    .line 129
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogNewsMenu$4;-><init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    new-instance v2, Lcom/mycompany/app/main/NewsMenuAdapter;

    .line 136
    .line 137
    new-instance v4, Lcom/mycompany/app/dialog/DialogNewsMenu$5;

    .line 138
    .line 139
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogNewsMenu$5;-><init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 143
    .line 144
    .line 145
    iput v1, v2, Lcom/mycompany/app/main/NewsMenuAdapter;->d:I

    .line 146
    .line 147
    iput-object v4, v2, Lcom/mycompany/app/main/NewsMenuAdapter;->e:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;

    .line 148
    .line 149
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->l:Lcom/mycompany/app/main/NewsMenuAdapter;

    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 152
    .line 153
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 157
    .line 158
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->l:Lcom/mycompany/app/main/NewsMenuAdapter;

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 164
    .line 165
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsMenu$6;

    .line 166
    .line 167
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsMenu$6;-><init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 174
    .line 175
    if-nez v1, :cond_3

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsMenu$7;

    .line 179
    .line 180
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsMenu$7;-><init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 184
    .line 185
    .line 186
    :cond_4
    :goto_2
    return-void
.end method
