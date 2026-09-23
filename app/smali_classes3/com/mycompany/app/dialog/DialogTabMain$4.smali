.class Lcom/mycompany/app/dialog/DialogTabMain$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$4;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$4;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-boolean v1, v1, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    if-eqz v1, :cond_4

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 37
    .line 38
    .line 39
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMain;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 40
    .line 41
    :cond_4
    if-nez p1, :cond_5

    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 50
    .line 51
    sget v3, Lnet/kaki87/soul2/testing/R$string;->type:I

    .line 52
    .line 53
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 60
    .line 61
    sget v3, Lnet/kaki87/soul2/testing/R$string;->outline_color:I

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    invoke-direct {v1, v4, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 71
    .line 72
    sget v3, Lnet/kaki87/soul2/testing/R$string;->mini_mode:I

    .line 73
    .line 74
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZone;->D:Z

    .line 75
    .line 76
    const/4 v5, 0x2

    .line 77
    invoke-direct {v1, v5, v3, v2, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 84
    .line 85
    sget v3, Lnet/kaki87/soul2/testing/R$string;->at_bottom:I

    .line 86
    .line 87
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtwo;->z:Z

    .line 88
    .line 89
    const/4 v5, 0x3

    .line 90
    invoke-direct {v1, v5, v3, v2, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 97
    .line 98
    sget v3, Lnet/kaki87/soul2/testing/R$string;->swipe_delete:I

    .line 99
    .line 100
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZone;->E:Z

    .line 101
    .line 102
    const/4 v5, 0x4

    .line 103
    invoke-direct {v1, v5, v3, v2, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 110
    .line 111
    const/4 v2, 0x5

    .line 112
    sget v3, Lnet/kaki87/soul2/testing/R$string;->undelete:I

    .line 113
    .line 114
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 121
    .line 122
    const/4 v2, 0x6

    .line 123
    sget v3, Lnet/kaki87/soul2/testing/R$string;->search_url:I

    .line 124
    .line 125
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    new-instance v4, Lcom/mycompany/app/view/MyPopupMenu;

    .line 132
    .line 133
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 134
    .line 135
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 136
    .line 137
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 138
    .line 139
    new-instance v10, Lcom/mycompany/app/dialog/DialogTabMain$21;

    .line 140
    .line 141
    invoke-direct {v10, v0}, Lcom/mycompany/app/dialog/DialogTabMain$21;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 142
    .line 143
    .line 144
    move-object v7, p1

    .line 145
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 146
    .line 147
    .line 148
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMain;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 149
    .line 150
    iput-object v4, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 151
    .line 152
    return-void
.end method
