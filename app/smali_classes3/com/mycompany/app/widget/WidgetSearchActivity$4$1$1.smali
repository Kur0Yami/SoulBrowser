.class Lcom/mycompany/app/widget/WidgetSearchActivity$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/widget/WidgetSearchActivity$4$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity$4$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$4$1$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$4$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$4$1$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$4$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$4$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$4;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$4;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 14
    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    iget-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MyClipView;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyClipView;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 28
    .line 29
    const/16 v3, 0x8

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 35
    .line 36
    iget-object v3, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/mycompany/app/widget/WidgetSearchActivity;->B0()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    xor-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    new-instance v5, Lcom/mycompany/app/widget/WidgetSearchActivity$14;

    .line 45
    .line 46
    invoke-direct {v5, v1}, Lcom/mycompany/app/widget/WidgetSearchActivity$14;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 47
    .line 48
    .line 49
    iput-object v3, v2, Lcom/mycompany/app/view/MyClipView;->c:Landroid/content/Context;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    iput-boolean v3, v2, Lcom/mycompany/app/view/MyClipView;->f:Z

    .line 53
    .line 54
    iput-boolean v3, v2, Lcom/mycompany/app/view/MyClipView;->g:Z

    .line 55
    .line 56
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iput-boolean v3, v2, Lcom/mycompany/app/view/MyClipView;->h:Z

    .line 61
    .line 62
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 63
    .line 64
    iput-boolean v3, v2, Lcom/mycompany/app/view/MyClipView;->i:Z

    .line 65
    .line 66
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 67
    .line 68
    iput-boolean v3, v2, Lcom/mycompany/app/view/MyClipView;->j:Z

    .line 69
    .line 70
    iput-boolean v4, v2, Lcom/mycompany/app/view/MyClipView;->k:Z

    .line 71
    .line 72
    iput-object v5, v2, Lcom/mycompany/app/view/MyClipView;->l:Lcom/mycompany/app/view/MyClipView$MyClipListener;

    .line 73
    .line 74
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    .line 76
    const/4 v3, -0x1

    .line 77
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 78
    .line 79
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/mycompany/app/widget/WidgetSearchActivity;->D0(Landroid/widget/FrameLayout$LayoutParams;)Z

    .line 83
    .line 84
    .line 85
    iget-object v3, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 86
    .line 87
    iget-object v4, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 88
    .line 89
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    new-instance v3, Lcom/mycompany/app/widget/WidgetSearchActivity$15;

    .line 95
    .line 96
    invoke-direct {v3, v1}, Lcom/mycompany/app/widget/WidgetSearchActivity$15;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$4;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 103
    .line 104
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 105
    .line 106
    if-nez v2, :cond_3

    .line 107
    .line 108
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 109
    .line 110
    if-nez v2, :cond_3

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/widget/WidgetSearchActivity;->y0()V

    .line 114
    .line 115
    .line 116
    iget-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 117
    .line 118
    if-nez v2, :cond_4

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    new-instance v2, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;

    .line 122
    .line 123
    invoke-direct {v2, v1}, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 124
    .line 125
    .line 126
    iput-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->w1:Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;

    .line 127
    .line 128
    iget-object v1, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 129
    .line 130
    invoke-virtual {v2, v1}, Lcom/mycompany/app/async/MyAsyncTask;->c(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$4;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 134
    .line 135
    iget-boolean v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->C1:Z

    .line 136
    .line 137
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 138
    .line 139
    if-eq v2, v3, :cond_5

    .line 140
    .line 141
    iput-boolean v3, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->C1:Z

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/mycompany/app/widget/WidgetSearchActivity;->J0()V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$4;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/mycompany/app/widget/WidgetSearchActivity;->G0()V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$4;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 152
    .line 153
    iget-object v1, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->v1:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 154
    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 158
    .line 159
    .line 160
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$4;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 161
    .line 162
    iget-boolean v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->i1:Z

    .line 163
    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->z0()V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 171
    .line 172
    if-nez v1, :cond_7

    .line 173
    .line 174
    :goto_2
    return-void

    .line 175
    :cond_7
    new-instance v2, Lcom/mycompany/app/widget/WidgetSearchActivity$19;

    .line 176
    .line 177
    invoke-direct {v2, v0}, Lcom/mycompany/app/widget/WidgetSearchActivity$19;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 181
    .line 182
    .line 183
    return-void
.end method
