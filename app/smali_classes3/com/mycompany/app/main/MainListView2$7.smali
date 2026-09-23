.class Lcom/mycompany/app/main/MainListView2$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$7;->c:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$7;->c:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView2;->f:Z

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/main/MainListView2;->e:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x25

    .line 9
    .line 10
    if-eq v2, v4, :cond_0

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-boolean v5, Lcom/mycompany/app/pref/PrefAlbum;->q:Z

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    sput-boolean v3, Lcom/mycompany/app/pref/PrefAlbum;->q:Z

    .line 19
    .line 20
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 21
    .line 22
    const-string v6, "mNotiBook"

    .line 23
    .line 24
    invoke-static {v3, v5, v6, v3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView2;->c0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->j()V

    .line 41
    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    const/16 v5, 0x11

    .line 53
    .line 54
    if-ne v2, v5, :cond_3

    .line 55
    .line 56
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 57
    .line 58
    sget v6, Lnet/kaki87/soul2/testing/R$string;->sort:I

    .line 59
    .line 60
    invoke-direct {v5, v3, v6}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_3
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 67
    .line 68
    sget v6, Lnet/kaki87/soul2/testing/R$string;->show_detail:I

    .line 69
    .line 70
    invoke-static {v2}, Lcom/mycompany/app/pref/PrefUtil;->a(I)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    const/4 v8, 0x1

    .line 75
    invoke-direct {v5, v8, v6, v3, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 82
    .line 83
    sget v6, Lnet/kaki87/soul2/testing/R$string;->show_single:I

    .line 84
    .line 85
    invoke-static {v2}, Lcom/mycompany/app/pref/PrefUtil;->c(I)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    const/4 v8, 0x2

    .line 90
    invoke-direct {v5, v8, v6, v3, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    if-eq v2, v4, :cond_4

    .line 97
    .line 98
    if-nez v1, :cond_4

    .line 99
    .line 100
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 101
    .line 102
    const/4 v2, 0x3

    .line 103
    sget v3, Lnet/kaki87/soul2/testing/R$string;->import_html:I

    .line 104
    .line 105
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 112
    .line 113
    const/4 v2, 0x4

    .line 114
    sget v3, Lnet/kaki87/soul2/testing/R$string;->export_html:I

    .line 115
    .line 116
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 123
    .line 124
    if-eqz v1, :cond_4

    .line 125
    .line 126
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 127
    .line 128
    const/4 v2, 0x5

    .line 129
    sget v3, Lnet/kaki87/soul2/testing/R$string;->import_normal:I

    .line 130
    .line 131
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_4
    new-instance v6, Lcom/mycompany/app/view/MyPopupMenu;

    .line 138
    .line 139
    iget-object v7, v0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 140
    .line 141
    iget-object v8, v0, Lcom/mycompany/app/main/MainListView2;->g:Landroid/widget/RelativeLayout;

    .line 142
    .line 143
    sget-boolean v11, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 144
    .line 145
    new-instance v12, Lcom/mycompany/app/main/MainListView2$45;

    .line 146
    .line 147
    invoke-direct {v12, v0}, Lcom/mycompany/app/main/MainListView2$45;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 148
    .line 149
    .line 150
    move-object v9, p1

    .line 151
    invoke-direct/range {v6 .. v12}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 152
    .line 153
    .line 154
    iput-object v6, v0, Lcom/mycompany/app/main/MainListView2;->c0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 155
    .line 156
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView2;->y0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 157
    .line 158
    if-eqz p1, :cond_5

    .line 159
    .line 160
    iput-object v6, p1, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 161
    .line 162
    return-void

    .line 163
    :cond_5
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 164
    .line 165
    if-eqz p1, :cond_6

    .line 166
    .line 167
    iput-object v6, p1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 168
    .line 169
    :cond_6
    :goto_0
    return-void
.end method
