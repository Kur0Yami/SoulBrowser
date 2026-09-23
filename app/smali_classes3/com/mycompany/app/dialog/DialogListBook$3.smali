.class Lcom/mycompany/app/dialog/DialogListBook$3;
.super Lcom/mycompany/app/main/MainListListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogListBook;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListBook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListBook$3;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListBook$3;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListBook;->A:Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogListBook$3;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/mycompany/app/dialog/DialogListBook;->A:Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-interface {p3, p1, p2, v0}, Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;->a(ILcom/mycompany/app/main/MainItem$ChildItem;I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListBook$3;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListBook$3;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->y:I

    .line 4
    .line 5
    const/16 v2, 0x17

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogListBook;->D:Lcom/mycompany/app/main/MainListView;

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1, v3}, Lcom/mycompany/app/main/MainListView;->t0(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogListBook;->E:Lcom/mycompany/app/view/MyPopupMenu;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 28
    .line 29
    .line 30
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogListBook;->E:Lcom/mycompany/app/view/MyPopupMenu;

    .line 31
    .line 32
    :cond_2
    if-nez p1, :cond_4

    .line 33
    .line 34
    :cond_3
    :goto_0
    return-void

    .line 35
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    const/16 v2, 0x19

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    const/4 v4, 0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    if-ne v1, v2, :cond_5

    .line 46
    .line 47
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 48
    .line 49
    sget v2, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 50
    .line 51
    invoke-direct {v1, v5, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 58
    .line 59
    sget v2, Lnet/kaki87/soul2/testing/R$string;->file:I

    .line 60
    .line 61
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 68
    .line 69
    sget v2, Lnet/kaki87/soul2/testing/R$string;->user_filter:I

    .line 70
    .line 71
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 78
    .line 79
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->ic_adblock:I

    .line 80
    .line 81
    const-string v3, "Adblock Plus"

    .line 82
    .line 83
    const/4 v4, 0x3

    .line 84
    invoke-direct {v1, v4, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 91
    .line 92
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->ic_adguard:I

    .line 93
    .line 94
    const-string v3, "AdGuard"

    .line 95
    .line 96
    const/4 v4, 0x4

    .line 97
    invoke-direct {v1, v4, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    const/16 v2, 0x1b

    .line 105
    .line 106
    if-ne v1, v2, :cond_6

    .line 107
    .line 108
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 109
    .line 110
    sget v2, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 111
    .line 112
    invoke-direct {v1, v5, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 119
    .line 120
    sget v2, Lnet/kaki87/soul2/testing/R$string;->file:I

    .line 121
    .line 122
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 129
    .line 130
    sget v2, Lnet/kaki87/soul2/testing/R$string;->direct_input:I

    .line 131
    .line 132
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 140
    .line 141
    sget v2, Lnet/kaki87/soul2/testing/R$string;->direct_input:I

    .line 142
    .line 143
    invoke-direct {v1, v5, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 150
    .line 151
    sget v2, Lnet/kaki87/soul2/testing/R$string;->add_site:I

    .line 152
    .line 153
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 160
    .line 161
    sget v2, Lnet/kaki87/soul2/testing/R$string;->add_page:I

    .line 162
    .line 163
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    :goto_1
    new-instance v4, Lcom/mycompany/app/view/MyPopupMenu;

    .line 170
    .line 171
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogListBook;->w:Lcom/mycompany/app/main/MainActivity;

    .line 172
    .line 173
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogListBook;->C:Lcom/mycompany/app/view/MyMainRelative;

    .line 174
    .line 175
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 176
    .line 177
    new-instance v10, Lcom/mycompany/app/dialog/DialogListBook$9;

    .line 178
    .line 179
    invoke-direct {v10, v0}, Lcom/mycompany/app/dialog/DialogListBook$9;-><init>(Lcom/mycompany/app/dialog/DialogListBook;)V

    .line 180
    .line 181
    .line 182
    move-object v7, p1

    .line 183
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 184
    .line 185
    .line 186
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogListBook;->E:Lcom/mycompany/app/view/MyPopupMenu;

    .line 187
    .line 188
    iput-object v4, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 189
    .line 190
    return-void
.end method

.method public final p(ILcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListBook$3;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListBook;->A:Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-interface {v0, v1, p2, p1}, Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;->a(ILcom/mycompany/app/main/MainItem$ChildItem;I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
