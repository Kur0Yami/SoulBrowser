.class Lcom/mycompany/app/web/WebTabBarSubView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebTabBarSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabBarSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$10;->c:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView$10;->c:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->p:I

    .line 10
    .line 11
    iget v0, v0, Lcom/mycompany/app/web/WebTabBarSubView;->T:I

    .line 12
    .line 13
    check-cast v1, Lcom/mycompany/app/web/WebViewActivity$177;

    .line 14
    .line 15
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity$177;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 16
    .line 17
    iget-object v4, v3, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_1
    iget-object v5, v4, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-nez v5, :cond_2

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_2
    if-gez v2, :cond_3

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-lt v2, v5, :cond_4

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_4
    invoke-virtual {v4, v2}, Lcom/mycompany/app/web/WebTabBarAdapter;->B(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-eqz v5, :cond_a

    .line 46
    .line 47
    iget-object v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v6, :cond_a

    .line 50
    .line 51
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_5

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_5
    iget-object v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 66
    .line 67
    if-nez v6, :cond_6

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_6
    iget v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 71
    .line 72
    invoke-virtual {v4, v7}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    if-nez v7, :cond_7

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_7
    iget-object v8, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    const-wide/16 v8, 0x0

    .line 85
    .line 86
    iput-wide v8, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    iput-object v0, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    iput v10, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 93
    .line 94
    const/4 v7, 0x1

    .line 95
    iput-boolean v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 96
    .line 97
    iget-object v11, v4, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 98
    .line 99
    add-int/lit8 v12, v2, 0x1

    .line 100
    .line 101
    invoke-virtual {v11, v12, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_8

    .line 111
    .line 112
    iget-object v0, v4, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_8
    iget-object v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-ne v6, v7, :cond_9

    .line 125
    .line 126
    iget-object v6, v4, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    check-cast v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 138
    .line 139
    if-eqz v6, :cond_9

    .line 140
    .line 141
    iget v11, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 142
    .line 143
    invoke-virtual {v4, v11}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    if-eqz v11, :cond_9

    .line 148
    .line 149
    iget-object v5, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {v5, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    iput-wide v8, v11, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 155
    .line 156
    iput-object v0, v11, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 157
    .line 158
    iput v10, v11, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 159
    .line 160
    iput-boolean v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 161
    .line 162
    iget-object v0, v4, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v0, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_9
    :goto_0
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v7}, Lcom/mycompany/app/web/WebTabBarAdapter;->M(Z)V

    .line 174
    .line 175
    .line 176
    :cond_a
    :goto_1
    iget-object v0, v3, Lcom/mycompany/app/web/WebViewActivity;->d3:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 177
    .line 178
    if-nez v0, :cond_b

    .line 179
    .line 180
    :goto_2
    return-void

    .line 181
    :cond_b
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$177$2;

    .line 182
    .line 183
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$177$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$177;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 187
    .line 188
    .line 189
    return-void
.end method
