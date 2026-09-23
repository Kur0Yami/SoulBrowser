.class Lcom/mycompany/app/main/MainListView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$5;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$5;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->n0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->E()V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 22
    .line 23
    const/16 v2, 0xd

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    if-ne v1, v2, :cond_3

    .line 28
    .line 29
    sget-object v1, Lcom/mycompany/app/main/MainConst;->l0:[I

    .line 30
    .line 31
    array-length v1, v1

    .line 32
    move v2, v4

    .line 33
    :goto_0
    if-ge v2, v1, :cond_7

    .line 34
    .line 35
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 36
    .line 37
    sget-object v7, Lcom/mycompany/app/main/MainConst;->m0:[I

    .line 38
    .line 39
    aget v7, v7, v2

    .line 40
    .line 41
    sget-object v8, Lcom/mycompany/app/main/MainConst;->l0:[I

    .line 42
    .line 43
    aget v8, v8, v2

    .line 44
    .line 45
    sget v9, Lcom/mycompany/app/pref/PrefList;->r:I

    .line 46
    .line 47
    if-ne v8, v9, :cond_2

    .line 48
    .line 49
    move v8, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v8, v4

    .line 52
    :goto_1
    invoke-direct {v5, v2, v7, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/16 v2, 0x20

    .line 62
    .line 63
    if-ne v1, v2, :cond_5

    .line 64
    .line 65
    sget-object v1, Lcom/mycompany/app/main/MainConst;->j0:[I

    .line 66
    .line 67
    array-length v1, v1

    .line 68
    move v2, v4

    .line 69
    :goto_2
    if-ge v2, v1, :cond_7

    .line 70
    .line 71
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 72
    .line 73
    sget-object v7, Lcom/mycompany/app/main/MainConst;->k0:[I

    .line 74
    .line 75
    aget v7, v7, v2

    .line 76
    .line 77
    sget-object v8, Lcom/mycompany/app/main/MainConst;->j0:[I

    .line 78
    .line 79
    aget v8, v8, v2

    .line 80
    .line 81
    sget v9, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 82
    .line 83
    if-ne v8, v9, :cond_4

    .line 84
    .line 85
    move v8, v3

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    move v8, v4

    .line 88
    :goto_3
    invoke-direct {v5, v2, v7, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    sget-object v1, Lcom/mycompany/app/main/MainConst;->h0:[I

    .line 98
    .line 99
    array-length v1, v1

    .line 100
    move v2, v4

    .line 101
    :goto_4
    if-ge v2, v1, :cond_7

    .line 102
    .line 103
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 104
    .line 105
    sget-object v7, Lcom/mycompany/app/main/MainConst;->i0:[I

    .line 106
    .line 107
    aget v7, v7, v2

    .line 108
    .line 109
    sget-object v8, Lcom/mycompany/app/main/MainConst;->h0:[I

    .line 110
    .line 111
    aget v8, v8, v2

    .line 112
    .line 113
    sget v9, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 114
    .line 115
    if-ne v8, v9, :cond_6

    .line 116
    .line 117
    move v8, v3

    .line 118
    goto :goto_5

    .line 119
    :cond_6
    move v8, v4

    .line 120
    :goto_5
    invoke-direct {v5, v2, v7, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_7
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 130
    .line 131
    iget-object v3, v0, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 132
    .line 133
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->h:Landroid/widget/RelativeLayout;

    .line 134
    .line 135
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 136
    .line 137
    new-instance v8, Lcom/mycompany/app/main/MainListView$77;

    .line 138
    .line 139
    invoke-direct {v8, v0}, Lcom/mycompany/app/main/MainListView$77;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 140
    .line 141
    .line 142
    move-object v5, p1

    .line 143
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 144
    .line 145
    .line 146
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView;->n0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 147
    .line 148
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->V0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 149
    .line 150
    if-eqz p1, :cond_8

    .line 151
    .line 152
    iput-object v2, p1, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 153
    .line 154
    return-void

    .line 155
    :cond_8
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->W0:Lcom/mycompany/app/view/MyDialogBottom;

    .line 156
    .line 157
    if-eqz p1, :cond_9

    .line 158
    .line 159
    iput-object v2, p1, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 160
    .line 161
    return-void

    .line 162
    :cond_9
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 163
    .line 164
    if-eqz p1, :cond_a

    .line 165
    .line 166
    iput-object v2, p1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 167
    .line 168
    :cond_a
    :goto_6
    return-void
.end method
